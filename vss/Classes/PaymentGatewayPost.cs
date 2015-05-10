﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vss.Classes
{
    public class PaymentGatewayPost
    {
        public System.Collections.Specialized.NameValueCollection ListParams = new System.Collections.Specialized.NameValueCollection();
        public string Url = "";
        public string Method = "post";
        public string FormName = "form1";

        public void Add(string name, string value)
        {
            ListParams.Add(name, value);
        }

        public void Post()
        {
            System.Web.HttpContext.Current.Response.Clear();
            System.Web.HttpContext.Current.Response.Write("<html><head>");
            System.Web.HttpContext.Current.Response.Write(string.Format("</head><body onload=\"document.{0}.submit()\">",
                FormName));
            System.Web.HttpContext.Current.Response.Write(string.Format("<form name=\"{0}\" method=\"{1}\" action=\"{2}\" >",
                FormName, Method, Url));
            int i = 0;

            while (i < ListParams.Keys.Count)
            {
                System.Web.HttpContext.Current.Response.Write(string.Format("<input name=\"{0}\" type=\"hidden\" value=\"{1}\">",
                    ListParams.Keys[i], ListParams[ListParams.Keys[i]]));
                i += 1;
            }

            System.Web.HttpContext.Current.Response.Write("</form>");
            System.Web.HttpContext.Current.Response.Write("</body></html>");
            System.Web.HttpContext.Current.Response.End();
        }
    }
}