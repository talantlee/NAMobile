using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class ShutterRegular : Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
            string shapetype = Request.QueryString["shapetype"]??"";
            tbx_shapetype.Text= shapetype;
            
        }
    }
}