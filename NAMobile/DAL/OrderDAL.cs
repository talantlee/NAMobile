using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
namespace NAMobile.DAL
{
    public class OrderDAL
    {
        public DataTable getPendingOrderList(params object[] paras)
        {
            return new SqlHelper().ExecuteDataset("NAMB_lft_TOrderARows", paras).Tables[0];
        }
    }
}