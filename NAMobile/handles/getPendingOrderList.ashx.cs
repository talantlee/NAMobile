using NAMobile.DAL;
using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.handles
{
    /// <summary>
    /// getPendingOrderList 的摘要描述
    /// </summary>
    public class getPendingOrderList : Framework.SWebHandler
    {

        public override void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            if (!IsAuthenticated(context, HandlerDataType.DATATABLE))
            {
                return;
            }
            string requserid = context.Request.Form["requid"] ?? "";
            int page = int.Parse(context.Request.Form["page"] ?? "1");
            int pagesize = int.Parse(context.Request.Form["rows"] ?? context.Request.Form["limit"] ?? "10");

            context.Response.Write((Newtonsoft.Lib.JsonData)(new OrderDAL().getPendingOrderList(context.Session["UserID"].ToString(), requserid, page, pagesize)));
          
        }

    
    }
}