<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingOrders.aspx.cs" Inherits="NAMobile.PendingOrders" %>

<%@ Register Src="~/navTop.ascx" TagPrefix="uc1" TagName="navTop" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lib/jquery-3.6.0.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <title></title>
     
       
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">ORDERS LIST (JOBS NOT SUBMITTED)</div>
                      <div class="table-responsive" style="padding-top:6px;">
                          <table class="table table-striped table-sm">
                              <thead>
                                  <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">Customer Name</th>
                                      <th scope="col">Job/Order No</th>
                                      <th scope="col">Total Cost of Job(Excl GST)</th>
                                      <th scope="col">Product Type</th>
                                      <th scope="col">Action</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>1</td>
                                      <td>random</td>
                                      <td>data</td>
                                      <td>A$ 1,326.92 </td>
                                      <td>Shutters</td>
                                      <td>  <button class="btn btn-primary" type="submit">View</button></td>
                                  </tr>
                                  <tr>
                                      <td>2</td>
                                      <td>placeholder</td>
                                      <td>irrelevant</td>
                                      <td>A$ 1,326.92 </td>
                                      <td>Soluna Roller Shade</td>
                                  </tr>
                                  <tr>
                                      <td>3</td>
                                      <td>data</td>
                                      <td>rich</td>
                                      <td>dashboard</td>
                                      <td>Honeycomb Shades</td>
                                  </tr>
                                  <tr>
                                      <td>4</td>
                                      <td>information</td>
                                      <td>placeholder</td>
                                      <td>illustrative</td>
                                      <td>data</td>
                                  </tr>
                                  <tr>
                                      <td>5</td>
                                      <td>text</td>
                                      <td>random</td>
                                      <td>layout</td>
                                      <td>dashboard</td>
                                  </tr>
                                  <tr>
                                      <td>6</td>
                                      <td>dashboard</td>
                                      <td>irrelevant</td>
                                      <td>text</td>
                                      <td>placeholder</td>
                                  </tr>
                                  <tr>
                                      <td>7</td>
                                      <td>dashboard</td>
                                      <td>illustrative</td>
                                      <td>rich</td>
                                      <td>data</td>
                                  </tr>
                                  <tr>
                                      <td>8</td>
                                      <td>placeholder</td>
                                      <td>tabular</td>
                                      <td>information</td>
                                      <td>irrelevant</td>
                                  </tr>
                                  <tr>
                                      <td>9</td>
                                      <td>random</td>
                                      <td>data</td>
                                      <td>placeholder</td>
                                      <td>text</td>
                                  </tr>
                                  <tr>
                                      <td>10</td>
                                      <td>placeholder</td>
                                      <td>irrelevant</td>
                                      <td>visual</td>
                                      <td>layout</td>
                                  </tr>
                     
                             
                                  <tr>
                                      <td>15</td>
                                      <td>random</td>
                                      <td>tabular</td>
                                      <td>information</td>
                                      <td>text</td>
                                  </tr>
                              </tbody>
                          </table>
                      </div>

                        <div style="padding-top:6px;">
                            <nav aria-label="Page navigation">
                              <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Prior</a></li>
                        
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>

                                   <li class="page-item page-link">Go <select><option>1111</option></select></li>
                                    <li class="page-item page-link">Page 1/1</li>
                              </ul>
                            </nav>
                        </div>
                  </main>
                 </div>
             </div>

        <div class="container">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <button class="btn btn-primary" type="button">Add Order</button>
   
      </footer>
    </div>

        <script src="lib/feather.min.js"></script>
        <script type="text/javascript">
            (() => {
                'use strict'
                feather.replace({ 'aria-hidden': 'true' })
            })();

        </script>
    </form>
</body>
</html>
