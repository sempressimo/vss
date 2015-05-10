using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vss
{
    public partial class memberships_list : System.Web.UI.Page
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
            this.gvRecords.DataSource = this.db.Memberships.ToList();
            this.gvRecords.DataBind();
        }
    }
}