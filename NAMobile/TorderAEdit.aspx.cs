
using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class TorderAEdit :Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
            string pd = Session["orderporducttype"]==null?"": Session["orderporducttype"].ToString();

            string glid = Request.QueryString["glid"] ?? "";
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(pd) && string.IsNullOrEmpty(glid))
                {
                    //新增
                    txtProductType.Text=pd;
                    this.tbx_inputdate.Text = NAMobile.Model.Config.NowDateToString;
                }
                else
                {
                    System.Data.DataTable hdr=  DAL.OrderDAL.getTOrderHeader(UserID, glid);
                    if (hdr != null && hdr.Rows.Count>0)
                    {
                        txtProductType.Text = hdr.Rows[0]["producttype"].ToString();

                        this.tbx_po.Text = hdr.Rows[0]["po"].ToString();
                        tbx_txtcustnam.Text = hdr.Rows[0]["Custnam"].ToString();
                        this.tbx_inputdate.Text = Convert.ToDateTime(hdr.Rows[0]["PODate"]).ToString(NAMobile.Model.Config.glbDateFormat);
                     
                    }
                    else
                    {
                        RegisterScript("alert('the order has been check-out or deleted. ')");
                        //no fount hdr
                    }

                   // DAL.OrderDAL.HasModifyRightsCheck( UserID)
                }
            }
            this.lbl_producttype.Text = GetProductName(txtProductType.Text);
           // Session["orderporducttype"] = null;
        }
    }
}