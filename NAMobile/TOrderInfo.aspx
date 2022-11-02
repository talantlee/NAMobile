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
                                     <div class="col col-8"><asp:Label ID="lbl_dealername" runat="server"></asp:Label></div>
                                </div>
                              <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Customer Name</div>
                                     <div class="col col-8"><asp:Label ID="lbl_custnam" runat="server"></asp:Label></div>
                                </div>
                            <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Input Date</div>
                                     <div class="col col-8"><asp:Label ID="lbl_inputdate" runat="server"></asp:Label></div>
                                </div>
                            <div class="row pt-1">
                                    <div class="col col-4 fonttitle">Job/Order No</div>
                                    <div class="col col-8"><asp:Label ID="lbl_po" runat="server"></asp:Label></div>
                                </div>
                        </div>
                          <!-- shipto-->
                         <div class="col">
                              <div class="row pt-1 ps-2 pe-2">
                                    <div class="col text-center border fonttitle border-dark rounded-1">Ship To</div>
                                </div>
                       
                         <div class="row pt-1">
                                    <div class="col col-4 fonttitle">State/Country</div>
                                    <div class="col col-8"><asp:Label ID="lbl_state" runat="server"></asp:Label></div>
                                </div>
                         <div class="row pt-1">
                                    <div class="col col-4 fonttitle">City</div>
                                    <div class="col col-8"><asp:Label ID="lbl_city" runat="server"></asp:Label></div>
                                </div>
                        
                                  <div class="row pt-1 ps-2 pe-2">

        
      
                                  
                                    <div class="col text-center fonttitle border-dark bg-white rounded-1" style="cursor:pointer" onclick="EditHdr()" >
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
                                   <div class="fonttitle border-dark bg-white rounded-1" >
                                    <span data-feather="copy"  class="align-text-bottom" ></span><span class="p-1" >Copy</span>
                                 </div>
                              </div>
                          </div>

                      </div>
                    <div class="bg-white row"><div class="col">&nbsp;</div></div>
                 
                    <%if (ProductType == "Shutters")
                        { %>
                       <!--  Shutter order detail info for handset-->
                      <div class="p-2 d-block d-sm-none bg-light rounded-3"  >
                              <%foreach (System.Data.DataRow dr in orderDetails.Tables[0].Rows)
                                  {
                                      string divheight = "";
                                      decimal TotalAmt = Convert.ToDecimal(dr["TotalAmt"]);
                                      decimal partamt = 0;
                                      if (!(dr["PartAmt"] is System.DBNull)) {
                                          partamt = Convert.ToDecimal(dr["PartAmt"]);
                                      }
                                      TotalAmt = TotalAmt + partamt;
                                      if (dr["MidRailLoc"].ToString().ToUpper() == "OTHER")
                                      {
                                          if (Convert.ToInt32(dr["divheight1"]) > 0)
                                          {
                                              divheight += "1<sup>st</sup>:" + dr["divheight1"].ToString();
                                          }
                                          if (Convert.ToInt32(dr["divheight2"]) > 0)
                                          {
                                              divheight += "<br>2<sup>nd</sup>:" + dr["divheight1"].ToString();
                                          }
                                      } else if (dr["MidRailLoc"].ToString() == "Centre")
                                      {
                                          divheight = "Centre";
                                      }

                                      %>
                               <div class="eacherow mb-2" >
                             <div class="row row-cols-2">
                              <div class="col">No</div>
                              <div class="col fonttitle text-end"><%= dr["ItemNo"].ToString() %></div>
                              <div class="col">Item</div>
                               <div class="col fonttitle text-end">Shutter</div>
                                 <div class="col">Room</div>
                               <div class="col fonttitle text-end"><%= dr["Room"].ToString() %></div>

                               <div class="col">Material</div>
                               <div class="col fonttitle text-end"><%= NAMobile.Model.GlobalVars.GetMaterialName(dr["Mater_Code"].ToString()) %><%if (dr["iswaterproof"].ToString() == "Y") { Response.Write("(Waterproof)"); }%></div>

                           

                                <div class="col">Item Type</div>
                               <div class="col fonttitle text-end"><%= dr["Bpbf"].ToString() %></div>

                                   <div class="col">Gross Open Width/Height</div>
                               <div class="col fonttitle text-end"><%= dr["GrossWidth"].ToString() %>/<%= dr["GrossHeight"].ToString() %></div>
                                 <div class="col">Inside Mount or Outside Mount</div>
                               <div class="col fonttitle text-end"><%= dr["MountType"].ToString() %></div>

                                  <div class="col">Number of Window Openings</div>
                               <div class="col fonttitle text-end"><%= dr["ShutterqTY"].ToString() %></div>

                               <div class="col">Blade Size</div>
                               <div class="col fonttitle text-end"><%= dr["BladeSizeDes"].ToString() %></div>

                               <div class="col">Colour</div>
                               <div class="col fonttitle text-end"><%= dr["MaterialColorDes"].ToString() %></div>

                             <div class="col">Hinge Colour</div>
                               <div class="col fonttitle text-end"><%= dr["HingedColor"].ToString() %></div>
                             <div class="col">Mid Rail Location</div>
                              <div class="col fonttitle text-end"><%=divheight %></div>

                              <div class="col">Layout Code</div>
                              <div class="col fonttitle text-end"><%= dr["LayoutDes"].ToString() %></div>
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
                            <%
                                System.Data.DataRow[] dtlparts = GetShutterParts(Convert.ToInt32(dr["LineID"]));
                                int recno = 1;

                        %>
                          <!-- parts -->
                        <div class="row"><div class="col"><span data-feather="minus" class="align-text-bottom"  ></span>Part</div></div>
                        <div class="bg-white p-3 rounded-2 m-2" >
                            <%    foreach (System.Data.DataRow dpart in dtlparts)
                                {  %>

                                <div class="row row-cols-2 pt-2">
                                <div class="col">No</div>
                                <div class="col fonttitle text-end"><%=recno.ToString() %></div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end"><%= dpart["Kind"].ToString() %></div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end"><%= dpart["Quan"].ToString() %></div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end"><%if (Convert.ToDecimal(dpart["length"]) > 0) { Response.Write(dpart["length"].ToString()); } %></div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end"><%= NAMobile.Model.GlobalVars.GetMaterialName(dpart["Mater_Code"].ToString()) %></div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end"><%= dpart["specDes"].ToString() %></div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end"><%= dpart["ColorDes"].ToString() %></div>
                                      <%if (hasPriceShow) { %>
                                  <div class="col">Item Total Charge</div>
                              
                                  <div class="col"><%=Convert.ToDecimal(dpart["itemprice"]).ToString("f2") %></div>
                                 <%} %>
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
                             <%} %>
                            <div class="row pt-2 text-center">
                                  <div class="col"><input type="button" class="btn-na btn-na-outline" value="+ Add Part" /></div>
                                
                            </div>
                     
                        </div>
                          
                          <!--Item total --->
                        <div class="row row-cols-2 p-1">
                                <div class="col">m2</div>
                                  <div class="col text-end fonttitle"><%=Convert.ToDecimal(dr["m2"]).ToString("f2") %></div>
                                <div class="col">Item Total Charge</div>
                                  <div class="col text-end fonttitle" style="color:red; font-size:1.1rem;">A$ <% Response.Write(TotalAmt.ToString("f2"));  %></div>
                            </div>

                        </div>
                             <div class="bg-white row"><div class="col">&nbsp;</div></div>
                            <%} %>
                             
                      </div>

                       <!-- order detail info for pc -->
                     <div class="p-2 d-none d-sm-block bg-light">
                          <table class="table">
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
                              
                            </tr>
                          </thead>
                            <tbody class="table-group-divider">
                                <%foreach (System.Data.DataRow dr in orderDetails.Tables[0].Rows) {
                                        string divheight = "";
                                        decimal TotalAmt = Convert.ToDecimal(dr["TotalAmt"]);
                                        decimal partamt = 0;
                                        if (!(dr["PartAmt"] is System.DBNull)) {
                                            partamt = Convert.ToDecimal(dr["PartAmt"]);
                                        }
                                        TotalAmt = TotalAmt + partamt;
                                        if (dr["MidRailLoc"].ToString().ToUpper() == "OTHER")
                                        {
                                            if (Convert.ToInt32(dr["divheight1"]) > 0)
                                            {
                                                divheight += "1<sup>st</sup>:" + dr["divheight1"].ToString();
                                            }
                                            if (Convert.ToInt32(dr["divheight2"]) > 0)
                                            {
                                                divheight += "<br>2<sup>nd</sup>:" + dr["divheight1"].ToString();
                                            }
                                        } else if (dr["MidRailLoc"].ToString() == "Centre")
                                        {
                                            divheight = "Centre";
                                        }
                                        %>
                                    <tr>
                                  <th scope="row"><%= dr["ItemNo"].ToString() %></th>
                                  <td>Shutter</td>
                                  <td><%= NAMobile.Model.GlobalVars.GetMaterialName(dr["Mater_Code"].ToString()) %><%if (dr["iswaterproof"].ToString() == "Y") { Response.Write("(Waterproof)"); }%></td>
                                  <td><%= dr["Room"].ToString() %></td>
                                    
                                  <td><%= dr["Bpbf"].ToString() %></td>
                                  <td><%= dr["GrossWidth"].ToString() %>/<%= dr["GrossHeight"].ToString() %></td>
                                  <td><%= dr["MountType"].ToString() %></td>
                                  <td><%= dr["ShutterqTY"].ToString() %></td>
                                  <td><%= dr["BladeSizeDes"].ToString() %></td>
                                    <td><%= dr["MaterialColorDes"].ToString() %></td>
                                     
                                  <td><%= dr["HingedColor"].ToString() %></td>
                                  <td><%=divheight %></td>
                                     <td><%= dr["LayoutDes"].ToString() %></td>
                           
                                </tr>
                                <%
                                    System.Data.DataRow[] dtlparts = GetShutterParts(Convert.ToInt32(dr["LineID"]));

                                 %>
                                    <tr >
                                     <td colspan="13" class="border-0">
                                         <div class="row"><div class="col"><span data-feather="<%if (dtlparts.Length > 0) Response.Write("minus"); else Response.Write("plus"); %>" id="plusshutterpart<%=dr["ItemNo"].ToString() %>" class="align-text-bottom" onclick="collapsePart(<%=dr["ItemNo"].ToString() %>,this)" style="cursor:pointer"  ></span>Part</div></div>
                                         <div class="bg-white p-1 rounded-2 m-2" id="shutterpart<%=dr["ItemNo"].ToString() %>" style="<%if (dtlparts.Length == 0) Response.Write("display:none;"); %>" >
                                         <table class="table table-borderless">
                                                     <thead>
                                                    <tr >
                                                      <th scope="col">No</th>
                                                      <th scope="col">Item</th>
                                                      <th scope="col">Qty</th>
                                                      <th scope="col">Length (mm)</th>
                                                        <th scope="col">Material</th>
                                                           <th scope="col">Specification</th>
                                                        <th>Colour</th>
                                                        <%if (hasPriceShow) { Response.Write("<th>Item Total Charge</th>"); } %>
                                                        <th>Action</th>
                               
                                                    </tr>
                                                  </thead>
                                                  <tbody>
                                                      <%
                                                          int recno = 1;
                                                          foreach (System.Data.DataRow dpart in dtlparts)
                                                          {  %>
                                                          <tr><td scope="row"><%= recno.ToString() %></td>
                                                          <td><%= dpart["Kind"].ToString() %></td>
                                                           <td><%= dpart["Quan"].ToString() %></td>
                                                           <td><%if (Convert.ToDecimal(dpart["length"]) > 0) { Response.Write(dpart["length"].ToString()); } %></td>
                                                           <td><%= NAMobile.Model.GlobalVars.GetMaterialName(dpart["Mater_Code"].ToString()) %></td>
                                                           <td><%= dpart["specDes"].ToString() %></td>
                                                           <td><%= dpart["ColorDes"].ToString() %></td>
                                                          <%if (hasPriceShow) { Response.Write("<td>" + Convert.ToDecimal(dpart["itemprice"]).ToString("f2") + "</td>"); } %>
                                                          <td>Action</td>
                                                      </tr>
                                                      <%
                                                              recno++;
                                                          } %>
                                                    
                                                  </tbody>
                                                  <tfoot>
                                                      <tr >
                                                          <td  colspan="2" >
                                                               <input type="button" class="btn-na btn-na-outline" value="+ Add Part" />
                                                          </td>
                                                          <%if (hasPriceShow && partamt > 0) { %>
                                                          <td colspan="4"></td>
                                                          <td class=" border-top border-dark" >Parts Charge Total</td>
                                                          <td class=" border-top border-dark" colspan="2">A$ <%=Convert.ToDecimal(dr["PartAmt"]).ToString("f2") %></td>
                                                          <%} %>
                                                      </tr>
                                                  </tfoot>
                                              </table>
                                        </div>
                                     </td>
                                 </tr>
                                
                                <!-- end shutter parts-->

                                <!-- order item total -->
                                  <tr >
                                      <td colspan="13" class="border-0">
                                            <!--Item total --->
                                          <div class="row justify-content-end">
                                             <div class="col-8">
                                               
                                                 </div>
                                            <div class="col-2 border-dark border-top pt-2">
                                             m2
                                            </div>
                                            <div class="col-2 fonttitle text-end border-dark border-top pt-2">
                                                <%=Convert.ToDecimal(dr["m2"]).ToString("f2") %>
                                            </div>
                                            </div>
                                          <%if (hasPriceShow)
                                              {%>
                                           <div class="row justify-content-end pb-3">
                                             <div class="col-8">
                                               
                                                 </div>
                                            <div class="col-2 pt-2">
                                             Item Total Charge
                                            </div>
                                            <div class="col-2 fonttitle text-end pt-2" style="color:red;">
                                         A$ <% Response.Write(TotalAmt.ToString("f2"));  %>
                                            
                                            </div>
                                            </div>
                                          <%} %>
                                      </td>
                                  </tr>

                               <% } // orderdetail foreach%>
                            
                             
                               
                              </tbody>

                        </table>
                          
                      
                     </div>

  
                    <%}
                        else if (ProductType == "DisplayTower")
                        { %>

                        <%} else if (ProductType == "CellularShade") { 
                                int AutoLineID = 0;
                               %>
                       <!-- CellularShade order detail info for handset-->
                        <div class="p-2 d-block d-sm-none bg-light rounded-3"  >
                              <%
                                  
                                 foreach (System.Data.DataRow dr in orderDetails.Tables[0].Rows) {
                                      AutoLineID++;
                               %>
                               <div class="eacherow mb-2" >
                             <div class="row row-cols-2">
                              <div class="col">No</div>
                              <div class="col fonttitle text-end"><%= AutoLineID.ToString() %></div>
                              <div class="col">Item</div>
                               <div class="col fonttitle text-end">Honeycomb Shade</div>
                                 <div class="col">Room</div>
                               <div class="col fonttitle text-end"><%= dr["Room"].ToString() %></div>

                               <div class="col">Material</div>
                               <div class="col fonttitle text-end"><%= NAMobile.Model.GlobalVars.GetHCPgmDesc(dr["PgmDesc"].ToString()) %></div>

                           

                                <div class="col">Colour</div>
                               <div class="col fonttitle text-end"><%= dr["MaterialColorName"].ToString() %></div>
                                    <div class="col">Headrail Colour</div>
                               <div class="col fonttitle text-end"><%= dr["FinColorDesc"].ToString() %></div>
                                      <div class="col">Qty</div>
                               <div class="col fonttitle text-end"><%= dr["OrderQty"].ToString() %></div>

                                   <div class="col">Width/Height</div>
                               <div class="col fonttitle text-end"><%= dr["Width"].ToString() %>/<%= dr["Leng"].ToString() %></div>
                                 <div class="col">In/Out</div>
                               <div class="col fonttitle text-end"><%= dr["MountType"].ToString() %></div>

                             

                               <div class="col">Remark</div>
                               <div class="col fonttitle text-end"><%= dr["remark"].ToString() %></div>
                                <%if (hasPriceShow){%>
                               <div class="col">Item Total Charge</div>
                               <div class="col fonttitle text-end" style="color:blue; text-decoration:underline;">A$<%= Convert.ToDecimal(dr["TotalAmt"]).ToString("f2") %></div>
                                 <%} %>
                           
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
  
                         <div class="bg-white row"><div class="col">&nbsp;</div></div>
                           </div> 
                            <%}//end  order details foreach%>
                           
                      </div>

                          <!-- CellularShade order detail info for pc -->
                       <div class="p-2 d-none d-sm-block bg-light">
                          <table class="table">
                            <thead>
                            <tr >
                                <th scope="col">No</th>
                           
                                <th scope="col">Material</th>
                                <th scope="col">Room</th>
                                <th scope="col">Colour</th>
                                <th scope="col">Headrail Colour</th>
                                <th scope="col">Qty</th>
                                <th scope="col"> Width/Height</th>
                                <th>In/Out</th>
                                <th>Remark</th>
                                   <%if (hasPriceShow){%>
                                <th>Item Total Charge</th>
                                <%} %>
                            </tr>
                          </thead>
                            <tbody class="table-group-divider">
                                <%
                                     AutoLineID = 0;
                                    foreach (System.Data.DataRow dr in orderDetails.Tables[0].Rows) {
                                       AutoLineID++;
                                        %>
                                    <tr>
                                  <th scope="row"><%= AutoLineID.ToString() %></th>
                               
                                  <td><%= NAMobile.Model.GlobalVars.GetHCPgmDesc(dr["PgmDesc"].ToString()) %></td>
                                  <td><%= dr["Room"].ToString() %></td>
                                    
                                  <td><%= dr["MaterialColorName"].ToString() %></td>
                                   <td><%= dr["FinColorDesc"].ToString() %></td>
                                          <td><%= dr["OrderQty"].ToString() %></td>
                                  <td><%= dr["Width"].ToString() %>/<%= dr["Leng"].ToString() %></td>
                                  <td><%= dr["MountType"].ToString() %></td>
                                
                                  <td><%= dr["Remark"].ToString() %></td>
                                
                                  <%if (hasPriceShow)
                                      {%>
                                     <td>A$<%= Convert.ToDecimal(dr["TotalAmt"]).ToString("f2") %></td>
                                    <%} %>
                                </tr>
                         
                                 

                        

                               <% } // orderdetail foreach%>
                            
                              </tbody>

                        </table>
                          

                     </div>
                    

                      <%} else if (ProductType == "Blinds") { %>

                      <%} else if (ProductType == "PerfectSheer") { %>

                      <%}%>
                      
                    <!-- Parts -->
                    <%if (orderDetails.Tables[1].Rows.Count > 0)
                        { %>
                     <div class="row pt-3"><div class="col">Part</div></div>
                    <!-- parts handset -->
                        <div class=" d-block d-sm-none bg-white p-3 rounded-2 m-2" >
                            <%     int recno = 0;
                                foreach (System.Data.DataRow dpart in  orderDetails.Tables[1].Rows)
                                {
                                    recno++;
                                    %>

                             <div class="row row-cols-2 pt-2">
                                <div class="col">No</div>
                                <div class="col fonttitle text-end"><%=recno.ToString() %></div>

                                  <div class="col">Item</div>
                                <div class="col fonttitle text-end"><%= dpart["Kind"].ToString() %></div>

                                  <div class="col">Qty</div>
                                <div class="col fonttitle text-end"><%= dpart["Quan"].ToString() %></div>

                                  <div class="col">Length (mm)</div>
                                <div class="col fonttitle text-end"><%if (Convert.ToDecimal(dpart["length"]) > 0) { Response.Write(dpart["length"].ToString()); } %></div>

                                  <div class="col">Material</div>
                                <div class="col fonttitle text-end"><%= NAMobile.Model.GlobalVars.GetMaterialName(dpart["Mater_Code"].ToString()) %></div>

                                  <div class="col">Specification</div>
                                <div class="col fonttitle text-end"><%= dpart["specDes"].ToString() %></div>
                                
                                  <div class="col">Colour</div>
                                <div class="col fonttitle text-end"><%= dpart["ColorDes"].ToString() %></div>
                                      <%if (hasPriceShow) { %>
                                  <div class="col">Item Total Charge</div>
                              
                                  <div class="col"><%=Convert.ToDecimal(dpart["itemprice"]).ToString("f2") %></div>
                                 <%} %>
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

                         
                             <%} %>
                            <div class="row pt-2 text-center">
                                  <div class="col"><input type="button" class="btn-na btn-na-outline" value="+ Add Part" /></div>
                                
                            </div>
                     
                        </div>

                    <!-- Parts PC -->
                      <div class="bg-white p-1 rounded-2 m-2 d-none d-sm-block" >
                        <table class="table table-borderless">
                                    <thead>
                                <tr >
                                    <th scope="col">No</th>
                                    <th scope="col">Item</th>
                                    <th scope="col">Qty</th>
                                    <th scope="col">Length (mm)</th>
                                    <th scope="col">Material</th>
                                        <th scope="col">Specification</th>
                                    <th>Colour</th>
                                    <%if (hasPriceShow) { Response.Write("<th>Item Total Charge</th>"); } %>
                                    <th>Action</th>
                               
                                </tr>
                                </thead>
                                <tbody>
                                    <%
                                        recno = 1;
                                        foreach (System.Data.DataRow dpart in orderDetails.Tables[1].Rows)
                                        {  %>
                                        <tr><td scope="row"><%= recno.ToString() %></td>
                                        <td><%= dpart["Kind"].ToString() %></td>
                                        <td><%= dpart["Quan"].ToString() %></td>
                                        <td><%if (Convert.ToDecimal(dpart["length"]) > 0) { Response.Write(dpart["length"].ToString()); } %></td>
                                        <td><%= NAMobile.Model.GlobalVars.GetMaterialName(dpart["Mater_Code"].ToString()) %></td>
                                        <td><%= dpart["specDes"].ToString() %></td>
                                        <td><%= dpart["ColorDes"].ToString() %></td>
                                        <%if (hasPriceShow) { Response.Write("<td>" + Convert.ToDecimal(dpart["itemprice"]).ToString("f2") + "</td>"); } %>
                                        <td>Action</td>
                                    </tr>
                                    <%
                                            recno++;
                                        } %>
                                                    
                                </tbody>
                             
                            </table>
                       </div>
                   
                       <% }%>
                    <!-- Order total for Handset-->
                    <div class=" d-block d-sm-none">
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

                    <!-- Order total for handset -->
                    <div class="p-2">
                    <div class="row row-cols-2 p-1">
                            <div class="col">Total m2</div>
                                <div class="col text-end fonttitle"><%=OrderM2 %></div>
                          <%if (hasPriceShow)
                              { %>
                            <div class="col">Order surcharge</div>
                            <div class="col text-end fonttitle" ><%=OrderHdrSurcharge %></div>
                        <%} %>
                    </div>
                    <%if (hasPriceShow) { %>
                    <div  class="p-1 border-top border-dark" >
                    <div class="row row-cols-2 pt-3">
                            <div class="col">Total cost of job (excl GST)</div>
                            <div class="col text-end fonttitle" style="color:red; font-size:1.1rem;"><%=OrderAmount %></div>
                    </div>
                    </div>
                    <%} %>
                </div>   

                    <div class="p-3">
                            <div class="row pt-2">
                                <div class="col col-2"></div>
                                <div class="col col-4">
                                        <input type="button" class="btn-na btn-na-outline"   value="Delete Order" />

                                </div>
                                <div class="col col-4 text-end">
                                        <input type="button"  class="btn-na btn-na-outline" style="background-color:#fff;color:#000;border: 1px solid #003c4b;"  value="Edit Order" />
                                    </div>
                                <div class="col col-2"></div>
                            
                        </div>
                    
                            <div class="d-grid col-8 mx-auto pt-3">
                            <input type="button" class="btn-na " value=" Check out " />
                        </div>
                    </div>
                </div>

                    <!-- Order total for PC-->
                    <div class="d-none d-sm-block p-4">
                        <div class="p-3">
                        <div class="row">
                            <div class="col text-end">
                                <input type="button" class="btn-na "   onclick="addorderitem()"  value="+ Add New Item" />
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
                            <%=OrderM2 %>
                        </div>
                        </div>
                          <%if (hasPriceShow){ %>
                        <div class="row justify-content-end p-1">
                        <div class="col-2">
                            Order surcharge
                        </div>
                        <div class="col-2 fonttitle text-end">
                        <%=OrderHdrSurcharge %>
                           
                        </div>
                        </div>
                       
                        <div class="row justify-content-end p-1">
                        <div class="col-2 border-top border-dark pt-3">
                        Total cost of job (excl GST)
                        </div>
                        <div class="col-2 fonttitle border-top border-dark text-end pt-3" style="color:red; font-size:1.1rem;">
                            <%=OrderAmount %>
                              
                        </div>
                        </div>
                        <%} %>
                       

                      
                    </div>

                    <div class="p-3 d-none d-sm-block">
                        <div class="row">
                            <div class="col text-end">
                                <input type="button" class="btn-na btn-na-outline"  value="Delete Order" />
                            &nbsp;&nbsp;&nbsp;
                            <input type="button" class="btn-na btn-na-outline" value="Edit Order" />
                                &nbsp;&nbsp;&nbsp;
                                <input type="button" class="btn-na " value=" Check out " />
                            </div>
                        </div>
                            
                    </div>


                  </main>
                 </div>
             </div>
   
        
<div class="modal fade" id="addshutteritem" tabindex="-1"  style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-body">
                   <ul class="list-group">
                        <li class="list-group-item" style="background-color:#badef2;height:0.75rem; font-size:0.85rem;" >&nbsp;</li>
                          <li class="list-group-item list-group-item-action" onclick="placeShutterItem('MDF CleanLook')">Woodlore</li>
                          <li class="list-group-item list-group-item-action" onclick="placeShutterItem('MDFP')">Woodlore Plus</li>
                          <li class="list-group-item list-group-item-action">Brightwood</li>
                          <li class="list-group-item list-group-item-action">Normandy</li>
                          <li class="list-group-item list-group-item-action">Ultra</li>
                            <li class="list-group-item list-group-item-action">MS4 Motorised Shutter Hand Sample</li>        
                         <li class="list-group-item" style="background-color:#badef2;height:0.75rem; font-size:0.85rem;" >&nbsp;</li>
</ul>

      </div>
     
    </div>
  </div>
</div>

        <div style="display:none">
            <asp:TextBox ID="tbx_glid" runat="server" ReadOnly="true" />
             <asp:TextBox ID="txt_producttype" runat="server" ReadOnly="true" />
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
            function EditHdr() {
                window.location.href = 'TorderAEdit.aspx?GLID=' + document.getElementById("tbx_glid").value;
            }
            function addorderitem() {
                let pdtype = document.getElementById("txt_producttype").value;
                switch (pdtype.toLowerCase()) {
                    case "shutters":
                        $("#addshutteritem").modal('show');
                        break;
                    case "cellularshade":
                        window.location.href ="HCProgamOptions.aspx?glid=" + document.querySelector("#tbx_glid").value;
                        break;
                    case "perfectsheer":
                        window.location.href = "PerfectSheerOptions.aspx?glid=" + document.querySelector("#tbx_glid").value;
                        break;
                }
            }
            function placeShutterItem(progam) {
                let url = "ShutterProgamOptions.aspx?pgmcode=" + progam;
                window.location.href = url.concat("&glid=" + document.querySelector("#tbx_glid").value);
            }
            function collapsePart(itemno,obj) {
              
                if ($(obj).hasClass("feather-plus")) {
                    $(obj).removeClass("feather-plus");
                    obj.setAttribute("data-feather", "minus");
                    $("#shutterpart" + itemno).css("display", "");

                } else {
                    $(obj).removeClass("feather-minus");
                    obj.setAttribute("data-feather", "plus");
                    $("#shutterpart" + itemno).css("display", "none");
                }
                feather.replace({ id: 'plusshutterpart' + itemno });
            }
        </script>


     
    </form>
</body>
</html>
