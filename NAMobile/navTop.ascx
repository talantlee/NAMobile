<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navTop.ascx.cs" Inherits="NAMobile.navTop" %>
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



      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }
    </style>
 <link href="css/dashboard.css" rel="stylesheet" />
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
  <script src="lib/feather.min.js"></script>
        <script type="text/javascript">
            (() => {
                'use strict'
                feather.replace({ 'aria-hidden': 'true' })
            })();

        </script>