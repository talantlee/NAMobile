using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Collections;
namespace NAMobile.DAL
{
    public class OrderDAL
    {
        public DataTable getPendingOrderList(params object[] paras)
        {
            return new SqlHelper().ExecuteDataset("NAMB_lft_TOrderARows", paras).Tables[0];
        }



        public static DataTable getTOrderHeader(string userid,string glid)
        {
            return new SqlHelper().ExecuteDataset("NAMB_lft_TOrderGetHdr", userid, glid).Tables[0];
        }


        public static DataSet getTOrderDetails(string userid, string glid)
        {
            return new SqlHelper().ExecuteDataset("NAMB_TOrderInfoDetails", userid, glid);
        }


        public static string TOrderHeader_Edit(params object[] paras)
        {
            return new SqlHelper().ExecuteScalar<string>("NAMB_TOrderAMaintain", paras);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="orderuserid"></param>
        /// <param name="loginuserid"></param>
        /// <param name="dealerid">C000359 一定要傳值，其他傳空也可以</param>
        /// <returns></returns>
        public static bool HasModifyRightsCheck(string orderuserid, string loginuserid, string dealerid)
        {
            if (orderuserid.ToLower() == loginuserid.ToLower()) return true;
            if (ModifyRightsCache.ContainsKey(orderuserid.ToLower()+"_" + loginuserid.ToLower() + dealerid.ToLower()))
            {
                return true;
            }
            if(new SqlHelper().ExecuteScalar<int>("NAMB_OrderModifyRightsCheck", orderuserid, loginuserid, dealerid) == 1)
            {
                lock (ModifyRightsCache)
                {
                    ModifyRightsCache.Add(orderuserid.ToLower() + "_" + loginuserid.ToLower() + dealerid.ToLower(), true);
                }
                return true;
            }
            return false;
           
        }
        public static Hashtable ModifyRightsCache=new Hashtable();

    }
}