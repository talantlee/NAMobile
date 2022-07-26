using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

namespace NAMobile.DAL
{
    public class UserInfoDAL
    {
		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Model.UserInfo GetModel(string userid)
		{
		
			Model.UserInfo model = new Model.UserInfo();

			DataSet ds = new SqlHelper().ExecuteDataset("NAMB_GetUser", userid);
		
			if (ds.Tables[0].Rows.Count > 0)
			{
				model.UserID = ds.Tables[0].Rows[0]["UserID"].ToString();
				model.UserNam = ds.Tables[0].Rows[0]["UserNam"].ToString();
				model.LoginId = ds.Tables[0].Rows[0]["LoginId"].ToString();
				model.Passwd = ds.Tables[0].Rows[0]["Passwd"].ToString();
				model.ContactPerson = ds.Tables[0].Rows[0]["ContactPerson"].ToString();
				model.Email = ds.Tables[0].Rows[0]["Email"].ToString();
				model.Rights = ds.Tables[0].Rows[0]["Rights"].ToString();
				model.Status = ds.Tables[0].Rows[0]["Status"].ToString();
				model.CUserID = ds.Tables[0].Rows[0]["CUserID"].ToString();
				model.MUserID = ds.Tables[0].Rows[0]["MUserID"].ToString();
				if (ds.Tables[0].Rows[0]["MLineID"].ToString() != "")
				{
					model.MLineID = int.Parse(ds.Tables[0].Rows[0]["MLineID"].ToString());
				}
				if (ds.Tables[0].Rows[0]["DLineID"].ToString() != "")
				{
					model.DLineID = int.Parse(ds.Tables[0].Rows[0]["DLineID"].ToString());
				}
				if (ds.Tables[0].Rows[0]["XLineID"].ToString() != "")
				{
					model.XLineID = int.Parse(ds.Tables[0].Rows[0]["XLineID"].ToString());
				}
				if (ds.Tables[0].Rows[0]["CDate"].ToString() != "")
				{

					model.CDate = DateTime.Parse(ds.Tables[0].Rows[0]["CDate"].ToString());
				}
				if (ds.Tables[0].Rows[0]["MDate"].ToString() != "")
				{

					model.MDate = DateTime.Parse(ds.Tables[0].Rows[0]["MDate"].ToString());
				}
				if (ds.Tables[0].Rows[0]["SysID"].ToString() != "")
				{
					model.SysID = int.Parse(ds.Tables[0].Rows[0]["SysID"].ToString());
				}
				model.ShowPrice = ds.Tables[0].Rows[0]["ShowPrice"].ToString();
				model.GrantList = ds.Tables[0].Rows[0]["GrantList"].ToString();
				model.ClientType = ds.Tables[0].Rows[0]["ClientType"].ToString();
				model.ClientTypeDes = ds.Tables[0].Rows[0]["ClientTypeDes"].ToString();
				model.ShipVia = ds.Tables[0].Rows[0]["ShipVia"].ToString();
				model.GroupID = ds.Tables[0].Rows[0]["GroupID"].ToString();
				if (ds.Tables[0].Rows[0]["isGroupManage"].ToString() != "")
				{
					model.isGroupManage = int.Parse(ds.Tables[0].Rows[0]["isGroupManage"].ToString());
				}
				model.answer = ds.Tables[0].Rows[0]["answer"].ToString();
				model.RgaRight = ds.Tables[0].Rows[0]["RgaRight"].ToString();
				model.onholdgroup = ds.Tables[0].Rows[0]["onholdgroup"].ToString();
				model.QsSpec = ds.Tables[0].Rows[0]["QsSpec"].ToString();
				if (ds.Tables[0].Rows[0]["isCash"].ToString() != "")
				{
					model.isCash = int.Parse(ds.Tables[0].Rows[0]["isCash"].ToString());
				}
				model.allowWaive = ds.Tables[0].Rows[0]["allowWaive"].ToString();
				if (ds.Tables[0].Rows[0]["isDel"].ToString() != "")
				{
					if ((ds.Tables[0].Rows[0]["isDel"].ToString() == "1") || (ds.Tables[0].Rows[0]["isDel"].ToString().ToLower() == "true"))
					{
						model.isDel = true;
					}
					else
					{
						model.isDel = false;
					}
				}

				if (ds.Tables[0].Rows[0]["isNQA"].ToString() != "")
				{
					model.isNQA = int.Parse(ds.Tables[0].Rows[0]["isNQA"].ToString());
				}
				model.CustDelivery = ds.Tables[0].Rows[0]["CustDelivery"].ToString();
				model.isTemplate = ds.Tables[0].Rows[0]["isTemplate"].ToString();
				if (ds.Tables[0].Rows[0]["SecurityLevel"].ToString() != "")
				{
					model.SecurityLevel = int.Parse(ds.Tables[0].Rows[0]["SecurityLevel"].ToString());
				}
				model.DealerID = ds.Tables[0].Rows[0]["DealerID"].ToString();
				if (ds.Tables[0].Rows[0]["isActived"].ToString() != "")
				{
					if ((ds.Tables[0].Rows[0]["isActived"].ToString() == "1") || (ds.Tables[0].Rows[0]["isActived"].ToString().ToLower() == "true"))
					{
						model.isActived = true;
					}
					else
					{
						model.isActived = false;
					}
				}

				if (ds.Tables[0].Rows[0]["isApproved"].ToString() != "")
				{
					if ((ds.Tables[0].Rows[0]["isApproved"].ToString() == "1") || (ds.Tables[0].Rows[0]["isApproved"].ToString().ToLower() == "true"))
					{
						model.isApproved = true;
					}
					else
					{
						model.isApproved = false;
					}
				}

				model.ActivedStatus = ds.Tables[0].Rows[0]["ActivedStatus"].ToString();
				model.oldpwd = ds.Tables[0].Rows[0]["oldpwd"].ToString();
				model.DefPriceGroup = ds.Tables[0].Rows[0]["DefPriceGroup"].ToString();
				model.DefPaymentTerm = ds.Tables[0].Rows[0]["DefPaymentTerm"].ToString();
				model.DefPriceGroup_CB = ds.Tables[0].Rows[0]["DefPriceGroup_CB"].ToString();
				model.DefDeliveryTerm = ds.Tables[0].Rows[0]["DefDeliveryTerm"].ToString();
				model.DefDeliveryTerm_CB = ds.Tables[0].Rows[0]["DefDeliveryTerm_CB"].ToString();
				model.RandPwd = ds.Tables[0].Rows[0]["RandPwd"].ToString();
				model.DefPaymentTerm_CB = ds.Tables[0].Rows[0]["DefPaymentTerm_CB"].ToString();
				if (ds.Tables[0].Rows[0]["ActivedDate"].ToString() != "")
				{

					model.ActivedDate = DateTime.Parse(ds.Tables[0].Rows[0]["ActivedDate"].ToString());
				}
				if (ds.Tables[0].Rows[0]["ApprovedDate"].ToString() != "")
				{

					model.ApprovedDate = DateTime.Parse(ds.Tables[0].Rows[0]["ApprovedDate"].ToString());
				}
				model.RgaEmail = ds.Tables[0].Rows[0]["RgaEmail"].ToString();
				if (ds.Tables[0].Rows[0]["isFromSF"].ToString() != "")
				{
					model.isFromSF = int.Parse(ds.Tables[0].Rows[0]["isFromSF"].ToString());
				}
				model.newPassWd = ds.Tables[0].Rows[0]["newPassWd"].ToString();
				model.PriceGroup_SH = ds.Tables[0].Rows[0]["PriceGroup_SH"].ToString();
				model.PriceGroup_RL = ds.Tables[0].Rows[0]["PriceGroup_RL"].ToString();
				model.PriceGroup_PS = ds.Tables[0].Rows[0]["PriceGroup_PS"].ToString();
				model.PriceList = ds.Tables[0].Rows[0]["PriceList"].ToString();
				return model;
			}
			else
			{
				return null;
			}
		}


		public void AddLogin(string userid,string sessionid,string ipaddress)
        {
			new SqlHelper().ExecuteNonQuery("NA_UserLoginAdd", userid, sessionid, ipaddress);
		}
		public void UserTryLogin(string userid, string passwd,string ipaddress)
		{
			new SqlHelper().ExecuteNonQuery("NA_UserLoginAdd", userid, passwd, ipaddress);
		}
	}
}