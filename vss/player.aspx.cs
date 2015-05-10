using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vss
{
    public partial class player : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetManifest()
        {
            string Manifest = "http://sempressimomedia.streaming.mediaservices.windows.net/5a5a67af-c129-4c14-b1ca-1242a20103ac/29df9e67-9bf6-433c-95c2-033b39a1aa94.ism/Manifest";

            //string Manifest = "http://sempressimomedia.streaming.mediaservices.windows.net/41ec696a-aae2-46d8-9cab-4b24701ab25b/Wildlife.ism/Manifest";

            return Manifest;
        }
    }
}