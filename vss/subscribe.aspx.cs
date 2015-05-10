using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vss.Classes;

namespace vss
{
    public partial class subscribe : System.Web.UI.Page
    {
        VSSEntities db = new VSSEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool ValidateSubInfo()
        {
            if (this.txtSubPassword.Value.Trim() == "")
            {
                this.CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = "Password cannot be blank.";

                return false;
            }
            else if (this.txtSubPassword.Value != this.txtSubPasswordVerification.Value)
            {
                this.CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = "Passwords do not match.";

                return false;
            }

            return true;
        }

        /*
        public static string GetParametersSignature(PaymentGatewayPost post, Uri gatewayUrl)
        {
            return AmazonPaymentsHelper.signParameters
            (
            post.ListParams,
            ConfigReader.SecretKey,
            post.Method,
            gatewayUrl.Host,
            gatewayUrl.AbsolutePath,
            ""
            );
        }*/

        public void DoPayment(Order order)
        {
            /*
            Uri gatewayUrl = new Uri(ConfigReader.AmazonPaymentUrl);

            PaymentGatewayPost post = new PaymentGatewayPost();
            post.FormName = "SimplePay";
            post.Url = gatewayUrl.ToString();
            post.Method = "POST";
            post.Add("immediateReturn", "1");
            post.Add(AmazonPaymentsHelper.SIGNATURE_VERSION_KEYNAME, AmazonPaymentsHelper.SIGNATURE_VERSION_2);
            post.Add(AmazonPaymentsHelper.SIGNATURE_METHOD_KEYNAME, AmazonPaymentsHelper.HMAC_SHA256_ALGORITHM);
            post.Add("accessKey", ConfigReader.AccessKeyID);
            post.Add("amount", String.Format(CultureInfo.InvariantCulture, "USD {0:0.00}", order.Amount));
            post.Add("description", string.Format("{0} - {1}", "ORDERED SOME ITEM", order.OrderID));

            //Your Amazon Payments account ID. This parameter is not used 
            //and should not be present if you sign the button using your secret key. 
            //For more information, see Using Access Identifiers on Amazon User Guide Website).
            
            post.Add("amazonPaymentsAccountId", ConfigReader.AccountID);

            post.Add("returnUrl", ConfigReader.ReturnURL); //where to return after finishing with transaction

            //Amazon can send additional posts to this url in our website
            //to notify us about particular transaction state
            //we should handle it and update our records in database accordingly
            post.Add("ipnUrl", ConfigReader.IpnURL);

            post.Add("processImmediate", "1"); //0 will reserve the payment, 1 will process it immediatelly
            post.Add("referenceId", order.OrderID);
            post.Add("abandonUrl", ConfigReader.ReturnURL); //same as return url
            string signature = GetParametersSignature(post, gatewayUrl);
            post.Add(AmazonPaymentsHelper.SIGNATURE_KEYNAME, signature);

            //make the post
            post.Post();
            */
        }

        protected void lbSubscribe_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.ValidateSubInfo())
                {
                    Users User = new Users();

                    User.Email = this.txtEmail.Value;
                    User.Birthday = Convert.ToDateTime(this.txtBirthday.Value);
                    User.UserPassword = this.txtSubPassword.Value;
                    User.Username = this.txtSubUsername.Value;
                    User.Full_Name = this.txtFullName.Value;

                    this.db.Users.Add(User);
                    this.db.SaveChanges();

                    Response.Redirect("videolib.aspx");
                }
            }
            catch (Exception E)
            {
                CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = E.Message;
            }
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            try
            {
                var Login = this.db.Users.SingleOrDefault(p => p.Username == this.txtUser.Value && p.UserPassword == this.txtPassword.Value);

                if (Login == null)
                {
                    CustomValidator1.IsValid = false;
                    CustomValidator1.ErrorMessage = "User account not found.";
                }
                else
                {
                    Response.Redirect("videolib.aspx");
                }
            }
            catch (Exception E)
            {
                CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = E.Message;
            }
        }
    }
}