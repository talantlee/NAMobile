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
    <link href="lib/bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <script src="lib/bootstrap-datepicker.min.js"></script>
    <title><%Response.Write(Session["WebTitle"]==null?"Norman Australia":Session["WebTitle"].ToString()); %></title>
    <link href="css/elsteps.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"  class="needs-validation" novalidate>
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                   
                
                        <div class="p-3">
                            <div style="display: flex;white-space: nowrap;">
                                <div class="el-step is-horizontal" style="flex-basis: 20%; margin-right: 0px;"><div class="el-step__head is-success"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text" >1</div></div><div class="el-step__main"><div class="el-step__title is-success">Ship Infomation</div><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 20%; margin-right: 0px;"><div class="el-step__head is-success"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text">2</div></div><div class="el-step__main"><div class="el-step__title is-success">步骤 2</div><div class="el-step__description is-success"></div></div></div> 
                                    <div class="el-step is-horizontal" style="flex-basis: 20%; margin-right: 0px;"><div class="el-step__head is-process"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text">3</div></div><div class="el-step__main"><div class="el-step__title is-success">步骤 3</div><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 20%; margin-right: 0px;"><div class="el-step__head is-wait"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text">4</div></div><div class="el-step__main"><div class="el-step__title is-success">步骤 4</div><div class="el-step__description is-success"></div></div></div> 
                           
                                <div class="el-step is-horizontal is-flex" style="flex-basis: 20%; max-width: 33.3333%;"><div class="el-step__head is-wait"><div class="el-step__line"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text"><!----><div class="el-step__icon-inner">5</div></div></div><div class="el-step__main"><div class="el-step__title is-process">步骤 5</div><div class="el-step__description is-process"></div></div></div>
                            </div> 


                        </div>

                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Order Header Information / <asp:Label ID="lbl_producttype" ForeColor="Blue" runat="server"></asp:Label></div>
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
                                      <div class="row">
                                          <div class="col">
                                            <asp:DropDownList ID="drp_shipvia" runat="server" class="form-select" required>
                                           <asp:ListItem Value="ship">Sea freight</asp:ListItem>
                                             <asp:ListItem Value="air">Airfreight</asp:ListItem>
                                            </asp:DropDownList>
                                          </div>
                                          <div class="col col-sm-3">
                                              <label for="drp_ArrivedPort" class="form-label">Container Port:<font color="red">*</font></label>
                                              
                                          </div>
                                          <div class="col">
                                                  <asp:DropDownList ID="drp_ArrivedPort" runat="server" class="form-select" >
                                                        <asp:ListItem Value=""></asp:ListItem>
                                           <asp:ListItem Value="Sydney">Sydney</asp:ListItem>
                                             <asp:ListItem Value="Melbourne">Melbourne</asp:ListItem>
                                                       <asp:ListItem Value="Brisbane">Brisbane</asp:ListItem>
                                                       <asp:ListItem Value="Perth">Perth</asp:ListItem>
                                            </asp:DropDownList>

                                           

                                          </div>

                                      </div>
                                 
                               
             </div>
                                    </div>
          
                               </div>
                     </div>
                      <!--Ship to -->
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Bill to </div>
                      <div class="row row-cols-1 row-cols-sm-2 g-3">
                          <div class="col">
                               <div class="row row-cols-1 row-cols-sm-3 pt-3">
                                      <div class="col col-sm-2 pt-1">
                                             <label for="tbx_po" class="form-label">Dealer :<font color="red">*</font></label>
                                      </div>
                                      <div class="col col-sm-3 pt-1">
                                                <asp:TextBox ID="tbx_accountname" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                      </div>
                                     <div class="col col-sm-7 pt-1">
                                                <asp:TextBox ID="tbx_custid" runat="server" CssClass="form-control"   required></asp:TextBox>
                                      </div>
                                  </div>
                          </div>
                      </div>
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Ship to </div>
               
                      </div>
                  </main>
                 </div>
           
        
        </div>

        <div style="display:none">
               <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbx_glid" runat="server"></asp:TextBox>

        </div>
        <div class="container p-5">
               <a href="#" class="btn btn-primary" onclick="window.history.go(-1)">Back</a>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

            <asp:Button ID="btn_submit" runat="server"  class="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" />
            

        </div>

    </form>
          <script type="text/javascript">
          
              $(function () {
                  $('#tbx_inputdate').attr("readOnly", "true");
                  $('#tbx_inputdate').datepicker({
                      autoclose: true,
                      format: "dd-mm-yyyy",
                      todayHighlight: true
                  });
                
                $("#loadingdv").css("display", "none");
              });

              (function () {
                  'use strict'

                  // Fetch all the forms we want to apply custom Bootstrap validation styles to
                  var forms = document.querySelectorAll('.needs-validation')

                  // Loop over them and prevent submission
                  Array.prototype.slice.call(forms)
                      .forEach(function (form) {
                          form.addEventListener('submit', function (event) {
                              if (!form.checkValidity()) {
                                  event.preventDefault()
                                  event.stopPropagation()
                              }

                              form.classList.add('was-validated')
                          }, false)
                      })
              })();
         
          </script>
 
</body>
</html>
