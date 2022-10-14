
using NAMobile.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NAMobile
{
    public partial class TorderAEdit :   Framework.BasePage
    {

        protected string UserDealerList = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.CheckVaild();
            string pd = Request.QueryString["orderporducttype"]??"";
            string pgmcode= Request.QueryString["pgmcode"] ?? "";
            string glid = Request.QueryString["glid"] ?? "";
            this.tbx_accountname.ReadOnly = true;


            //if (!string.IsNullOrEmpty(pd) && glid.Length > 10 && !string.IsNullOrEmpty(pgmcode))
            //{
            //    //goto add detail;
            //    //ShutterProgamOptions.aspx?glid=
            //    return;
            //}

            if (!Page.IsPostBack)
            {

                if (Session["Rights"].ToString() == "*" || Session["Rights"].ToString() == "M")
                {
                    this.tbx_accountname.ReadOnly = false;
                }
                else
                {

                    DataTable dt = new CustomerDAL().GetUserDealerList(UserID);
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows.Count == 1)
                        {
                            this.tbx_accountname.Text = dt.Rows[0]["AccoountName"].ToString();
                            tbx_custid.Text = dt.Rows[0]["CustName"].ToString();
                            tbx_custid.ReadOnly = true;
                            setDealerBillTo(this.tbx_accountname.Text);
                            //todo:set default shipto
                        }
                        else
                        {
                            this.tbx_accountname.ReadOnly = false;
                            tbx_custid.ReadOnly = false;
                            UserDealerList = "<select class=\"form-select\" name=\"iptaccountname\" onchange=\"chgDealerID()\">";
                            UserDealerList += "<option value=''></option>";
                            foreach (DataRow dr in dt.Rows)
                            {
                                UserDealerList += string.Format("<option value='{0}'>{1}</option>", dr["accountname"].ToString(), dr["custName"].ToString());
                            }

                            UserDealerList += "</select>";
                        }
                       
                    }
                }

                tbx_glid.Text = glid;
                if (!string.IsNullOrEmpty(pd) && string.IsNullOrEmpty(glid))
                {
                    //新增
                    txtProductType.Text = pd;
                    this.tbx_inputdate.Text = NAMobile.Model.Config.NowDateToString;
                    this.tbx_orderuserid.Text = UserID;
                }

                else
                {
                    System.Data.DataTable hdr = DAL.OrderDAL.getTOrderHeader(UserID, glid);
                    if (hdr != null && hdr.Rows.Count > 0)
                    {
                        txtProductType.Text = hdr.Rows[0]["producttype"].ToString();
                        this.tbx_accountname.Text = hdr.Rows[0]["accountname"].ToString();

                     this.tbx_orderuserid.Text= hdr.Rows[0]["userid"].ToString();

                        this.tbx_po.Text = hdr.Rows[0]["po"].ToString();
                        tbx_txtcustnam.Text = hdr.Rows[0]["Custnam"].ToString();

                        tbx_custid.Text = hdr.Rows[0]["custid"].ToString();
                        this.tbx_inputdate.Text = Convert.ToDateTime(hdr.Rows[0]["PODate"]).ToString(NAMobile.Model.Config.glbDateFormat);
                        if (hdr.Rows[0]["ArrivedPort"].ToString().Length > 0) drp_ArrivedPort.SelectedValue = hdr.Rows[0]["ArrivedPort"].ToString();
                        this.drp_shipvia.SelectedValue = hdr.Rows[0]["shipvia"].ToString();

                        //       this.tbx_accountname.Text = hdr.Rows[0]["accountname"].ToString();
                        //  this.tbx.Text = hdr.Rows[0]["custid"].ToString();
                        tbx_glid.Text = hdr.Rows[0]["glid"].ToString();

                        //set bill to
                        setDealerBillTo(this.tbx_accountname.Text);
                        //set ship to
                        tbx_shipto.Text = hdr.Rows[0]["shipto"].ToString();


                        tbx_shiptocity.Text= hdr.Rows[0]["shiptocity"].ToString();

                        this.tbx_shiptotel.Text= hdr.Rows[0]["Phone"].ToString();
                        this.tbx_shipstostreet.Text = hdr.Rows[0]["ShipToStreet"].ToString();




                        this.tbx_shiptozip.Text = hdr.Rows[0]["zipcode"].ToString();
                        this.tbx_shiptocontacter.Text = hdr.Rows[0]["contacter"].ToString();
                        this.tbx_shiptocontacter1.Text = hdr.Rows[0]["contacter1"].ToString();
                        this.tbx_shiptowebsite.Text = hdr.Rows[0]["website"].ToString();
                        this.tbx_shiptoemail.Text = hdr.Rows[0]["ShipToEmail"].ToString();

                        this.drp_shiptostate.SelectedValue = hdr.Rows[0]["ShipToCountry"].ToString();
                        tbx_shiptoremark.Text = hdr.Rows[0]["ShipRemark"].ToString();
                        txt_remark.Text = hdr.Rows[0]["MemoA"].ToString();






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
        private void setDealerBillTo(string dealerid)
        {
            DataTable dealer = new CustomerDAL().GetDealerInfo(UserID, dealerid);
            if (dealer.Rows.Count > 0)
            {
                this.lbldealername.Text = dealer.Rows[0]["dealername"].ToString();
                this.lbl_contacter.Text = dealer.Rows[0]["contact"].ToString() + " " + dealer.Rows[0]["contact1"].ToString();
                this.lbl_street.Text = dealer.Rows[0]["street"].ToString();
                this.lbl_zipcode.Text = dealer.Rows[0]["zip"].ToString();
                this.lbl_city.Text = dealer.Rows[0]["city"].ToString();
                this.lbl_state.Text = dealer.Rows[0]["state"].ToString();
                this.lbl_tel.Text = dealer.Rows[0]["tel"].ToString();
                this.lbl_email.Text = dealer.Rows[0]["email"].ToString();
                this.lbl_website.Text = dealer.Rows[0]["website"].ToString();

                string shiplist= dealer.Rows[0]["shiplist"].ToString();
                var shiptolist= shiplist.Split(new string[] { "|@|" }, StringSplitOptions.RemoveEmptyEntries);
                if(shiptolist.Length>1)
                this.drpshipto.Items.Add(new ListItem("", ""));
                foreach (var shipto in shiptolist)
                {
                    var shipinfo=shipto.Split(new string[] { "||" }, StringSplitOptions.RemoveEmptyEntries);
                    if(shipinfo.Length>1)
                    this.drpshipto.Items.Add(new ListItem(shipinfo[1], shipinfo[0]));
                    //if (shiptolist.Length == 1)
                    //{
                    //  DataTable daddress=  new CustomerDAL().GetDealerAddress(this.UserID, dealerid, shipinfo[0]);
                    //}
                }
               
                  
                // drpshipto

            }
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string glid = tbx_glid.Text;



              string ArrivedPort ="";
            if (drp_shipvia.SelectedValue != "ship")
            {
                ArrivedPort = drp_ArrivedPort.SelectedValue;
            }

            if (glid.Length > 0)
            {
                DAL.OrderDAL.TOrderHeader_Edit(tbx_orderuserid.Text, glid, tbx_accountname.Text, tbx_custid.Text, tbx_txtcustnam.Text, tbx_inputdate.Text, tbx_po.Text,
                Request.UserHostAddress, ArrivedPort, txt_remark.Text, tbx_shipto.Text, drp_shipvia.SelectedValue, txtProductType.Text, this.drp_shiptostate.SelectedValue,
                tbx_shiptocity.Text, tbx_shipstostreet.Text, tbx_shiptozip.Text, tbx_shiptocontacter.Text, tbx_shiptocontacter1.Text, tbx_shiptoemail.Text,
                tbx_shiptotel.Text, tbx_shiptowebsite.Text, tbx_shiptoremark.Text, UserID, "M");
                Response.Redirect("TOrderInfo.aspx?glid=" + glid);
            }else
            {
                glid=DAL.OrderDAL.TOrderHeader_Edit(tbx_orderuserid.Text, glid, tbx_accountname.Text, tbx_custid.Text, tbx_txtcustnam.Text, tbx_inputdate.Text, tbx_po.Text,
                Request.UserHostAddress, ArrivedPort, txt_remark.Text, tbx_shipto.Text, drp_shipvia.SelectedValue, txtProductType.Text, this.drp_shiptostate.SelectedValue,
                tbx_shiptocity.Text, tbx_shipstostreet.Text, tbx_shiptozip.Text, tbx_shiptocontacter.Text, tbx_shiptocontacter1.Text, tbx_shiptoemail.Text,
                tbx_shiptotel.Text, tbx_shiptowebsite.Text, tbx_shiptoremark.Text, UserID, "I");

                Response.Redirect("ShutterProgamOptions.aspx?glid=" + glid);
            }
        }
    }
}