<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrderSteps.ascx.cs" Inherits="NAMobile.OrderSteps" %>
       <div class="pt-3">
                            <div style="display: flex;white-space: nowrap;">
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head <%if (CurrentStep <= 1) { Response.Write("is-process"); } else { Response.Write("is-success"); }%>" id="navStep1"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text"  >1</div></div><div class="el-step__main"><div class="el-step__description"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head <%if (CurrentStep < 2) { Response.Write("is-wait"); } else if (CurrentStep == 2) { Response.Write("is-process"); } else { Response.Write("is-success"); }%>" id="navStep2"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >2</div></div><div class="el-step__main"><div class="el-step__description"></div></div></div> 
                                    <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head <%if (CurrentStep < 3) { Response.Write("is-wait"); } else if (CurrentStep == 3) { Response.Write("is-process"); } else { Response.Write("is-success"); }%>" id="navStep3"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >3</div></div><div class="el-step__main"><div class="el-step__description"></div></div></div> 
         
                            <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head <%if (CurrentStep < 4) { Response.Write("is-wait"); } else if (CurrentStep == 4) { Response.Write("is-process"); } else { Response.Write("is-success"); }%>" id="navStep4"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text" >4</div></div><div class="el-step__main"><div class="el-step__description"></div></div></div> 
                                <div class="el-step is-horizontal is-flex" style="flex-basis: 25%; max-width:25%;"><div class="el-step__head <%if (CurrentStep < 5) { Response.Write("is-wait"); } else if (CurrentStep == 5) { Response.Write("is-process"); } else { Response.Write("is-success"); }%>" id="navStep5"><div class="el-step__line"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text"><!----><div class="el-step__icon-inner">5</div></div></div><div class="el-step__main"><div class="el-step__description"></div></div></div>
                            </div>
                            <%if (!string.IsNullOrEmpty(Titles))
                                { %>
                            <div class="pt-2">

                            <div style="background-color:#fddd89; height:3rem; vertical-align:central; line-height:3rem; font-weight:bold; font-size:1rem;" class="text-center rounded">
                                <%=Titles %>
                              
                            </div>
                            </div>
                            <%} %>

       </div>
                    