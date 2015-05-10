using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vss
{
    public partial class videolib : System.Web.UI.Page
    {
        VSSEntities db = new VSSEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.LoadVideos();
            }
        }

        protected void LoadVideos()
        {
            try
            {
                var Videos = this.db.vw_MediaContent.OrderBy(o => o.Uploaded_Date).ToList();

                this.lvVideos.DataSource = Videos;
                this.lvVideos.DataBind();
            }
            catch (Exception E)
            {
                this.CustomValidator1.IsValid = false;
                this.CustomValidator1.ErrorMessage = E.Message;
            }
        }
    }
}