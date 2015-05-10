using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.MediaServices.Client;
using System.IO;
using System.Text;
using System.Threading;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;

namespace vss
{
    public partial class uploadvid : System.Web.UI.Page
    {
        CloudMediaContext c = null;

        VSSEntities db = new VSSEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        private void UploadImage()
        {
            try
            {
                string AccountName = ConfigurationManager.AppSettings["MediaAccountName"];
                string AccountKey = ConfigurationManager.AppSettings["MediaAccountKey"];

                StorageCredentials creds = new StorageCredentials(AccountName, AccountKey);

                CloudStorageAccount account = new CloudStorageAccount(creds, useHttps: true);

                CloudBlobClient client = account.CreateCloudBlobClient();

                CloudBlobContainer sampleContainer = client.GetContainerReference("samples");

                sampleContainer.CreateIfNotExists();

                CloudBlockBlob blob = sampleContainer.GetBlockBlobReference("APictureFile.jpg");

                using (Stream file = System.IO.File.OpenRead("MiniAzure.jpg"))
                {
                    blob.UploadFromStream(file);
                }
            }
            catch
            {
                throw;
            }
        }

        private void UploadVideo(string uploadFilePath)
        {
            string AccountName = ConfigurationManager.AppSettings["MediaAccountName"];
            string AccountKey = ConfigurationManager.AppSettings["MediaAccountKey"];

            var context = new CloudMediaContext(AccountName, AccountKey);
            var uploadAsset = context.Assets.Create(Path.GetFileNameWithoutExtension(uploadFilePath), AssetCreationOptions.None);
            var assetFile = uploadAsset.AssetFiles.Create(Path.GetFileName(uploadFilePath));
            assetFile.Upload(uploadFilePath);

            var encodeAssetId = uploadAsset.Id; // "YOUR ASSET ID";
            // Preset reference documentation: http://msdn.microsoft.com/en-us/library/windowsazure/jj129582.aspx
            var encodingPreset = "H264 Broadband 720p";
            var assetToEncode = context.Assets.Where(a => a.Id == encodeAssetId).FirstOrDefault();
            if (assetToEncode == null)
            {
                throw new ArgumentException("Could not find assetId: " + encodeAssetId);
            }

            IJob job = context.Jobs.Create("Encoding " + assetToEncode.Name + " to " + encodingPreset);

            IMediaProcessor latestWameMediaProcessor = (from p in context.MediaProcessors where p.Name == "Windows Azure Media Encoder" select p).ToList().OrderBy(wame => new Version(wame.Version)).LastOrDefault();
            ITask encodeTask = job.Tasks.AddNew("Encoding", latestWameMediaProcessor, encodingPreset, TaskOptions.None);
            encodeTask.InputAssets.Add(assetToEncode);
            encodeTask.OutputAssets.AddNew(assetToEncode.Name + " as " + encodingPreset, AssetCreationOptions.None);

            job.StateChanged += new EventHandler<JobStateChangedEventArgs>((sender, jsc) => Console.WriteLine(string.Format("{0}\n  State: {1}\n  Time: {2}\n\n", ((IJob)sender).Name, jsc.CurrentState, DateTime.UtcNow.ToString(@"yyyy_M_d_hhmmss"))));
            job.Submit();
            job.GetExecutionProgressTask(CancellationToken.None).Wait();

            var preparedAsset = job.OutputMediaAssets.FirstOrDefault();

            this.lblFeedback.Text = "Video: " + uploadAsset.Id + " is uploaded and encoded.";
        }



        protected void btnUploadVideo_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.FileUpload1.HasFile)
                {
                    this.UploadVideo(this.FileUpload1.PostedFile.FileName);

                    MediaContent mc = new MediaContent();

                    mc.Content_Title = this.txtTitle.Text;
                    mc.Membership_Level = Convert.ToInt32(this.cmbMembershipLevel.SelectedValue);
                    mc.Uploaded_Date = DateTime.Now;
                    mc.Content_Description = this.txtDescription.Text;

                    db.MediaContent.Add(mc);
                    db.SaveChanges();

                    //this.UploadImage();
                }
            }
            catch (Exception E)
            {
                this.lblFeedback.ForeColor = System.Drawing.Color.Orange;
                this.lblFeedback.Text = E.ToString();
            }
        }
    }
}