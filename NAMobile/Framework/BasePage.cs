using NAMobile.DAL;
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
          
            set
            {
                if (value != null)
                {
                    //todo: 為了 方便 將asp 代碼遷移過來加上的。
                    Session["UserID"] = value.UserID;
                    Session["LoginID"] = value.LoginId;
                    Session["UserNam"] = value.UserNam;
                    if (value.UserNam.Length > 2)
                    {
                        Session["UserShortNam"] = value.UserNam.Substring(0,1).ToUpper() + value.UserNam.Substring(value.UserNam.Length-1).ToUpper();
                    }else
                    {
                        Session["UserShortNam"] = value.UserNam.ToUpper();
                    }
                    Session["L_SysID"] = value.SysID;
                    Session["IP"] = UserHostIp;
                    Session["LoginHost"] = Request.ServerVariables["HTTP_HOST"];
                    Session["ShowPrice"] = value.ShowPrice.Trim();

                    Session["PriceList"] = value.PriceList.Trim();
                    Session["SecurityLevel"] = value.SecurityLevel;
                    Session["GrantList"] = value.GrantList;
                    Session["mGrantList"] = "";
                    Session["RGAA"] = value.RgaEmail; //to do

                    Session["CanAnswer"] = value.answer;
                    //  session("isproxyClient") = "Y"
                    Session["QsSpec"] = value.QsSpec;
                    Session["allowWaive"] = value.allowWaive;
                    Session["isNQA"] = value.isNQA;

                    Session["isCash"] = value.isCash;

                    Session["ClientType"] = value.ClientType;

                    Session["ClientTypeDes"] = value.ClientTypeDes;

                    Session["Email"] = value.Email;

                    Session["ClientShipVia"] = value.ShipVia;

                    Session["CustDelivery"] = value.CustDelivery;

                    Session["isTemplate"] = value.isTemplate;

                    Session["DealerID"] = "";

                    Session["DealerName"] = "";

                    Session["isApprovedUser"] = value.isApproved;
                    Session["RGAEmail"] = value.RgaEmail;
                    Session["AccounTisActived"] = value.ActivedStatus;
                    Session["Rights"] = "";
                    if (value.Rights=="*" || value.Rights.ToLower() == "m")
                    {
                        Session["Rights"] = value.Rights;
                        Session["SysUserID"] = value.UserID;
                        Session["SysLoginID"] = value.LoginId;
                    }
                    else if ( value.Rights.ToLower() == "p")
                    {
                        Session["Rights"] = value.Rights;
                        Session["SysUserID"] = "";
                    }
                    else
                    {
                        Session["Rights"] = value.Rights;
                        Session["SysUserID"] = "";
                    }
                    Session["LoginOK"] = true;
                    Session["logoingTime"] = DateTime.Now;

                }
                else
                {
                    Session["UserID"] = string.Empty; ;
                    Session["SysUserID"] = "";
                    Session["LoginID"] = "";
                }
            }
        }
        protected void CheckVaild()
        {
            if (Session["UserID"] == null)
            {

                //if (Request.IsAuthenticated)
                //{
                //    Session["_currLoginUser"] = new UserInfoDAL().GetModel(Page.User.Identity.Name);
                //}
                LogOut();
                return;
            }
            if (string.IsNullOrEmpty(Session["UserID"].ToString()))
            {
                LogOut();
                return;
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
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
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
                return Model.Config.ScriptVersion;
            }

        }

        protected void ShowCustomerMess(string ss)
        {
            if (AppVersion.Length == 0)
                RegisterScript(string.Format("parent.showMessage(\"{0}\")", ss.Replace("\n", " ")));
            else
                RegisterScript(string.Format("parent.DeskTopApp.showMessage(\"{0}\")", ss.Replace("\n", " ").Replace("\r", "")));

        }
        public string UserID
        {
            get
            {
                if (Session["UserID"] != null)
                    return Session["UserID"].ToString();
                return string.Empty;
            }
        }

        public static string GetProductName(string pd)
        {
            switch (pd.ToLower())
            {
                case "cellularshade":
                    return "Honeycomb Shades";
                case "roman":
                    return "Roman Shades";
                case "roller":
                    return "Soluna Roller Shade";
                case "displaytower":
                    return "Display Tower";
            }
            return pd;
        }

        



        protected override void OnError(EventArgs e)
        {
            base.OnError(e);
            Exception currentError = Server.GetLastError();

            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(UserHostIp);
           
                sb.Append("(");
                sb.Append(UserID);
                sb.Append(")");
            



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
        public  static string UserHostIp
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