<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingOrders.aspx.cs" Inherits="NAMobile.PendingOrders" %>

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
        <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

  

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }


      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

  
    </style>
        <link href="../css/dashboard.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       
      <header class="navbar sticky-top bg-light flex-md-nowrap p-0" style="height:63px">
       
        <img src="css/images/home_norman3.jpg" height="49" />
          <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
      
        
      </header>

      <div class="container-fluid" >
        <div class="row" >
              <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                  <div class="position-sticky pt-3 sidebar-sticky">
                      <ul class="nav flex-column">
                          <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="pendingorders.aspx">
                                  <span data-feather="home" class="align-text-bottom"></span>
                                  Pending Orders
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="file" class="align-text-bottom"></span>
                                  Track Orders
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="shopping-cart" class="align-text-bottom"></span>
                                  Rga
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="users" class="align-text-bottom"></span>
                                  Onhold Question
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="bar-chart-2" class="align-text-bottom"></span>
                                  Aak a Question
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="layers" class="align-text-bottom"></span>
                                  Resources
                              </a>
                          </li>
                      </ul>

                      <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
                          <span>Price List</span>
                          <a class="link-secondary" href="#" aria-label="Add a new report">
                              <span data-feather="plus-circle" class="align-text-bottom"></span>
                          </a>
                      </h6>
                      <ul class="nav flex-column mb-2">
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="file-text" class="align-text-bottom"></span>
                                  Shutter
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="file-text" class="align-text-bottom"></span>
                                  Shades
                              </a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="#">
                                  <span data-feather="file-text" class="align-text-bottom"></span>
                                  Blind
                              </a>
                          </li>
                       
                      </ul>
                  </div>
              </nav>

             
          </div>
      </div>
         
          
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
                                  <td>11</td>
                                  <td>information</td>
                                  <td>placeholder</td>
                                  <td>illustrative</td>
                                  <td>data</td>
                              </tr>
                              <tr>
                                  <td>12</td>
                                  <td>text</td>
                                  <td>placeholder</td>
                                  <td>layout</td>
                                  <td>dashboard</td>
                              </tr>
                              <tr>
                                  <td>13</td>
                                  <td>dashboard</td>
                                  <td>irrelevant</td>
                                  <td>text</td>
                                  <td>visual</td>
                              </tr>
                              <tr>
                                  <td>14</td>
                                  <td>dashboard</td>
                                  <td>illustrative</td>
                                  <td>rich</td>
                                  <td>data</td>
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
              </main>
                 </div>
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
