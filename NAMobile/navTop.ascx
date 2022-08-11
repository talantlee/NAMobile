<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navTop.ascx.cs" Inherits="NAMobile.navTop" %>
 <style>
      .bd-placeholder-img {
        font-size: 0.95rem;
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
  <nav class="navbar bg-light fixed-top" >
    <div class="container-fluid row">
  
         <div class="col d-md-none col-2 col-md-1">
             <span onclick="replaceToggler(this)" data-feather="align-justify" class="align-text-bottom" style="width:32px; height:32px; cursor:pointer" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation"></span>
          </div>
         <div class="col col-8 col-md-10 text-center text-md-start"><img src="css/images/home_norman3.jpg" height="49" /></div>
     <div class="col col-2 col-md-1 text-end"><span data-feather="user" class="align-text-bottom chagetoggler" style="width:32px; height:32px;"></span></div>
     </div>

      

    
  </nav>


<div class="container">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="pt-4">
            <div class="text-center p-1" style="background-color:#6e8299; color:white;font-size:1.15rem; ">About Order</div>
         <ul class="list-group">
  <li class="list-group-item">Place Order</li>
              <li class="list-group-item ps-5" data-bs-toggle="modal" data-bs-target="#selectshutterprogram">Shutters &nbsp;&nbsp;<span data-feather="chevron-right" class="align-text-top" ></span>
              </li>
                <li class="list-group-item ps-5">Blinds &nbsp;&nbsp;<span data-feather="chevron-right" class="align-text-top" ></span></li>
              <li class="list-group-item ps-5">Shades &nbsp;&nbsp;<span data-feather="chevron-right" class="align-text-top" ></span></li>
  <li class="list-group-item">Track Order</li>
  <li class="list-group-item">On Hold Question</li>
  <li class="list-group-item">Ask a Question</li>
  <li class="list-group-item">RGA</li>
</ul>

             <div class="text-center p-1" style="background-color:#6e8299; color:white;font-size:1.1rem;">About Sales</div>
                  <ul class="list-group">
  <li class="list-group-item">Sales Information &nbsp;&nbsp;<span data-feather="chevron-down" class="align-text-top" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"></span>

      <div class="collapse" id="collapseExample">
        <ul class="list-group">
            <li class="list-group-item">1</li>
  <li class="list-group-item">2</li>
        </ul>
    </div>

  </li>

                      <li class="list-group-item">Marking Resources</li>
                      </ul>
            </div>
        </nav>


    </div>
</div>

 <div  style="z-index:1001; height:100%; position:absolute; top:0; width:100%; text-align:center; padding-top:120px" id="loadingdv">
                           <div class="spinner-border text-primary m-5" role="status">
              <span class="visually-hidden">Loading...</span>
            </div>
        </div>

<div class="modal fade" id="selectshutterprogram" tabindex="-1" aria-labelledby="selectshutterprogramtitle" style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
   
      <div class="modal-body">
                   <ul class="list-group">
                        <li class="list-group-item" style="background-color:#badef2;height:0.75rem; font-size:0.85rem;" >&nbsp;</li>
  <li class="list-group-item list-group-item-action" onclick="placeOrder('CS','MDF CleanLook')">Woodlore</li>
  <li class="list-group-item list-group-item-action" onclick="placeOrder('CS','MDFP')">Woodlore Plus</li>
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
  <script src="lib/feather.min.js"></script>
        <script type="text/javascript">
            (() => {
                'use strict'
                feather.replace({ class: 'chagetoggler' });
               // feather.replace({ 'aria-hidden': 'true' })
            })();

            function replaceToggler(obj) {
        
                if ($(obj).hasClass("feather-x")) {
                    $(obj).removeClass("feather-x");
                    obj.setAttribute("data-feather", "align-justify");
                } else {
                    $(obj).removeClass("feather-align-justify");
                    obj.setAttribute("data-feather", "x");
                }
                feather.replace({ class: 'chagetoggler' });

            }

            function placeOrder(pd, progam) {
                //glid
                let url = "TorderAEdit.aspx?pgmcode=" + progam;
                let pdtype = "";
                switch (pd) {
                    case "CS":
                        pdtype ="&orderporducttype=Shutter";
                        break;
                    case "CB":
                        pdtype = "&orderporducttype=Blinds";
                      
                        break;
                    case "CC":
                        pdtype = "&orderporducttype=CellularShade";
                      
                        break;
                    case "RL":
                        pdtype = "&orderporducttype=Roller";
                    
                        break;
                    case "PS":
                        pdtype = "&orderporducttype=PerfectSheer";
                     
                        break;
                    case "DS":
                        pdtype = "&orderporducttype=DisplayTower";
                       
                        break;
                }
                let glid = "";
                if (document.querySelector("#tbx_glid")) {
                    glid = document.getElementById("tbx_glid").value;
                }
                //
                window.location.href = url.concat(pdtype, "&glid=" + glid);
            }

        </script>