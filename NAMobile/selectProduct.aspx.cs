﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class selectProduct : Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
            if (this.txtProductType.Text.Length > 1)
            {
                Session["orderporducttype"]=txtProductType.Text;
                Response.Redirect("TorderAEdit.aspx");
            }
        }
    }
}