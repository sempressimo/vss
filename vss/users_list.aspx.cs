using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vss
{
    public partial class users_list : System.Web.UI.Page
    {
        VSSEntities db = new VSSEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.LoadRecords();
            }
            catch (Exception E)
            {
                this.lblFeedback.Text = E.Message;
            }
        }

        protected void LoadRecords()
        {
            this.gvRecords.DataSource = this.db.Users.ToList();
            this.gvRecords.DataBind();
        }

        protected void gvRecords_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string Username = e.Keys[0].ToString();

                var User = this.db.Users.Single(p => p.Username == Username);

                this.db.Users.Remove(User);
                this.db.SaveChanges();

                this.LoadRecords();
            }
            catch (Exception E)
            {
                this.lblFeedback.Text = E.Message;
            }
        }
    }
}