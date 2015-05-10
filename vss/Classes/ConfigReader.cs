using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace vss.Classes
{
    public static class ConfigReader
    {
        /// <summary>
        /// Our website return url set in Web.cofnig App Settings
        /// </summary>
        public static string ReturnURL
        {
            get { return WebConfigurationManager.AppSettings["ReturnURL"]; }
        }

        /// <summary>
        /// Instant Payment Notification URL
        /// </summary>
        public static string IpnURL
        {
            get { return WebConfigurationManager.AppSettings["IpnURL"]; }
        }

        /// <summary>
        /// Amazon Payment url in Web.config - We can switch from Sandbox to Real anytime
        /// </summary>
        public static string AmazonPaymentUrl
        {
            get { return WebConfigurationManager.AppSettings["AmazonPaymentUrl"]; }
        }

        /// <summary>
        /// Amazon AccessKeyID 
        /// Get it on: https://aws-portal.amazon.com/gp/aws/developer/account/index.html?ie=UTF8&action=access-key
        /// </summary>

        public static string AccessKeyID
        {
            get { return WebConfigurationManager.AppSettings["AccessKeyID"]; }
        }

        /// <summary>
        /// Amazon SecretKey
        /// Get it on: https://aws-portal.amazon.com/gp/aws/developer/account/index.html?ie=UTF8&action=access-key
        /// </summary>

        public static string SecretKey
        {
            get { return WebConfigurationManager.AppSettings["SecretKey"]; }
        }

        /// <summary>
        /// Account ID
        /// </summary>
        public static string AccountID
        {
            get { return WebConfigurationManager.AppSettings["AccountID"]; }
        }
    }
}