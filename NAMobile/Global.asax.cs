﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace NAMobile
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Newtonsoft.Mail.SmtpConfig.SmtpHost = "ms.nienmade.com.tw";
            Newtonsoft.Mail.SmtpConfig.SmtpPort = 25;

            //  OpenSmtp.Mail.SmtpConfig.VerifyAddresses = true;
            Newtonsoft.Mail.SmtpConfig.LogToText = true;

            Newtonsoft.Mail.SmtpConfig.LogPath = System.IO.Path.Combine(System.IO.Path.Combine(Server.MapPath("~"), "Email"), "SmtpLog.txt");
            Newtonsoft.Mail.SmtpConfig.TempPath = System.IO.Path.Combine(Server.MapPath("~"), "Email");

            NAMobile.Model.Config.isNoTesterServer = false;
            if (System.Web.Configuration.WebConfigurationManager.AppSettings["servertype"] != null)
            {
                NAMobile.Model.Config.isNoTesterServer = !System.Web.Configuration.WebConfigurationManager.AppSettings["servertype"].ToString().ToUpper().StartsWith("TEST");
                if (NAMobile.Model.Config.isNoTesterServer)
                {
                    NMSoft.Config.UsingServerType = NMSoft.Config.ServerType.Offical;
                }
                else if (System.Web.Configuration.WebConfigurationManager.AppSettings["servertype"].ToString().ToUpper().IndexOf("LOCAL") > -1)
                {
                    NMSoft.Config.UsingServerType = NMSoft.Config.ServerType.LocalServer;
                }
                else
                {
                    NMSoft.Config.UsingServerType = NMSoft.Config.ServerType.TestServer;
                }
            }



            NAMobile.Model.Config.isMaintance = false;
            if (System.Web.Configuration.WebConfigurationManager.AppSettings["maintance"] != null)
            {

                NAMobile.Model.Config.isMaintance = System.Web.Configuration.WebConfigurationManager.AppSettings["maintance"].ToString().ToUpper().StartsWith("YES");

            }
            if (System.Web.Configuration.WebConfigurationManager.AppSettings["ForceHttps"] != null)
            {
                if (System.Web.Configuration.WebConfigurationManager.AppSettings["ForceHttps"] == "1")
                    NAMobile.Model.Config.isForceHttps = true;
            }

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.ServerVariables.Get("HTTPS") == "off" && NAMobile.Model.Config.isForceHttps)
            {

                string serveraddress = "";
                serveraddress = Request.ServerVariables.Get("HTTP_HOST");
                if (serveraddress.ToLower().IndexOf("normanjapan") > -1 || serveraddress.ToLower().IndexOf("nienmade") > -1)
                {

                    string url = "";
                    url = url + "https://" + serveraddress + Request.ServerVariables.Get("SCRIPT_NAME");
                    if (Request.ServerVariables.Get("QUERY_STRING").Trim().Length > 0)
                    {
                        url = url + "?" + Request.ServerVariables.Get("QUERY_STRING");
                    }
                    Response.Redirect(url);
                }
            }




            if (NMSafe.XssFilter.CheckGet())
            {
                Response.Write("Please make sure these characters are not included in your URL: \",',<,\\,because these characters may cause XSS attacks.");
                Response.End();
            }
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}