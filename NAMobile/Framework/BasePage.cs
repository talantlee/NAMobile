using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI.WebControls;

namespace NAMobile.Framework
{
    public class BasePage : System.Web.UI.Page
    {

        protected Model.UserInfo LoginUser
        {
            get
            {
                if (Session["_currLoginUser"] == null)
                {
                    LogOut();
                }
                return Session["_currLoginUser"] as Model.UserInfo;
            }
            set
            {
                Session["_currLoginUser"] = value;
            }
        }
        protected string AppVersion
        {
            get
            {
                return string.Empty;

                //if (HttpContext.Current.Session["_currAPPVERSION"] == null)
                //{
                //    LogOut();
                //}

                //if (HttpContext.Current.Session["_currAPPVERSION"].ToString().Length > 1)
                //{
                //    return HttpContext.Current.Session["_currAPPVERSION"].ToString() + "/";
                //}

            }
            set
            {
                //  HttpContext.Current.Session["_currAPPVERSION"] = value;
            }
        }

        protected void LogOut()
        {
            Response.Redirect("~/LoginOut.aspx");
        }

     

        protected void LoadCustomFitSeting(DropDownList drp, DataTable dts, bool insertEmpty)
        {
            BindDropDown<DropDownList>(drp, dts, "OptionEName", "OptionID", insertEmpty);



        }

        protected void LoadCustomFitSeting<T>(T drp, DataTable dts)
        {
            BindDropDown<T>(drp, dts, "OptionEName", "OptionID", false);

        }

        protected void BindDropDown<T>(T drpsource, DataTable dts, string textColumn, string valueColumn, bool insertEmpty)
        {
            if (drpsource is DropDownList)
            {
                DropDownList drp = drpsource as DropDownList;
                drp.DataSource = dts;
                drp.DataTextField = textColumn;
                drp.DataValueField = valueColumn;

                drp.DataBind();
                if (insertEmpty)
                    drp.Items.Insert(0, new ListItem("", ""));
            }
            else if (drpsource is RadioButtonList)
            {
                RadioButtonList rdb = drpsource as RadioButtonList;
                rdb.DataSource = dts;
                rdb.DataTextField = textColumn;
                rdb.DataValueField = valueColumn;
                rdb.DataBind();
            }
        }

        protected void RegisterScript(string scripts)
        {
            Literal ltl = new Literal();
            ltl.Text = string.Format("<script type=\"text/javascript\" language=\"javascript\"  >{0}</script>", scripts);
            this.Header.Controls.Add(ltl);
        }
   

        public void RegisterJsFile(string url)
        {
            RegisterJsFile(url, ScriptVersion);
        }
        public void RegisterJsFile(string url, string scriptver)
        {
            Literal ltl = new Literal();
            ltl.Text = string.Format("<script type=\"text/javascript\" language=\"javascript\" src=\"{0}{1}\" ></script>", url, "?ver=" + scriptver);
            this.Header.Controls.Add(ltl);
        }
        public string ScriptVersion
        {
            get
            {
                return CustomerWeb.Entity.Config.ScriptVersion;
            }

        }

        protected void ShowCustomerMess(string ss)
        {
            if (AppVersion.Length == 0)
                RegisterScript(string.Format("parent.showMessage(\"{0}\")", ss.Replace("\n", " ")));
            else
                RegisterScript(string.Format("parent.DeskTopApp.showMessage(\"{0}\")", ss.Replace("\n", " ").Replace("\r", "")));

        }

        protected override void OnError(EventArgs e)
        {
            base.OnError(e);
            Exception currentError = Server.GetLastError();

            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(UserHostIp);
            if (Session["_currLoginUser"] != null)
            {
                sb.Append("(");
                sb.Append(LoginUser.UserId);
                sb.Append(")");
            }



            sb.Append(">>[");
            sb.Append(Request.Url.ToString());
            sb.Append("]");
            sb.Append("Error:");
            sb.AppendLine();
            sb.Append(currentError.Message);

            //    sb.Append("{");
            //     sb.Append(currentError.ToString());
            //    sb.Append("}");
            sb.Append(")");
            sb.Append("<br>");
            sb.Append(currentError.ToString());
            Response.Write(sb.ToString());
            EmailUtl.Send("dagger.li@nienmade.com.cn", "", "Norman AU Page Error", sb.ToString(), null);





        }
        public  string UserHostIp
        {
            get
            {
                string ipaddress = System.Web.HttpContext.Current.Request.Headers.Get("X-Real-IP") ?? "";
                if (ipaddress.Length == 0)
                {
                    ipaddress = System.Web.HttpContext.Current.Request.Headers.Get("X-Forwarded-For") ?? "";
                }
                if (ipaddress.Length == 0)
                {
                    ipaddress = System.Web.HttpContext.Current.Request.UserHostAddress;
                }
                return ipaddress;
            }
        }

    }
}