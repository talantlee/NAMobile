using NAMobile.DAL;
using NAMobile.Framework;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
           
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string passwd = MD5Str.MD5(this.floatingPassword.Text);
            Model.UserInfo user = new UserInfoDAL().GetModel(this.floatingInput.Text);
            if(user != null)
            {
                if (user.Passwd.Equals(passwd, StringComparison.OrdinalIgnoreCase))
                {
                    //login success.
                    new UserInfoDAL().AddLogin(user.UserID, this.Session.SessionID.ToLower(), BasePage.UserHostIp);
                    Session["_currentLoginUser"] = user;
                    Response.Redirect("PendingOrders.aspx");
                }
                else
                {
                    if (Session["testuserid"] == null)
                    {
                        Session["testuserid"] = this.floatingInput.Text;
                        Session["CountNo"] = 1;
                    }else
                    {
                        if (floatingInput.Text.Equals(Session["testuserid"].ToString(), StringComparison.OrdinalIgnoreCase))
                        {
                            Session["CountNo"] =Convert.ToInt32(Session["CountNo"])+ 1;
                            
                        }
                        else
                        {
                            Session["testuserid"] = this.floatingInput.Text;
                            Session["CountNo"] = 1;
                        }
                    }
                    this.lblmess.Text = "Please Re-Enter,You have " + (3- Convert.ToInt32(Session["CountNo"])) + " More Attempt.";
                    if (Convert.ToInt32(Session["CountNo"]) >=3)
                    {
                    
                        this.lblmess.Text = "Your account has been locked, please contact the administrator.";
                    }
                }
            }else
            {
                new UserInfoDAL().UserTryLogin(this.floatingInput.Text, this.floatingPassword.Text, BasePage.UserHostIp);
            }
        }
    }
}
