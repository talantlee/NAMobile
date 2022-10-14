using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class ShutterProgamOptions : Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
        }

        protected void btncontinue_Click(object sender, EventArgs e)
        {

            Server.Transfer("ShutterRegular.aspx?shapetype=" + this.drp_shapetype.SelectedValue + "&room=" + this.tbx_room.Text + "&roomsel=" + this.drp_roomsel.SelectedValue); ;
        }
    }
}