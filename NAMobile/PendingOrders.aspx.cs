using NAMobile.Model;
using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class PendingOrders : Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["_currentLoginUser"] != null)
                {
                    this.LoginUser = Session["_currentLoginUser"] as UserInfo;
                   
                    this.CheckVaild();
                }else
                {
                    LogOut();
                }
            }
        }
        public bool hasQueryConditions
        {
            get
            {

                return (Session["Rights"].ToString() == "*" || (Session["SecurityLevel"].ToString() == "99" && Session["Rights"].ToString() == "" && Session["isCash"].ToString() == "0"));
            }

        }

    }
}