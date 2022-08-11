﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TOrderInfo.aspx.cs" Inherits="NAMobile.TOrderInfo" %>

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
       <link href="css/elsteps.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                        <div class="pt-3">
                            <div style="display: flex;white-space: nowrap;">
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep1"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text"  >1</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep2"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >2</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                    <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep3"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text" >3</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
         
                            <div class="el-step is-horizontal" style="flex-basis: 25%; margin-right: 0px;"><div class="el-step__head is-success" id="navStep4"><div class="el-step__line" style="margin-right: 0px;"><i class="el-step__line-inner" ></i></div><div class="el-step__icon is-text" >4</div></div><div class="el-step__main"><div class="el-step__description is-success"></div></div></div> 
                                <div class="el-step is-horizontal is-flex" style="flex-basis: 25%; max-width:25%;"><div class="el-step__head is-success" id="navStep5"><div class="el-step__line"><i class="el-step__line-inner"></i></div><div class="el-step__icon is-text"><!----><div class="el-step__icon-inner">5</div></div></div><div class="el-step__main"><div class="el-step__description is-process"></div></div></div>
                            </div>
                            <div class="pt-2">
                            <div style="background-color:#fddd89; height:3rem; vertical-align:central; line-height:3rem; font-weight:bold; font-size:1rem;" class="text-center rounded">
                              Order Details
                            </div>
                            </div>

                        </div>
                    

                    <div class="d-flex justify-content-between" style="border-bottom:solid 1px #ccc;">
                    <div class="pt-3" >
                        <div class="row">
                            <div class="col" style="font-weight:600; font-size:1.1rem;">Order No</div>
                          

                        </div>
                       
                       </div>
                    <div class="pt-3">
                        <div class="rounded-pill ps-2 pe-2" style="background-color:#585858;color:white"  >
                            <span data-feather="printer" ></span><span class="p-1" >Print</span>
                            </div>
                     

                    </div>
                  </div>

                    <div class="p-2">
                    <!-- header -->
                    <div class="row row-cols-1 row-cols-sm-2 rounded-3 pb-2 pt-1" style="background-color:#efefef">
                        <!-- customer -->
                        <div class="col">
                                <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Dealer Name</div>
                                     <div class="col col-8">Malibu Blind</div>
                                </div>
                              <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Customer Name</div>
                                     <div class="col col-8">123</div>
                                </div>
                            <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Input Date</div>
                                     <div class="col col-8">Jul-27-2022</div>
                                </div>
                            <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Job/Order No</div>
                                    <div class="col col-8">0123456789</div>
                                </div>
                        </div>
                          <!-- shipto-->
                         <div class="col">
                              <div class="row pt-1 ps-2 pe-2">
                                    <div class="col text-center border fonttitle border-dark">Ship To</div>
                                </div>
                       
                         <div class="row pt-1">
                                    <div class="col col-4 fonttitle">State/Country</div>
                                    <div class="col col-8">Roxburgh Park</div>
                                </div>
                         <div class="row pt-1">
                                    <div class="col col-4 fonttitle">City</div>
                                    <div class="col col-8">Victoria</div>
                                </div>
                        
                                  <div class="row pt-1 ps-2 pe-2">
                                    <div class="col text-center border fonttitle border-dark bg-white" style="cursor:pointer" >
                                           <span data-feather="edit-2"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                    </div>
                                </div>

                          </div>
                    </div>
                   <!-- end header -->
                  </div>
              
                    <!-- copy order -->
                      <div class="p-2">
                          <div class="rounded-2 row" style="color:white;background-color:var(--normanau-color)">
                              <div class="col text-center p-2"  data-bs-toggle="collapse" data-bs-target="#dvcopyordercollapse" aria-expanded="false" aria-controls="dvcopyordercollapse">Copy Previous Order <span data-feather="plus" class="align-text-bottom" id="spcollapsecopyinfo"  onclick="collapseCopyInfo(this)"></span></div>
                          </div>

                          <div class="row row-cols-1 row-cols-sm-3 collapse" id="dvcopyordercollapse" style="background-color:#efefef">
                              <div class="col pt-1 pb-1 ps-3">
                                  WO# <input type="text"  /> <input type="button"  value="View" />
                              </div>
                                <div class="col pt-1 pb-1 ps-3">
                                  Copy Item From <input type="text"  style="width:3.8rem;" /> to  <input type="text" style="width:3.8rem;"  />
                              </div>
                               <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle border-dark bg-white rounded-1" >
                                    <span data-feather="copy"  class="align-text-bottom" ></span><span class="p-1" >Copy</span>
                                 </div>
                              </div>
                          </div>

                      </div>
                    <div class="bg-white row"><div class="col">&nbsp;</div></div>
                    <!-- order detail info for handset-->
                      <div class="p-2 d-block d-sm-none bg-light rounded-3"  >

                             
                          <div class="eacherow mb-2" >
                         <div class="row row-cols-2">
                              <div class="col">No</div>
                              <div class="col fonttitle text-end">1</div>
                              <div class="col">Item</div>
                               <div class="col fonttitle text-end">Shutter</div>
                                 <div class="col">Room</div>
                               <div class="col fonttitle text-end">Bathroom</div>

                               <div class="col">Material</div>
                               <div class="col fonttitle text-end">Woodlore</div>

                                <div class="col">Range Type</div>
                               <div class="col fonttitle text-end">Beaded</div>

                                <div class="col">Item Type</div>
                               <div class="col fonttitle text-end">L Frame</div>

                                   <div class="col">Gross Open Width/Height</div>
                               <div class="col fonttitle text-end">650/1000</div>
                                 <div class="col">Inside Mount or Outside Mount</div>
                               <div class="col fonttitle text-end">L Frame</div>

                                  <div class="col">Number of Window Openings</div>
                               <div class="col fonttitle text-end">1</div>

                               <div class="col">Blade Size</div>
                               <div class="col fonttitle text-end">47mm Elliptical Louvre</div>

                               <div class="col">Colour</div>
                               <div class="col fonttitle text-end">Pure White</div>

                             <div class="col">Hinge Colour</div>
                               <div class="col fonttitle text-end">-</div>
                             <div class="col">Mid Rail Location</div>
                              <div class="col fonttitle text-end">-</div>

                              <div class="col">Layout Code</div>
                              <div class="col fonttitle text-end">F</div>
                         </div>
                          <!-- toobar-->
                           <div class="row p-1">
                                  <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>

                                  </div>
                                     <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="copy"  class="align-text-bottom" ></span><span class="p-1" >Copy</span>
                                 </div>
                              </div>

                                  </div>
                                     <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>

                                  </div>
                              </div>
                          <!-- parts -->
                          <div class="row"><div class="col"><span data-feather="minus" class="align-text-bottom"  ></span>Part</div></div>
                        <div class="bg-white p-3 rounded-2 m-2" >
                            <div class="row row-cols-2">
                                <div class="col ">No</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end">Hinge</div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end">100</div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end">Woodlore</div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end">60mm Self-mortise hinge</div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end">Silk White</div>
                                
                                  <div class="col">Item Total Charge</div>
                                <div class="col fonttitle text-end">A$ 332.10</div>

                                
                            </div>
                            <div class="row border-bottom border-dark pb-2 pt-3 row-cols-2">
                                  <div class="col col-4">Action</div>
                                   <div class="col col-8">
                                       <div class="row-cols-2 row">
                                        <div class="text-center col"  >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>
                                     <div class="text-center col" >
                                   <div class="border fonttitle bg-white rounded-1 p-1 " >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>
                      </div>

                                </div>
                            </div>

                             <div class="row row-cols-2 pt-2">
                                <div class="col">No</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end">Hinge</div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end">100</div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end">Woodlore</div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end">60mm Self-mortise hinge</div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end">Silk White</div>
                                
                                  <div class="col">Item Total Charge</div>
                            
                            </div>

                             <div class="row border-bottom border-dark pb-2 pt-3 row-cols-2">
                                  <div class="col col-4">Action</div>
                                   <div class="col col-8">
                                       <div class="row-cols-2 row">
                                        <div class="text-center col"  >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>
                                     <div class="text-center col" >
                                   <div class="border fonttitle bg-white rounded-1 p-1 " >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>
                         </div>

                                </div>
                            </div>

                            <!-- sub part total -->
                            <div class="row row-cols-2 pt-2">
                                <div class="col">Parts Charge Total</div>
                                  <div class="col text-end fonttitle">A$ 372.60</div>
                            </div>

                        </div>
                          <!--Item total --->
                        <div class="row row-cols-2 p-1">
                                <div class="col">m2</div>
                                  <div class="col text-end fonttitle">0.65</div>
                                <div class="col">Item Total Charge</div>
                                  <div class="col text-end fonttitle" style="color:red; font-size:1.1rem;">A$ 498.33</div>
                            </div>
                        </div>

                          <div class="bg-white row"><div class="col">&nbsp;</div></div>

                         
                           <div class="eacherow mb-2" >
                         <div class="row row-cols-2">
                              <div class="col">No</div>
                              <div class="col fonttitle text-end">1</div>
                              <div class="col">Item</div>
                               <div class="col fonttitle text-end">Shutter</div>
                                 <div class="col">Room</div>
                               <div class="col fonttitle text-end">Bathroom</div>

                               <div class="col">Material</div>
                               <div class="col fonttitle text-end">Woodlore</div>

                                <div class="col">Range Type</div>
                               <div class="col fonttitle text-end">Beaded</div>

                                <div class="col">Item Type</div>
                               <div class="col fonttitle text-end">L Frame</div>

                                   <div class="col">Gross Open Width/Height</div>
                               <div class="col fonttitle text-end">650/1000</div>
                                 <div class="col">Inside Mount or Outside Mount</div>
                               <div class="col fonttitle text-end">L Frame</div>

                                  <div class="col">Number of Window Openings</div>
                               <div class="col fonttitle text-end">1</div>

                               <div class="col">Blade Size</div>
                               <div class="col fonttitle text-end">47mm Elliptical Louvre</div>

                               <div class="col">Colour</div>
                               <div class="col fonttitle text-end">Pure White</div>

                             <div class="col">Hinge Colour</div>
                               <div class="col fonttitle text-end">-</div>
                             <div class="col">Mid Rail Location</div>
                              <div class="col fonttitle text-end">-</div>

                              <div class="col">Layout Code</div>
                              <div class="col fonttitle text-end">F</div>
                         </div>
                          <!-- toobar-->
                           <div class="row p-1">
                                  <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>

                                  </div>
                                     <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="copy"  class="align-text-bottom" ></span><span class="p-1" >Copy</span>
                                 </div>
                              </div>

                                  </div>
                                     <div class="col">
                                       <div class="col pt-1 pb-1 ps-3 pe-3 text-center justify-content-between" >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>

                                  </div>
                              </div>
                          <!-- parts -->
                          <div class="row"><div class="col"><span data-feather="minus" class="align-text-bottom"  ></span>Part</div></div>
                        <div class="bg-white p-3 rounded-2 m-2" >
                            <div class="row row-cols-2">
                                <div class="col ">No</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end">Hinge</div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end">100</div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end">Woodlore</div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end">60mm Self-mortise hinge</div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end">Silk White</div>
                                
                                  <div class="col">Item Total Charge</div>
                                <div class="col fonttitle text-end">A$ 332.10</div>

                                
                            </div>
                            <div class="row border-bottom border-dark pb-2 pt-3 row-cols-2">
                                  <div class="col col-4">Action</div>
                                   <div class="col col-8">
                                       <div class="row-cols-2 row">
                                        <div class="text-center col"  >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>
                                     <div class="text-center col" >
                                   <div class="border fonttitle bg-white rounded-1 p-1 " >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>
                      </div>

                                </div>
                            </div>

                             <div class="row row-cols-2 pt-2">
                                <div class="col">No</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end">Hinge</div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end">100</div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end">1</div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end">Woodlore</div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end">60mm Self-mortise hinge</div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end">Silk White</div>
                                
                                  <div class="col">Item Total Charge</div>
                            
                            </div>

                             <div class="row border-bottom border-dark pb-2 pt-3 row-cols-2">
                                  <div class="col col-4">Action</div>
                                   <div class="col col-8">
                                       <div class="row-cols-2 row">
                                        <div class="text-center col"  >
                                   <div class="border fonttitle bg-white rounded-1 p-1" >
                                    <span data-feather="delete"  class="align-text-bottom" ></span><span class="p-1" >Delete</span>
                                 </div>
                              </div>
                                     <div class="text-center col" >
                                   <div class="border fonttitle bg-white rounded-1 p-1 " >
                                    <span data-feather="edit"  class="align-text-bottom" ></span><span class="p-1" >Edit</span>
                                 </div>
                              </div>
                         </div>

                                </div>
                            </div>

                            <!-- sub part total -->
                            <div class="row row-cols-2 pt-2">
                                <div class="col">Parts Charge Total</div>
                                  <div class="col text-end fonttitle">A$ 372.60</div>
                            </div>

                        </div>
                          <!--Item total --->
                        <div class="row row-cols-2 p-1">
                                <div class="col">m2</div>
                                  <div class="col text-end fonttitle">0.65</div>
                                <div class="col">Item Total Charge</div>
                                  <div class="col text-end fonttitle" style="color:red; font-size:1.1rem;">A$ 498.33</div>
                            </div>
                        </div>

                      

                         <!--end  order detail info for handset-->

                          
                       <!-- tool bar -->
                      <div class="p-3">
                          <div class="row">
                              <div class="col text-center">
                                  <input type="button" class="btn-na "  data-bs-toggle="modal" data-bs-target="#selectshutterprogram" value="+ Add New Item" />
                             &nbsp;&nbsp;&nbsp;
                             <input type="button" class="btn-na" value="+ Add Part" />
                              </div>
                          </div>
                            
                      </div>

                      <!-- Order total -->
                    <div class="p-2">
                       <div class="row row-cols-2 p-1">
                                <div class="col">Total m2</div>
                                  <div class="col text-end fonttitle">1.25</div>
                                <div class="col">Order surcharge</div>
                                  <div class="col text-end fonttitle" >A$ 25</div>
                       </div>

                        <div  class="p-1 border-top border-dark" >
                        <div class="row row-cols-2 pt-3">
                             <div class="col">Total cost of job (excl GST)</div>
                               <div class="col text-end fonttitle" style="color:red; font-size:1.1rem;">A$ 648.72</div>
                        </div>
                     </div>

                    </div>   

                      <div class="p-3">
                             <div class="row pt-2">
                                 <div class="col col-2"></div>
                                  <div class="col col-4">
                                         <input type="button" class="btn btn-outline-secondary"  value="Delete Order" />

                                  </div>
                                   <div class="col col-4 text-end">
                                           <input type="button" class="btn btn-outline-secondary" value="Edit Order" />
                                       </div>
                                  <div class="col col-2"></div>
                            
                            </div>
                    
                             <div class="d-grid col-8 mx-auto pt-3">
                                <input type="button" class="btn-na " value=" Check out " />
                            </div>
                      </div>


                      </div>

                    


                       <!-- order detail info for pc -->
                     <div class="p-2 d-none d-sm-block">
                          <table class="table table-striped table-hover">
                            <thead>
                            <tr >
                              <th scope="col">No</th>
                              <th scope="col">Item</th>
                              <th scope="col">Material</th>
                              <th scope="col">Room</th>
                                <th scope="col">Item Type</th>
                                   <th scope="col">Gross Open<br />
Width/Height</th>
                                <th>Inside Mount or <br />
Outside Mount
</th>
                                <th>Number of <br />Window Openings</th>
                                <th>Blade Size</th>
                                 <th>Colour</th>
                                 <th>Hinge Colour</th>
                                 <th>Mid Rail Location</th>
                                 <th>Layout Code</th>
                                 <th>m2</th>
                                 <th>Item Total Charge</th>
                            </tr>
                          </thead>
                              <tbody class="table-group-divider">
                                <tr>
                                  <th scope="row">1</th>
                                  <td>Mark</td>
                                  <td>Otto</td>
                                  <td>@mdo</td>
                                </tr>
                                <tr>
                                  <th scope="row">2</th>
                                  <td>Jacob</td>
                                  <td>Thornton</td>
                                  <td>@fat</td>
                                </tr>
                                <tr>
                                  <th scope="row">3</th>
                                  <td colspan="2">Larry the Bird</td>
                                  <td>@twitter</td>
                                </tr>
                              </tbody>

                        </table>
                     </div>

            
                             <!-- Order total -->
                        <div class="d-none d-sm-block p-4">
                            <div class="p-3">
                          <div class="row">
                              <div class="col text-end">
                                  <input type="button" class="btn-na "  data-bs-toggle="modal" data-bs-target="#selectshutterprogram" value="+ Add New Item" />
                             &nbsp;&nbsp;&nbsp;
                             <input type="button" class="btn-na" value="+ Add Part" />
                              </div>
                          </div>
                            
                      </div>
                            <div class="row justify-content-end p-1">
                            <div class="col-2">
                                Total m2
                            </div>
                            <div class="col-2 fonttitle text-end">
                            1.25
                            </div>
                            </div>

                            <div class="row justify-content-end p-1">
                            <div class="col-2">
                                Order surcharge
                            </div>
                            <div class="col-2 fonttitle text-end">
                            A$ 25
                            </div>
                            </div>

                            <div class="row justify-content-end p-1">
                            <div class="col-2 border-top border-dark pt-3">
                            Total cost of job (excl GST)
                            </div>
                            <div class="col-2 fonttitle border-top border-dark text-end pt-3" style="color:red; font-size:1.1rem;">
                                A$ 648.72
                            </div>
                            </div>


                              <div class="p-3">
                          <div class="row">
                              <div class="col text-end">
                                  <input type="button" class="btn btn-outline-secondary"  value="Delete Order" />
                             &nbsp;&nbsp;&nbsp;
                             <input type="button" class="btn btn-outline-secondary" value="Edit Order" />
                                    &nbsp;&nbsp;&nbsp;
                                    <input type="button" class="btn-na " value=" Check out " />
                              </div>
                          </div>
                            
                      </div>

                      
                        </div>
                



                  </main>
                 </div>
             </div>
   


        <div style="display:none">
            <asp:TextBox ID="tbx_glid" runat="server" ReadOnly="true" />
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
            function collapseCopyInfo(obj) {
                if ($(obj).hasClass("feather-plus")) {
                    $(obj).removeClass("feather-plus");
                    obj.setAttribute("data-feather", "minus");
                   
                } else {
                    $(obj).removeClass("feather-minus");
                    obj.setAttribute("data-feather", "plus");
                }
                feather.replace({ id: 'spcollapsecopyinfo' });
            }
            $(function () {
                feather.replace({ 'aria-hidden': 'true' })
               
                $("#loadingdv").css("display", "none");
            });
        </script>


     
    </form>
</body>
</html>
