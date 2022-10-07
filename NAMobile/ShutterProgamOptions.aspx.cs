using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class ShutterProgamOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncontinue_Click(object sender, EventArgs e)
        {
            Server.Transfer("ShutterRegular.aspx?shapetype="+this.drp_shapetype.SelectedValue);
        }
    }
}