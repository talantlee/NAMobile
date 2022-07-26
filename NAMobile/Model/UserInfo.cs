using System;
using System.Collections.Generic;
using System.Web;

namespace NAMobile.Model
{
    public class UserInfo
    {
		#region Model
		private string _userid;
		private string _usernam;
		private string _loginid;
		private string _passwd;
		private string _contactperson;
		private string _email;
		private string _rights;
		private string _status;
		private string _cuserid;
		private string _muserid;
		private int _mlineid;
		private int _dlineid;
		private int _xlineid;
		private DateTime _cdate;
		private DateTime _mdate;
		private int _sysid;
		private string _showprice;
		private string _grantlist;
		private string _clienttype;
		private string _clienttypedes;
		private string _shipvia;
		private string _groupid;
		private int _isgroupmanage;
		private string _answer;
		private string _rgaright;
		private string _onholdgroup;
		private string _qsspec;
		private int _iscash;
		private string _allowwaive;
		private bool _isdel;
		private int _isnqa;
		private string _custdelivery;
		private string _istemplate;
		private int _securitylevel;
		private string _dealerid;
		private bool _isactived;
		private bool _isapproved;
		private string _activedstatus;
		private string _oldpwd;
		private string _defpricegroup;
		private string _defpaymentterm;
		private string _defpricegroup_cb;
		private string _defdeliveryterm;
		private string _defdeliveryterm_cb;
		private string _randpwd;
		private string _defpaymentterm_cb;
		private DateTime _activeddate;
		private DateTime _approveddate;
		private string _rgaemail;
		private int _isfromsf;
		private string _newpasswd;
		private string _pricegroup_sh;
		private string _pricegroup_rl;
		private string _pricegroup_ps;
		private string _pricelist;
		/// <summary>
		/// 
		/// </summary>
		public string UserID
		{
			set { _userid = value; }
			get { return _userid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string UserNam
		{
			set { _usernam = value; }
			get { return _usernam; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string LoginId
		{
			set { _loginid = value; }
			get { return _loginid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string Passwd
		{
			set { _passwd = value; }
			get { return _passwd; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ContactPerson
		{
			set { _contactperson = value; }
			get { return _contactperson; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string Email
		{
			set { _email = value; }
			get { return _email; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string Rights
		{
			set { _rights = value; }
			get { return _rights; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string Status
		{
			set { _status = value; }
			get { return _status; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string CUserID
		{
			set { _cuserid = value; }
			get { return _cuserid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string MUserID
		{
			set { _muserid = value; }
			get { return _muserid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int MLineID
		{
			set { _mlineid = value; }
			get { return _mlineid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int DLineID
		{
			set { _dlineid = value; }
			get { return _dlineid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int XLineID
		{
			set { _xlineid = value; }
			get { return _xlineid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime CDate
		{
			set { _cdate = value; }
			get { return _cdate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime MDate
		{
			set { _mdate = value; }
			get { return _mdate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int SysID
		{
			set { _sysid = value; }
			get { return _sysid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ShowPrice
		{
			set { _showprice = value; }
			get { return _showprice; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string GrantList
		{
			set { _grantlist = value; }
			get { return _grantlist; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ClientType
		{
			set { _clienttype = value; }
			get { return _clienttype; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ClientTypeDes
		{
			set { _clienttypedes = value; }
			get { return _clienttypedes; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ShipVia
		{
			set { _shipvia = value; }
			get { return _shipvia; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string GroupID
		{
			set { _groupid = value; }
			get { return _groupid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int isGroupManage
		{
			set { _isgroupmanage = value; }
			get { return _isgroupmanage; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string answer
		{
			set { _answer = value; }
			get { return _answer; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string RgaRight
		{
			set { _rgaright = value; }
			get { return _rgaright; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string onholdgroup
		{
			set { _onholdgroup = value; }
			get { return _onholdgroup; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string QsSpec
		{
			set { _qsspec = value; }
			get { return _qsspec; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int isCash
		{
			set { _iscash = value; }
			get { return _iscash; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string allowWaive
		{
			set { _allowwaive = value; }
			get { return _allowwaive; }
		}
		/// <summary>
		/// 
		/// </summary>
		public bool isDel
		{
			set { _isdel = value; }
			get { return _isdel; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int isNQA
		{
			set { _isnqa = value; }
			get { return _isnqa; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string CustDelivery
		{
			set { _custdelivery = value; }
			get { return _custdelivery; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string isTemplate
		{
			set { _istemplate = value; }
			get { return _istemplate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int SecurityLevel
		{
			set { _securitylevel = value; }
			get { return _securitylevel; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DealerID
		{
			set { _dealerid = value; }
			get { return _dealerid; }
		}
		/// <summary>
		/// 
		/// </summary>
		public bool isActived
		{
			set { _isactived = value; }
			get { return _isactived; }
		}
		/// <summary>
		/// 
		/// </summary>
		public bool isApproved
		{
			set { _isapproved = value; }
			get { return _isapproved; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string ActivedStatus
		{
			set { _activedstatus = value; }
			get { return _activedstatus; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string oldpwd
		{
			set { _oldpwd = value; }
			get { return _oldpwd; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefPriceGroup
		{
			set { _defpricegroup = value; }
			get { return _defpricegroup; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefPaymentTerm
		{
			set { _defpaymentterm = value; }
			get { return _defpaymentterm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefPriceGroup_CB
		{
			set { _defpricegroup_cb = value; }
			get { return _defpricegroup_cb; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefDeliveryTerm
		{
			set { _defdeliveryterm = value; }
			get { return _defdeliveryterm; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefDeliveryTerm_CB
		{
			set { _defdeliveryterm_cb = value; }
			get { return _defdeliveryterm_cb; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string RandPwd
		{
			set { _randpwd = value; }
			get { return _randpwd; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string DefPaymentTerm_CB
		{
			set { _defpaymentterm_cb = value; }
			get { return _defpaymentterm_cb; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime ActivedDate
		{
			set { _activeddate = value; }
			get { return _activeddate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime ApprovedDate
		{
			set { _approveddate = value; }
			get { return _approveddate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string RgaEmail
		{
			set { _rgaemail = value; }
			get { return _rgaemail; }
		}
		/// <summary>
		/// 
		/// </summary>
		public int isFromSF
		{
			set { _isfromsf = value; }
			get { return _isfromsf; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string newPassWd
		{
			set { _newpasswd = value; }
			get { return _newpasswd; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string PriceGroup_SH
		{
			set { _pricegroup_sh = value; }
			get { return _pricegroup_sh; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string PriceGroup_RL
		{
			set { _pricegroup_rl = value; }
			get { return _pricegroup_rl; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string PriceGroup_PS
		{
			set { _pricegroup_ps = value; }
			get { return _pricegroup_ps; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string PriceList
		{
			set { _pricelist = value; }
			get { return _pricelist; }
		}
		#endregion Model
	}
}