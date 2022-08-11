
using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class TorderAEdit :   Framework.BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
            string pd = Request.QueryString["orderporducttype"]??"";
            string pgmcode= Request.QueryString["pgmcode"] ?? "";
            string glid = Request.QueryString["glid"] ?? "";
           
            if (!Page.IsPostBack)
            {
                tbx_glid.Text = glid;
                if (!string.IsNullOrEmpty(pd) && string.IsNullOrEmpty(glid))
                {
                    //新增
                    txtProductType.Text = pd;
                    this.tbx_inputdate.Text = NAMobile.Model.Config.NowDateToString;

                }
                else if (!string.IsNullOrEmpty(pd) && glid.Length>10 && !string.IsNullOrEmpty(pgmcode))
                {
                    //goto add detail;

                }
                else
                {
                    System.Data.DataTable hdr = DAL.OrderDAL.getTOrderHeader(UserID, glid);
                    if (hdr != null && hdr.Rows.Count > 0)
                    {
                        txtProductType.Text = hdr.Rows[0]["producttype"].ToString();

                        this.tbx_po.Text = hdr.Rows[0]["po"].ToString();
                        tbx_txtcustnam.Text = hdr.Rows[0]["Custnam"].ToString();
                        this.tbx_inputdate.Text = Convert.ToDateTime(hdr.Rows[0]["PODate"]).ToString(NAMobile.Model.Config.glbDateFormat);
                        if (hdr.Rows[0]["ArrivedPort"].ToString().Length > 0) drp_ArrivedPort.SelectedValue = hdr.Rows[0]["ArrivedPort"].ToString();
                        this.drp_shipvia.SelectedValue = hdr.Rows[0]["shipvia"].ToString();

                        //       this.tbx_accountname.Text = hdr.Rows[0]["accountname"].ToString();
                        //  this.tbx.Text = hdr.Rows[0]["custid"].ToString();
                        tbx_glid.Text = hdr.Rows[0]["glid"].ToString();

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

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string glid = tbx_glid.Text;
            if (glid.Length > 0)
            {
                Response.Redirect("TOrderInfo.aspx?glid=" + glid);
            }else
            {
                Response.Redirect("ShutterProgamOptions.aspx?glid=" + glid);
            }
        }
    }
}