using NAMobile.DAL;
using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.handles
{
    /// <summary>
    /// getAccountData 的摘要描述
    /// </summary>
    public class getAccountData : Framework.SWebHandler
    {

        public override void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
      
            if (!IsAuthenticated(context, HandlerDataType.DATATABLE))
            {
                return;
            }
            string userid = context.Session["UserID"].ToString();
            int page = int.Parse(context.Request.Form["page"] ?? "1");
            int pagesize = int.Parse(context.Request.Form["rows"] ?? context.Request.Form["limit"] ?? "10");

            string gettype = context.Request.Form["gettype"] ?? "";
            switch (gettype)
            {
                case "getlist":
                    string dealerid= context.Request.Form["dealerid"] ?? "";
                    string dealername = context.Request.Form["dealername"] ?? "";
                    context.Response.Write((Newtonsoft.Lib.JsonData)(new CustomerDAL().GetList(userid, dealerid, dealername,page, pagesize)));
                    break;

                case "getdealer":
                    
                    context.Response.Write((Newtonsoft.Lib.JsonData)(new CustomerDAL().GetDealerInfo(userid, context.Request.Form["dealerid"] ?? "")));
                    break;
                case "getshipaddress":
                  
                    context.Response.Write((Newtonsoft.Lib.JsonData)(new CustomerDAL().GetDealerAddress( context.Request.Form["dealerid"] ?? "", context.Request.Form["addressid"] ?? "")));
                    break;


            }

        }

     
    }
}