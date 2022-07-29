<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TorderAEdit.aspx.cs" Inherits="NAMobile.TorderAEdit" %>

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
    <form id="form1" runat="server"  class="needs-validation" novalidate>
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Order Header Information / Shutters</div>
                     <div style="padding-top:10px;">
                      <div class="row row-cols-1 row-cols-sm-2 g-3">
                               <div class="col">
                                  <div class="row row-cols-1 row-cols-sm-2">
                                      <div class="col col-sm-3">
                                             <label for="tbx_po" class="form-label">Job/Order No:<font color="red">*</font></label>
                                      </div>
                                      <div class="col col-sm-9">
                                            <asp:TextBox ID="tbx_po" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                      </div>
                                  </div>
          
                               </div>
                            <div class="col">
                                  <div class="row row-cols-1 row-cols-sm-2">
                                       <div class="col col-sm-3" >
                                 <label for="tbx_inputdate" class="form-label">Input Date:<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-9">
                                        <asp:TextBox ID="tbx_inputdate" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                       </div>
                                    </div>
          
                               </div>

                            <div class="col">
                                <div class="row row-cols-1 row-cols-sm-2">
                                    <div class="col col-sm-3" >
                                 <label for="tbx_txtcustnam" class="form-label">Customer Name:<font color="red">*</font></label>
                                            </div>
                                  <div class="col col-sm-9">
                                 <asp:TextBox ID="tbx_txtcustnam" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                        </div>
                                    </div>
          
                               </div>

                             <div class="col">
                                  <div class="row row-cols-1 row-cols-sm-2">
                                       <div class="col col-sm-3" >
                                 <label for="tbx_shipvia" class="form-label">Ship Via:<font color="red">*</font></label>
                                               </div>
                                  <div class="col col-sm-9">
                                 <asp:TextBox ID="tbx_shipvia" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
             </div>
                                    </div>
          
                               </div>
                     </div>
                      </div>
                  </main>
                 </div>
           
        
        </div>
        <div class="container p-5 fixed-bottom">
               <a href="#" class="btn btn-primary">Back</a>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         <a href="#" class="btn btn-primary">Submit</a>
        </div>

    </form>
</body>
</html>
