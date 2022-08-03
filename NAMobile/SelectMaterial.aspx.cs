using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class SelectMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected bool GetMatRights(string mat, string allmats, string rights)
        {
			string[] strArr = "Amhurst,WTK,Normandy,Woodbury,Woodlore,Wrc Premium,Wrc CleanLook,Basswood Premium,HandSample,MDF CleanLook,Phoenix,HardWood,Larchwood,MDFP,UT".Split(',');
									
			string[] newmat = "MDF CleanLook,MDFP,HardWood,Phoenix,UT,HandSample".Split(',');

			string pGrantList = Session["GrantList"].ToString();

			string pBeadedStr = pGrantList.Substring(0, 13) + pGrantList.Substring(18, 1) + pGrantList.Substring(20, 1);


			return true;
        }
												

	}
}