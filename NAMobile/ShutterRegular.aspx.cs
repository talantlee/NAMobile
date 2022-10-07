using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class ShutterRegular : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string shapetype = Request.QueryString["shapetype"]??"";
            tbx_shapetype.Text= shapetype;
        }
    }
}