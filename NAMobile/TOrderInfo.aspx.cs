using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class TOrderInfo : Framework.BasePage
    {
        public string ProductType = string.Empty;

        public DataSet orderDetails = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();

            string glid = Request.QueryString["glid"] ?? "";
        
            if (!Page.IsPostBack)
            {

                System.Data.DataTable hdr = DAL.OrderDAL.getTOrderHeader(UserID, glid);
                if (hdr != null && hdr.Rows.Count > 0)
                {
                    txt_producttype.Text = hdr.Rows[0]["producttype"].ToString();
                    ProductType = hdr.Rows[0]["producttype"].ToString();
                    this.lbl_po.Text = hdr.Rows[0]["po"].ToString();
                    lbl_custnam.Text = hdr.Rows[0]["Custnam"].ToString();
                    this.lbl_inputdate.Text = Convert.ToDateTime(hdr.Rows[0]["PODate"]).ToString(NAMobile.Model.Config.glbDateFormat);
                

                   
                    tbx_glid.Text = hdr.Rows[0]["glid"].ToString();
                    if(hdr.Rows[0]["Country"].ToString().Equals("Other",StringComparison.OrdinalIgnoreCase) || hdr.Rows[0]["Country"].ToString().Length==0)
                    {
                        this.lbl_state.Text = hdr.Rows[0]["CountryName"].ToString();
                    }else
                    {
                        this.lbl_state.Text = hdr.Rows[0]["Country"].ToString();
                    }

                    if (hdr.Rows[0]["City"].ToString().Equals("Other", StringComparison.OrdinalIgnoreCase) || hdr.Rows[0]["City"].ToString().Length == 0)
                    {
                        this.lbl_city.Text = hdr.Rows[0]["CityName"].ToString();
                    }
                    else
                    {
                        this.lbl_city.Text = hdr.Rows[0]["City"].ToString();
                    }

                    decimal OrderSurcharge = 0;
                    if(!(hdr.Rows[0]["DeliveryFee"] is System.DBNull))
                    {
                        OrderSurcharge += Convert.ToDecimal(hdr.Rows[0]["DeliveryFee"]);
                    }
                    if (!(hdr.Rows[0]["perOrderSurcharge"] is System.DBNull))
                    {
                        OrderSurcharge += Convert.ToDecimal(hdr.Rows[0]["perOrderSurcharge"]);
                    }
                    this.lbl_ordersurcharge.Text = "A$ " + OrderSurcharge.ToString("#0.00");
                    if (!(hdr.Rows[0]["m2"] is System.DBNull))
                    {
                        this.lbl_m2.Text = hdr.Rows[0]["m2"].ToString();
                    }
                    lbl_ordertotal.Text ="A$ " +Convert.ToDecimal(hdr.Rows[0]["OrderAmt"]).ToString("#0.00");


                    orderDetails = NAMobile.DAL.OrderDAL.getTOrderDetails(UserID, glid);
                }
                else
                {
                    RegisterScript("alert('the order has been check-out or deleted. ')");
                }
            }
        }


        public DataRow[] GetShutterParts(int lineid)
        {
            return orderDetails.Tables[2].Select(String .Format("LineID={0}", lineid));
        }
    }
}