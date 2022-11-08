using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class OrderSteps : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if(CurrentStep<1)
                CurrentStep = 1;
            }
        }

        public string Titles { get; set; }

        public int CurrentStep { get; set; }
    }
}