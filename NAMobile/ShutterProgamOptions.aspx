<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShutterProgamOptions.aspx.cs" Inherits="NAMobile.ShutterProgamOptions" %>
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
    <link href="css/switchs.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"  class="needs-validation" novalidate>
        <uc1:navTop runat="server" id="navTop" />

        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                   
                   <!-- Step -2" -->
                  <div class="pt-3">
                            <div style="display: flex;white-space: nowrap;">
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text" style="cursor:pointer" onclick="goStep(1)" >1</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-process"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text">2</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                    <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-wait"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text">3</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <!-- div class="el-step is-horizontal" style="flex-basis: 20%; margin-right: 0px;"><div class="el-step__head is-wait"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text">4</div></div><div class="el-step__main"><div class="el-step__title is-process">Step 6</div><div class="el-step__description is-success"></div></div></!--> 
                            <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-wait"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text">4</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal is-flex" style="flex-basis: 25%; max-width:25%;"><div class="el-step__head is-wait"><div class="el-step__line"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text"><!----><div class="el-step__icon-inner">5</div></div></div><div class="el-step__main"><div class="el-step__description is-process"></div></div></div>
                            </div>
                            <div class="pt-2">
                            <div style="background-color:#fddd89; height:3rem; vertical-align:central; line-height:3rem; font-weight:bold; font-size:1rem;" class="text-center rounded">
                               Program Options
                            </div>
                            </div>

                        </div>

                   <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;"><asp:Label ID="lbl_producttype" ForeColor="Blue" runat="server"></asp:Label></div>
                    
                    <div  class="rowpt">
                   
                      <div class="row row-cols-1 row-cols-sm-2">
                           
                                       <div class="col col-sm-1" >
                                 <label for="drp_shapetype" class="form-label fonttitle">Category<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-3">
                                     <asp:DropDownList ID="drp_shapetype" class="form-select" runat="server" required>
                                        <asp:ListItem Value="Regular">Regular</asp:ListItem>
                                     </asp:DropDownList>
                                    </div>
                        </div>
                              
                     </div>

                    <div class="row row-cols-1 row-cols-sm-2">
                           <div class="col">
                                <div class="row row-cols-1 row-cols-sm-2 pt-2">
                                    <div class="col col-sm-4" >
                                 <label for="drp_roomsel" class="form-label fonttitle">Room</label>
                                            </div>
                                  <div class="col col-sm-8">
                                    <div class="row">
                                        <div class="col">
                                              <asp:DropDownList ID="drp_roomsel" runat="server" onchange="chgRoom()"  class="form-select" >
                                           
                                              <asp:ListItem value="Other" style="background-color:#e5e5e5;" >Other</asp:ListItem>
                                              <asp:ListItem value="Attic"	>Attic</asp:ListItem>
                                              <asp:ListItem value="Bathroom">Bathroom</asp:ListItem>
                                              <asp:ListItem value="Bedroom">Bedroom</asp:ListItem>
                                              <asp:ListItem value="B/fast room">B/fast room</asp:ListItem>
                                              <asp:ListItem value="Dining room">Dining room</asp:ListItem>
                                              <asp:ListItem value="Ensuite">Ensuite</asp:ListItem>
                                              <asp:ListItem value="Family room">Family room</asp:ListItem>
                                              <asp:ListItem value="Games room">Games room</asp:ListItem>
                                              <asp:ListItem value="Guest room">Guest room</asp:ListItem>
                                              <asp:ListItem value="Kitchen">Kitchen</asp:ListItem>
                                              <asp:ListItem value="Laundry">Laundry</asp:ListItem>
                                              <asp:ListItem value="Living room">Living room</asp:ListItem>
                                              <asp:ListItem value="Lounge room">Lounge room</asp:ListItem>
                                              <asp:ListItem value="Master bedroom">Master bedroom</asp:ListItem>
                                              <asp:ListItem value="Main">Main</asp:ListItem>
                                              <asp:ListItem value="Office">Office</asp:ListItem>
                                              <asp:ListItem value="Rumpus">Rumpus</asp:ListItem>
                                              <asp:ListItem value="Stairs">Stairs</asp:ListItem>
                                              <asp:ListItem value="Study"	>Study</asp:ListItem>
                                              <asp:ListItem value="Toilet">Toilet</asp:ListItem>
                                                  </asp:DropDownList>
                                         
                                        </div>
                                        <div class="col d-none" id="dv_otherroom">
                                            <asp:TextBox ID="tbx_room" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                    </div>
                                   
                                    </div>
          
                               </div>
                           <div class="col">
                                <div class="row row-cols-1 row-cols-sm-2 pt-2">
                                    <div class="col col-sm-4" >
                                 <label for="drp_matchtype" class="form-label fonttitle">Match Item#</label>
                                            </div>
                                  <div class="col col-sm-8">
                                      <div class="row">
                                          <div class="col col-4">
                                              <input type="number" min="1" max="100" onblur="checkMatchItem()" step="1" id="tbx_matchitemno" class="form-control" /></div>
                                          <div class="col">
                                                 <asp:DropDownList ID="drp_matchtype" runat="server" class="form-select" >
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Match Top Rail">Match Top Rail</asp:ListItem>
                                                <asp:ListItem Value="Match Bottom Rail">Match Bottom Rail</asp:ListItem>
                                                 </asp:DropDownList>

                                          </div>
                                      </div>
                                    
                                      </div>
                                 
                                </div>
          
                          </div>
                       

                     </div>
                    
                    <div class="row rowpt">
                              <div class="col col-sm-2" >
                                 <label for="tbx_inputdate" class="form-label fonttitle">Motorized Shutters<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-4">
                                           <div class="switch">
			                                <input class="switch-checkbox" id="chxismotorized" type="checkbox" />
			                                <label class="switch-label" for="chxismotorized">
				                                <span class="switch-inner" data-on="YES" data-off="NO"></span>
				                                <span class="switch-switch"></span>
			                                </label>
		                                    </div>
                                  </div>
                    </div>


                  </main>

             </div>
        </div>

        <div style="display:none">
               <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbx_glid" runat="server" ReadOnly="true"></asp:TextBox>

        </div>
        <div class="container p-5">
            <input type="button" class="btn-na " value="< Back" onclick="window.history.go(-1)" />
             
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          
           <asp:Button ID="btncontinue" runat="server" CssClass="btn-na" Text="Continue" OnClick="btncontinue_Click" />

        </div>

    </form>
          <script type="text/javascript">
              
              $(function () {
              
               
                  
                 
                  chgRoom();
                  checkMatchItem();
                $("#loadingdv").css("display", "none");
              });
              function goStep(st) {
                  if (st == 1) {
                      window.location.href = "TorderAEdit.aspx";
                  }
              }
              function chgRoom() {
                  if ($("#drp_roomsel").val() != "Other") {
                      $("#dv_otherroom").addClass("d-none");
                  } else {
                      $("#dv_otherroom").removeClass("d-none");
                  }
              }
              function checkMatchItem() {
                  if (document.getElementById("tbx_matchitemno").value == "" || document.getElementById("tbx_matchitemno").value == "0") {
                      document.getElementById("drp_matchtype").value = "";
                      document.getElementById("drp_matchtype").disabled = true;
                  }
                  else {
                      document.getElementById("drp_matchtype").disabled = false;
                  }
                  return true;

              }

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
