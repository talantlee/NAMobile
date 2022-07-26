﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TorderAEdit.aspx.cs" Inherits="NAMobile.TorderAEdit" %>

<%@ Register Src="~/navTop.ascx" TagPrefix="uc1" TagName="navTop" %>
<%@ Register Src="~/OrderSteps.ascx" TagPrefix="uc1" TagName="OrderSteps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-au" >
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
    <script src="js/TOrderAEdit.js?ver=<%=ScriptVersion%>"></script>
</head>
<body>
    <form id="form1" runat="server"  class="needs-validation" novalidate>
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid">
                <div class="row">
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                      <uc1:OrderSteps runat="server" id="OrderSteps" Titles="Order Details" CurrentStep="1"    />

                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;"><asp:Label ID="lbl_producttype" ForeColor="Blue" runat="server"></asp:Label></div>
                     <div class="rowpt">
                   
                      <div class="row row-cols-2 row-cols-sm-2 g-3">
                            <div class="col">
                                  <div class="row row-cols-1 row-cols-sm-2">
                                       <div class="col col-sm-4" >
                                 <label for="tbx_inputdate" class="form-label fonttitle">Input Date:<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-8">
                                        <asp:TextBox ID="tbx_inputdate" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                       </div>
                                    </div>
          
                               </div>
                               <div class="col">
                                  <div class="row row-cols-1 row-cols-sm-2">
                                      <div class="col col-sm-4">
                                             <label for="tbx_po" class="form-label fonttitle">Job/Order No:<font color="red">*</font></label>
                                      </div>
                                      <div class="col col-sm-8">
                                            <asp:TextBox ID="tbx_po" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                      </div>
                                  </div>
          
                               </div>
                          </div>

                    <div class="row row-cols-1 row-cols-sm-3">
                            <div class="col col-sm-5">
                                <div class="row row-cols-1 row-cols-sm-2 pt-2">
                                    <div class="col col-sm-4" >
                                 <label for="tbx_txtcustnam" class="form-label fonttitle">Customer Name:<font color="red">*</font></label>
                                            </div>
                                  <div class="col col-sm-8">
                                 <asp:TextBox ID="tbx_txtcustnam" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                        </div>
                                    </div>
          
                               </div>
                           <div class="col col-sm-3">
                                <div class="row row-cols-1 row-cols-sm-2  pt-2">
                                    <div class="col col-sm-4" >
                                 <label for="drp_shipvia" class="form-label fonttitle">Ship Via:<font color="red">*</font></label>
                                            </div>
                                  <div class="col col-sm-8">
                                  <asp:DropDownList ID="drp_shipvia"  runat="server" class="form-select" required>
                                           <asp:ListItem Value="ship">Sea freight</asp:ListItem>
                                             <asp:ListItem Value="air">Airfreight</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
          
                               </div>
                           <div class="col col-sm-4" id="dvContainerPort">
                                <div class="row row-cols-1 row-cols-sm-2 pt-2">
                                    <div class="col col-sm-4" >
                                 <label for="drp_ArrivedPort" class="form-label fonttitle">Container Port:<font color="red">*</font></label>
                                            </div>
                                  <div class="col col-sm-8">
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
                    
                    <div class="row row-cols-1 row-cols-sm-2">
                        <!--Bill to -->
                        <div class="col">
                            <div class="row"  style="padding-top:1.5rem;">
                                <div class="col col-2">
                                     <label for="iptaccountname" class="form-label fonttitle" >Bill to</label>
                                </div>
                                <div class="col">
                                    <div class="row">
                                           <%if (Session["Rights"].ToString() == "*" || Session["Rights"].ToString() == "M") {  %>
                                        <div class="col col-4 text-end fonttitle" style="font-weight:600" >Dealer Code:</div>
                                        
                                        <div class="col">
                                            <input class="form-control" maxlength="20" name="iptaccountname"  value="" required />
                                        

                                        </div>

                                    
                                        <div class="col col-4">
                                            <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#selectaccountname">Import</a>
                                        </div>
                                        <%} else if(UserDealerList.Length>0){  %>
                                         <div class="col col-3 text-end fonttitle" style="font-weight:600" >Dealer Code:</div>
                                        
                                        <div class="col">
                                            <%=UserDealerList%>
                                        </div>

                                        <%} else {  %>
                                           <div class="col col-3 text-end fonttitle" style="font-weight:600" >Dealer Code:</div>
                                        
                                        <div class="col">
                                            <input class="form-control" maxlength="20" name="iptaccountname"  value=""  readonly />
                                        </div>

                                        <%} %>
                                    </div>
                                   
                                </div>
                            </div>
                              <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Company</label>
                                </div>
                                <div class="col">
                                    <asp:Label CssClass="form-label" ID="lbldealername" runat="server"></asp:Label>
                                     
                                </div>
                            </div>
                            <div class="row pt-1">
                                  <div class="col col-3">
                                        
                                     <label  class="form-label" >Contact</label>
                                </div>
                                <div class="col">
                                     <asp:Label CssClass="form-label" ID="lbl_contacter" runat="server"></asp:Label>
                                </div>
                            </div>
                              <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Street</label>
                                </div>
                                <div class="col">
                                     <asp:Label CssClass="form-label" ID="lbl_street" runat="server"></asp:Label>
                                </div>
                            </div>

                                 <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Post code</label>
                                </div>
                                <div class="col">
                                      <asp:Label CssClass="form-label" ID="lbl_zipcode" runat="server"></asp:Label>
                                </div>
                            </div>
                          <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >City</label>
                                </div>
                                <div class="col">
                                      <asp:Label CssClass="form-label" ID="lbl_city" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >State/Country</label>
                                </div>
                                <div class="col">
                                    <asp:Label CssClass="form-label" ID="lbl_state" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Phone</label>
                                </div>
                                <div class="col">
                                    <asp:Label CssClass="form-label" ID="lbl_tel" runat="server"></asp:Label>
                                </div>
                            </div>
                                <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Email</label>
                                </div>
                                <div class="col">
                                     <asp:Label CssClass="form-label" ID="lbl_email" runat="server"></asp:Label>
                                </div>
                            </div>
                                <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Website</label>
                                </div>
                                <div class="col">
                                     <asp:Label CssClass="form-label" ID="lbl_website" runat="server"></asp:Label>
                                </div>
                            </div>

                        </div>
                        <!--Ship to -->
                         <div class="col">
                                    <div class="row"  style="padding-top:1.5rem;">
                                <div class="col col-3">
                                     <label class="form-label" style="font-weight:bold">Ship to</label>
                                </div>
                                <div class="col">
                                  <select class="form-select" id="selshipto" onchange="chgShipToAddress()"  required></select>
                                   
                                </div>
                                       
                            </div>
                               <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Contact</label>
                                </div>
                                <div class="col">
                                    <div class="row">
                                        <div class="col col-2">First name </div>
                                          <div class="col col-4"> <asp:TextBox ID="tbx_shiptocontacter" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox></div>
                                          <div class="col col-2">Last name </div>
                                             <div class="col col-4"> <asp:TextBox ID="tbx_shiptocontacter1" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox></div>
                                     
                                    </div>
                                  
                                      
                                </div>
                            </div>
                              <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Street</label>
                                </div>
                                <div class="col">
                                      <asp:TextBox ID="tbx_shipstostreet" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                </div>
                            </div>

                                 <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Post code</label>
                                </div>
                                <div class="col">
                                       <asp:TextBox ID="tbx_shiptozip" runat="server" CssClass="form-control" MaxLength="20"  required></asp:TextBox>
                                </div>
                            </div>

                                        <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >City</label>
                                </div>
                                <div class="col">
                                      <asp:TextBox ID="tbx_shiptocity" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                </div>
                            </div>

                            <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >State/Country</label>
                                </div>
                                <div class="col">
                                      
                                    <asp:DropDownList ID="drp_shiptostate" runat="server" CssClass="form-select"    required>
                                        <asp:ListItem Value=""></asp:ListItem>
                                        <asp:ListItem Value="New South Wales">New South Wales</asp:ListItem>
                                        <asp:ListItem Value="Northern Territory">Northern Territory</asp:ListItem>
                                         <asp:ListItem Value="Queensland">Queensland</asp:ListItem>
                                         <asp:ListItem Value="South Australia">South Australia</asp:ListItem>
                                         <asp:ListItem Value="Tasmania">Tasmania</asp:ListItem>
                                         <asp:ListItem Value="Victoria">Victoria</asp:ListItem>
                                         <asp:ListItem Value="Western Australia">Western Australia</asp:ListItem>
                                         <asp:ListItem Value="ACT">ACT</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Phone</label>
                                </div>
                                <div class="col">
                                    <asp:TextBox ID="tbx_shiptotel" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                </div>
                            </div>
                                <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Email</label>
                                </div>
                                <div class="col">
                                     <asp:TextBox ID="tbx_shiptoemail" runat="server" CssClass="form-control" MaxLength="50"  required></asp:TextBox>
                                </div>
                            </div>
                                <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Website</label>
                                </div>
                                <div class="col">
                                    <asp:TextBox ID="tbx_shiptowebsite" runat="server" CssClass="form-control" MaxLength="50"  ></asp:TextBox>
                                </div>
                            </div>

                                  <div class="row pt-1">
                                  <div class="col col-3">
                                     <label  class="form-label" >Ship Instruction</label>
                                </div>
                                <div class="col">
                                    <asp:TextBox ID="tbx_shiptoremark" runat="server" CssClass="form-control" MaxLength="300"  ></asp:TextBox>
                                </div>
                            </div>
                            
                         </div>
                    </div>
                    
                    <div class="pt-2 row row-cols-1">
                        <div class="col">
                                     <label for="txt_remark" class="form-label" style="font-weight:bold">Instruction</label>
                         </div>
                        <div class="col">
                            <asp:TextBox ID="txt_remark" TextMode="MultiLine" runat="server" Rows="4" MaxLength="500" Width="98%"></asp:TextBox>
                        </div>
                        
                    </div>

                         </div>
                      
                  </main>

             </div>
        </div>

        <div style="display:none">
               <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbx_pgmcode" runat="server" ReadOnly="true"></asp:TextBox>
            <asp:TextBox ID="tbx_glid" runat="server" ReadOnly="true"></asp:TextBox>

               <asp:TextBox ID="tbx_orderuserid" runat="server" ReadOnly="true"></asp:TextBox>
                <asp:TextBox  ID="tbx_accountname" runat="server" ></asp:TextBox>
              <asp:TextBox ID="tbx_custid" runat="server" ></asp:TextBox>
            <asp:TextBox ID="tbx_shipto" runat="server" ></asp:TextBox>


            <select id="selallshipto"></select>
            <asp:DropDownList ID="drpshipto" runat="server" CausesValidation="false" ></asp:DropDownList>
        </div>
        <div class="container pt-3 ps-5 pb-5">
            <input type="button" class="btn-na " value="< Back" onclick="window.history.go(-1)" />
             
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

            <asp:Button ID="btn_submit" runat="server"  class=" btn-na " Text="Continue >" OnClick="btn_submit_Click" />
            

        </div>
         <%if (Session["Rights"].ToString() == "*" || Session["Rights"].ToString() == "M")
             {  %>
        <div class="modal fade" id="selectaccountname" tabindex="-1"  style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
    <div class="modal-content">
   
      <div class="modal-body">
           <div class="row">
               <div class="col col-3">Dealer Code:</div>
               <div class="col col-6"><input type="text" class="form-control" id="cust_dealerid" /></div>
           </div>
            <div class="row pt-1">
               <div class="col col-3">Dealer Name:</div>
               <div class="col col-6"><input type="text" class="form-control" id="cust_dealername" /></div>
           </div>   
            <div class="row">
                <div class="col col-3">     <a href="#" class="btn btn-primary" onclick="getData(1)" >Search</a></div>
            </div>
               <div class="table-responsive pt-2">
                          <table class="table table-striped table-sm" id="table_list">
                              <thead>
                                  <tr>
                                      <th scope="col">Dealer Code</th>
                                      <th scope="col">Dealer Name</th>
                                      <th scope="col">Contacter</th>
                                      <th scope="col">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                
                              </tbody>
                          </table>
               </div>
            <div class="text-bg-danger" id="dv_norecord" style="display:none">No Result.</div>
                     
      </div>
     
    </div>
  </div>
</div>
        <%} %>
    </form>
          <script type="text/javascript">
        
              document.getElementById("drp_shiptostate").ariaDisabled = true;
              (function () {
                  'use strict'
                 
                  // Fetch all the forms we want to apply custom Bootstrap validation styles to
                  var forms = document.querySelectorAll('.needs-validation')

                 
                  // Loop over them and prevent submission
                  document.getElementById("form1").addEventListener('submit', function (event) {
                      try {
                       
                          if (!document.getElementById("form1").checkValidity()) {

                              event.preventDefault();
                              event.stopPropagation();
                          }
                          if (!checkReadonlyRequire()) {
                              event.preventDefault();
                              event.stopPropagation();
                          } else {
                             // document.getElementById("drp_shiptostate").removeAttribute("disabled");
                          }
                      } catch (ex) {
                          console.error(ex);
                          event.preventDefault();
                          event.stopPropagation();
                      }
                      document.getElementById("tbx_shipto").value = document.getElementById("selshipto").value;
                      
                      document.getElementById("form1").classList.add('was-validated');
                  }, false);
                  /*
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
                      */
              })();
      
          </script>
 
</body>
</html>
