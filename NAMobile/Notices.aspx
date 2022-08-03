<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notices.aspx.cs" Inherits="NAMobile.Notices" %>


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
    <style type="text/css">

/* Carousel base class */
.carousel {
  margin-bottom: 1rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel-item {
  height: 16rem;
}
.subMenu{
    cursor:pointer;
}

    </style>
</head>
<body class="bg-light" >
    <form id="form1" runat="server">
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid"  >
              
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                     <div class="pt-2" >
                    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>

       
                          </div>
                          <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>

      
                          </div>
                          <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>

                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    </div>

                    <div class="pt-1"  style="overflow-y:auto">
                        <div style="background-color:#6e8299; color:#fff; height:39px; line-height:39px;" class="text-center">
                            NOTICE
                        </div>
                        <div style="background-color:#c5c5c5" class="p-1">
                            We have introduced the following two new products to our range as of 1 January 2022:
Western Red Cedar SmartPrivacy Blinds
Norman's new WRC SmartPrivacy is the ultimate in quality for the customer wanting the best Available in all our lift systems and in the beautiful OSMO finish to enhance the wide range of colours in the wood with a safe,natural treatment.

                        </div>
                         <div style="background-color:#6e8299; color:#fff; height:39px; line-height:39px;" class="text-center">
                            NEWSLETTERS
                        </div>
                        <div style="margin-bottom:1rem; padding-bottom:3rem;">
                            <ul class="list-group list-group-flush">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
  <li class="list-group-item">A fourth item</li>
  <li class="list-group-item">And a fifth one</li>
                                <li class="list-group-item">And a fifth one</li>
                                <li class="list-group-item">And a fifth one</li>
</ul>
                        </div>
                    </div>

                  </main>
                 
             </div>

        <nav class="navbar fixed-bottom d-mds-none" style="background-color:#c5c5c5">
  <div class="container-fluid row text-center align-items-start" style="font-weight:600; color:#003c4b; font-size:0.76rem;box-sizing:content-box">
     
            <div class="col subMenu col-3" >
                 <div><span data-feather="file" class="align-text-bottom chagetoggler" style="width:24px; height:24px;"></span> </div>
               <div>Track Order</div>
           </div>
              <div class="col subMenu"  >
                <div><span data-feather="square" class="align-text-bottom chagetoggler" style="width:24px; height:24px;"></span> </div>
               <div>RGA</div>
           </div>
             <div class="col subMenu col-3"  >
                <div><span data-feather="file-text" class="align-text-bottom chagetoggler" style="width:24px; height:24px;"></span> </div>
               <div>Place Order</div>
           </div>
             <div class="col subMenu"  >
                <div><span data-feather="folder" class="align-text-bottom chagetoggler" style="width:24px; height:24px;"></span> </div>
               <div>Markting</div>
           </div>
             <div class="col subMenu" >
                <div><span data-feather="message-circle" class="align-text-bottom chagetoggler" style="width:24px; height:24px;"></span> </div>
               <div>Ask</div>
           </div>
   
  </div>
</nav>

        <script type="text/javascript">
          
            $(function () {
                feather.replace({ 'aria-hidden': 'true' })
                $("#loadingdv").css("display", "none");
            });
         
        </script>
 
      
    </form>
</body>
</html>
