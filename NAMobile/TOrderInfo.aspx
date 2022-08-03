<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TOrderInfo.aspx.cs" Inherits="NAMobile.TOrderInfo" %>

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
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Order Information(Master/Detail)</div>
     
              
                      <div class="table-responsive pt-2">
                          <table class="table table-striped table-sm" id="table_list">
                              <thead>
                                  <tr>
                                      <th scope="col">#</th>
                                   
                                      <th scope="col">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                
                              </tbody>
                          </table>
                      </div>

                       
                  </main>
                 </div>
             </div>
        <div class="container p-5 pt-3">
            <a href="SelectMaterial.aspx" class="btn btn-primary">Progam</a> &nbsp;&nbsp;&nbsp;
              <a href="#" class="btn btn-primary">Add parts</a>
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
               
                shtml.push("</tr>")
                return shtml.join('');
            }
        
            $(function () {
            
                $("#loadingdv").css("display", "none");
            });
        </script>


     
    </form>
</body>
</html>
