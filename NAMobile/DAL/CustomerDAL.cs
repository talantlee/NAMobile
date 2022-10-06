using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

namespace NAMobile.DAL
{
    public class CustomerDAL
    {
        public DataTable GetList(params object[] paras)
        {
            return new SqlHelper().ExecuteDataset("NAMB_Customer_GetList", paras).Tables[0];
        }

       
        public DataTable GetDealerInfo(string userid,string dealerid)
        {
            return new SqlHelper().ExecuteDataset("NMAU_Customer_Get", userid,dealerid).Tables[0];
        }

        public DataTable GetDealerAddress(string dealerid,string addressid)
        {
            return new SqlHelper().ExecuteDataset("CustomShipTo_Get", dealerid, addressid).Tables[0];
        }

        public DataTable GetUserDealerList(string userid)
        {
            return new SqlHelper().ExecuteDataset("lft_GetAccountNameByUserID", userid).Tables[0];
        }
    }
}