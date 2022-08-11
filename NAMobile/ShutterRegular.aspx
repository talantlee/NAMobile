<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShutterRegular.aspx.cs" Inherits="NAMobile.ShutterRegular" %>
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
    <link href="css/radiogroups.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"  class="needs-validation" novalidate>
        <uc1:navTop runat="server" id="navTop" />

        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                   
                 
                  <div class="pt-3">
                            <div style="display: flex;white-space: nowrap;">
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep1"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text"  >1</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep2"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >2</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                    <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-process" id="navStep3"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >3</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
         
                            <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-wait" id="navStep4"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text" >4</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal is-flex" style="flex-basis: 25%; max-width:25%;"><div class="el-step__head is-wait" id="navStep5"><div class="el-step__line"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text"><!----><div class="el-step__icon-inner">5</div></div></div><div class="el-step__main"><div class="el-step__description is-process"></div></div></div>
                            </div>
                            <div class="pt-2">
                            <div style="background-color:#fddd89; height:3rem; vertical-align:central; line-height:3rem; font-weight:bold; font-size:1rem;" class="text-center rounded">
                              Product Details ①
                            </div>
                            </div>

                        </div>
                    <!-- step 3 -->
                    <div id="dvStep3" class="ps-1">

                    <div class="d-flex justify-content-between" style="border-bottom:solid 1px #ccc;">
                    <div class="pt-3" >
                        <div class="row row-cols-1 row-cols-sm-2">
                            <div class="col col-sm-4" style="font-weight:600; font-size:1.13rem;">Shutters</div>
                            <div class="col col-sm-8 align-self-end">Woodlore > Regular</div>

                        </div>
                       
                       </div>
                    <div class="pt-3">
                        <div class="rounded-3 na-style-font ps-1 pe-1"  >Item No 1</div>
                     

                    </div>
                  </div>

                    <div  class="rowpt">
                   
                      <div class="row row-cols-1 row-cols-sm-2">
                           
                                       <div class="col col-sm-2" >
                                 <label for="drp_OrderSizeStyle" class="form-label fonttitle">Installation Method<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-4">
                                     <asp:DropDownList ID="drp_OrderSizeStyle" class="form-select" runat="server" required>
                                        <asp:ListItem Value="Regular">Panel With Frame</asp:ListItem>
                                     </asp:DropDownList>
                                    </div>
                        </div>
                              
                     </div>

                 
                    <!--end step 3 -->
                </div>


                    <!-- step 4 -->

                    <div id="dvStep4" class="ps-1 d-none" ">
                          <div class="d-flex justify-content-between" style="border-bottom:solid 1px #ccc;">
                    <div class="pt-3" >
                        <div class="row row-cols-1 row-cols-sm-2">
                            <div class="col col-sm-4" style="font-weight:600; font-size:1.13rem;">Shutters</div>
                            <div class="col col-sm-8 align-self-end">Woodlore > Regular</div>

                        </div>
                       
                       </div>
                    <div class="pt-3">
                        <div class="rounded-3 na-style-font ps-1 pe-1"  >Item No 1</div>
                     

                    </div>
                  </div>

                    <div  class="rowpt">
                   
                      <div class="row row-cols-1 row-cols-sm-2">
                           
                                       <div class="col col-sm-2" >
                                 <label for="drp_OrderSizeStyle" class="form-label fonttitle">Inside Mount or Outside Mount<font color="red">*</font></label>
                                        </div>
                                  <div class="col col-sm-4">
                                  
                                 
                                          <div class="el-radio-group" role="radiogroup" aria-label="radio-group" id="el-id-5195-113">
                                              <label class="el-radio-button el-radio-button--large"><input class="el-radio-button__original-radio" type="radio" name="el-id-5195-101" value="I"><span class="el-radio-button__inner">IN</span></label>
                                              <label class="el-radio-button is-active el-radio-button--large"><input class="el-radio-button__original-radio" type="radio" name="el-id-5195-101" value="O" checked><span class="el-radio-button__inner">OUT</span></label>
                                          </div>



                                  </div>
                        </div>
                              
                     </div>


                    </div>
                    <!--end step 4 -->

                  </main>

             </div>
        </div>

        <div style="display:none">
               <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
            <asp:TextBox ID="tbx_glid" runat="server" ReadOnly="true"></asp:TextBox>

        </div>
        <div class="container p-5">
            <input type="button" class="btn-na " value="< Back" onclick="backStep()" />
             
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <input type="button" class="btn-na " value="Continue >" onclick="goNextStep()" />
           
            <input type="hidden" value="3" id="iptstep" />

        </div>

    </form>
          <script type="text/javascript">
              
              $(function () {
                  $('#tbx_inputdate').attr("readOnly", "true");
                  $('#tbx_accountname').attr("readOnly", "true");
                  
                  $('#tbx_inputdate').datepicker({
                      autoclose: true,
                      format: "dd-mm-yyyy",
                      todayHighlight: true
                  });
                
                $("#loadingdv").css("display", "none");
              });
              function goStep(st) {
                  $("#iptstep").val(st);
                  if (st == 1) {
                      window.location.href = "TorderAEdit.aspx";
                  } else if (st == 2) {
                      window.location.href = "ShutterProgamOptions.aspx";
                  }
                  else if (st == 4) {
                      $("#dvStep3").addClass("d-none");
                      $("#dvStep4").removeClass("d-none");
                      $("#navStep3").addClass("is-success");
                      $("#navStep4").addClass("is-process");
                      //$("#navStep4").removeClass("is-process");
                      // $("#navStep4").addClass("is-wait");
                  } else if (st == 3) {
                      $("#dvStep4").addClass("d-none");
                      $("#dvStep3").removeClass("d-none");
                      $("#navStep3").removeClass("is-success");
                      $("#navStep3").addClass("is-process");
                      $("#navStep4").removeClass("is-process");
                      $("#navStep4").addClass("is-wait");
                  } else if (st == 5) {
                      window.location.href = "TOrderInfo.aspx";
                  }
              }

              function goNextStep() {
                  if ($("#iptstep").val() == "4") {
                      goStep(5);
                  } else {
                      goStep(4);
                  }
              }
              function backStep() {
                  if ($("#iptstep").val() == "4") {
                      goStep(3);
                  } else {
                      goStep(2);
                  }
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