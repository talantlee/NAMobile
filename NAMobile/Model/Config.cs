using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.Model
{
    public class Config
    {
        public const string glbDateTimeFormat = "dd-MM-yyyy HH:mm:ss";
        public const string glbDateFormat = "dd-MM-yyyy";
    
        private static bool _istestserver;
        private static bool _ismaintance;
      
        private static string _scriptversion;
    

        public static string ScriptVersion
        {
            get
            {
                return (_scriptversion == null ? string.Empty : _scriptversion);
            }
            set
            {
                _scriptversion = value;
            }
        }
        static bool _isForceHttps = false;
        public static bool isForceHttps
        {
            get
            {
                return _isForceHttps;
            }
            set
            {
                _isForceHttps = value;
            }
        }
        public static string NowDateToString
        {
            get
            {
                return DateTime.UtcNow.AddHours(10).ToString(glbDateFormat);
            }
        }

        public static bool isNoTesterServer
        {
            get
            {
                return _istestserver;
            }
            set
            {
                _istestserver = value;
            }
        }
        public static bool isMaintance
        {
            get
            {
                return _ismaintance;
            }
            set
            {
                _ismaintance = value;
            }
        }

    }
}