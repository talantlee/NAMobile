using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.Model
{
    public class GlobalVars
    {

		public static string GetMaterialName(string material)
        {
			var materialParams = material;
            switch (material)
            {
				case "WTK":
					materialParams = "Sussex(White Teak)";
					break;
				case "Phoenix":
					materialParams = "Normandy";
					break;
				case "UT":
					materialParams = "Ultra";
					break;
				case "HardWood":
					materialParams = "Brightwood";
					break;
				case "WMDF":
					materialParams = "Woodlore Plus (Waterproof)";
					break;
				case "MDFP":
					materialParams = "Woodlore Plus";
					break;
				case "MDF CleanLook":
					materialParams = "Woodlore";
					break;
				case "Woodbury":
					materialParams = "Waterproof Woodbury";
					break;
				case "HandSample":
					materialParams = "MS4 Motorised Shutter Hand Sample";
					break;
			}
			return materialParams;
		}

	}
}