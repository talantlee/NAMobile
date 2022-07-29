using System;
using System.Collections.Generic;
using System.Web;
using System.Web.SessionState;

namespace NAMobile.Framework
{
    public abstract class SWebHandler : IHttpHandler, IRequiresSessionState
    {

        public abstract void ProcessRequest(HttpContext context);
        public virtual bool IsAuthenticated(HttpContext context, HandlerDataType datatype)
        {
            bool isauthed=false;
            if (context.Session["UserID"] != null)
            {
                if(!string.IsNullOrEmpty(context.Session["UserID"].ToString()))
                isauthed=true;
            }
            if (!isauthed)
            {
                switch (datatype)
                {
                    case HandlerDataType.DATATABLE:
                        context.Response.Write("{\"errorcode\":3,\"total\": 0,\"info\": \"Your login information has expired, please log in again.\"}");
                        break;
                    case HandlerDataType.DATASET:
                        context.Response.Write("{\"errorcode\":3,\"total\": 0,\"info\": \"Your login information has expired, please log in again.\"}");
                        break;
                    case HandlerDataType.STRING:
                        context.Response.Write("{\"errorcode\":3,\"info\": \"Your login information has expired, please log in again.\"}");
                        break;
                }

               
            }
            return isauthed;
        }



        public enum HandlerDataType
        {
            DATATABLE = 0,
            DATASET = 1,
            STRING = 3,
            OPERATION = 5

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}