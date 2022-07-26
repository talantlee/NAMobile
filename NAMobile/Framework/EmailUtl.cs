using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.Framework
{
    public class EmailUtl
    {
        public static void Send(string mailto, string cc, string subject, string body, System.Collections.IList attachs)
        {
            Send(mailto, cc, subject, body, attachs, "");
        }

        public static void Send(string mailto, string cc, string subject, string body, System.Collections.IList attachs, string bcc)
        {

            new NMSoft.EMAIL.SimpleMail().Send(mailto, cc, bcc, subject, body, attachs);
          

        }
    }
}