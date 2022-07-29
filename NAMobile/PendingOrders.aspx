<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingOrders.aspx.cs" Inherits="NAMobile.PendingOrders" %>

<%@ Register Src="~/navTop.ascx" TagPrefix="uc1" TagName="navTop" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lib/jquery-3.6.0.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <title><%Response.Write(Session["WebTitle"]==null?"Norman Australia":Session["WebTitle"].ToString()); %></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">ORDERS LIST (JOBS NOT SUBMITTED)</div>

                    <%if (Session["Rights"].ToString() == "*" || (Session["SecurityLevel"].ToString() == "99" && Session["Rights"].ToString() == "" && Session["isCash"].ToString() == "0"))
                        { %>
                     <div class="pt-2" >
                             User ID&nbsp;:
                                <input  type="text"  id="ipt_requserid"/>&nbsp;
                                <input type="button" onclick="getData(1)" id="btn_search" value="Search" />
                         
                     </div>
                    <%} %>
                      <div class="table-responsive pt-2">
                          <table class="table table-striped table-sm" id="table_list">
                              <thead>
                                  <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">User Id</th>
                                      <th scope="col">Customer Name</th>
                                       <th scope="col">State/Country</th>
                                       <th scope="col">City</th>
                                       <th scope="col">Item No.</th>

                                      <th scope="col">Job/Order No</th>
                             
                                        <th scope="col">Input Date</th>
                                          <th scope="col">Total m2</th>
                                      <%if(Session["ShowPrice"]!=null && Session["ShowPrice"].ToString() == "Y") {  %>
                                               <th scope="col">Total Cost of Job(Excl GST)</th>
                                      <%} %>
                                      <th scope="col">Product Type</th>
                                      <th scope="col">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                
                              </tbody>
                          </table>
                      </div>

                        <div  class="pt-1" id="dv_pageing">
                            <nav aria-label="Page navigation">
                              <ul class="pagination">
                                <li class="page-item"><a class="page-link" id="btn_prev" href="#">Prior</a></li>
                        
                                <li class="page-item"><a class="page-link" id="btn_next"  href="#">Next</a></li>

                                   <li class="page-item page-link">&nbsp; <select id="sel_pages" onchange="getData(this.value)"></select><span  id="td_currentrecord"></span></li>
                                  
                              </ul>
                            </nav>
                        </div>
                       
                  </main>
                 </div>
             </div>
        <div class="container p-5 fixed-bottom">
            <a href="selectProduct.aspx" class="btn btn-primary">Add Order</a>
        </div>
        <script type="text/javascript">
            function getData(goPage) {
                let dtl = { requid: "", limit: 10, page:1 };
                if (document.getElementById("ipt_requserid")) {
                    dtl.requid = document.getElementById("ipt_requserid").value;
                   
                }
                dtl.page = goPage;
            
                $.ajax({
                    url: "handles/getPendingOrderList.ashx",
                    dataType: "json",
                    type: "POST",
                    cache: false,
                  //  async: false,
                    data: dtl,
                    success: function (data) {
                       

                        //TotalRows
                        if (data.total == 0) {
                            //not result
                           
                            $("#dv_pageing").css("display", "none");
                            
                            return false;
                        }
                        $("#dv_pageing").css("display", "");
                        //$("#dv_pageing").css("display", "");
                        //$("#dv_norecord").css("display", "none");
                        var totalrows = data.rows[0].totalrows;
                        var totalpages = Math.ceil(totalrows / dtl.limit);

                        setTotalPages(dtl.page, totalpages);
                       
                        var curtotal = data.rows.length;

                        for (var i = 0; i < curtotal; i++) {

                            $("#table_list").append(addRow(data.rows[i], i));

                        }
                    },
                    error: function () {
                        alert("load  LIST error:");
                       
                    }
                });
            }
            function addRow(dr, idx) {
                let shtml = new Array();
                shtml.push("<tr>")
                shtml.push("<td>" + dr.autoid.toString() + "</td>")
                shtml.push("<td>" + dr.userid + "</td>")
                shtml.push("<td>" + dr.custnam + "</td>")
                shtml.push("<td>" + dr.countryname + "</td>")
                shtml.push("<td>" + dr.cityname + "</td>")
                shtml.push("<td>" + dr.shuttercount + "</td>")
                shtml.push("<td>" + dr.po + "</td>")
                shtml.push("<td>" + dr.inputdate + "</td>")
                shtml.push("<td>" + dr.m2 + "</td>")
                 <%if(Session["ShowPrice"]!=null && Session["ShowPrice"].ToString() == "Y") {  %>
                shtml.push("<td>" + dr.orderamt + "</td>")
                <%}%>
                shtml.push("<td>" + dr.producttype + "</td>")
                shtml.push("</tr>")
                return shtml.join('');
            }
            function setTotalPages(pageidx,pagecount) {

                var shtml = new Array();
                $("#sel_pages").find("option").remove();
                for (var i = 1; i <= pagecount; i++) {
                    shtml.push("<option value='" + i + "'>" + i + "</option>");
                }
                $("#sel_pages").append(shtml.join(''));
                $("#sel_pages").val(pageidx);
               
                
                $("#btn_prev").unbind("click");
                $("#btn_next").unbind("click");

                var pshtml = " /";
                pshtml += pagecount.toString();
             //   pshtml += ((pageidx - 1) * pagesize + 1).toString();
               
                if (pageidx >= pagecount) {
                    $("#btn_next").addClass("disabled");
                    $("#btn_next").attr("disabled", "disabled");
                } else {
                    pshtml += (pageidx * pagesize).toString();
                    $("#btn_next").removeAttr("disabled");
                    $("#btn_next").removeClass("disabled");
                    if (pageidx < pagecount) {
                        $("#btn_next").click(function () {
                            getData(pageidx + 1);
                        });
                    }
                }
                pshtml += "";
                $("#td_currentrecord").html(pshtml);
                if (pageidx == 1) {
                    $("#btn_prev").addClass("disabled", "");
                    $("#btn_prev").attr("disabled", "");
                } else {
                    $("#btn_prev").removeClass("disabled", "");
                    $("#btn_prev").removeAttr("disabled");
                    if (pageidx > 1 && pagecount > 1) {
                        $("#btn_prev").click(function () {
                            getData(pageidx - 1);
                        });
                    }
                }
            }
            $(function () {
                getData(1);
            });
        </script>


     
    </form>
</body>
</html>
