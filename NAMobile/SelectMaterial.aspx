<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectMaterial.aspx.cs" Inherits="NAMobile.SelectMaterial" %>


<%@ Register Src="~/navTop.ascx" TagPrefix="uc1" TagName="navTop" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-au" >
<head runat="server">
        
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lib/jquery-3.6.0.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <title><%Response.Write(Session["WebTitle"]==null?"Norman Australia":Session["WebTitle"].ToString()); %></title>
    <style type="text/css">
        .card-text{font-weight:600;}
        .card{cursor:pointer;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:navTop runat="server" id="navTop" />
        <div class="container-fluid" >
                <div class="row" >
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mainpadding">
                      <div style="font-weight:600; font-size:1.03rem; padding-top:10px; padding-bottom:6px; border-bottom:solid 1px #ccc;">Program</div>
                      
                    <div class="album py-5 bg-light">
                        <div class="container text-center">

      <div class="row row-cols-2 row-cols-sm-3 row-cols-md-6 g-4">


        <div class="col" onclick="doSelect('Shutters')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/MDF CleanLook.gif" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">Woodlore</p>
          
            </div>
          </div>
        </div>

         <div class="col"  onclick="doSelect('Blinds')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/MDFP.gif" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">Woodlore Plus</p>
            
            </div>
          </div>
        </div>

        <div class="col"  onclick="doSelect('CellularShade')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/HardWood.gif" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">Brightwood</p>
            
            </div>
          </div>
        </div>

      <div class="col"  onclick="doSelect('Roller')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/Roller2.png" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">Normandy</p>
           
            </div>
          </div>
        </div>

       <div class="col"  onclick="doSelect('PerfectSheer')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/PerfectSheer.gif" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">Ultra</p>
            
            </div>
          </div>
        </div>

           <div class="col"  onclick="doSelect('DisplayTower')">
          <div class="card shadow-sm">
            <img src="css/images/base/progam/HandSample.gif" height="176" width="160" class="card-img-top" alt="..."/>
            <div class="card-body">
              <p class="card-text">MS4 Motorised Shutter Hand Sample</p>
            
            </div>
          </div>
        </div>

      </div>
    </div>
            </div>
                   <div style="display:none">
                       <asp:TextBox ID="txtProductType" runat="server"></asp:TextBox>
                   </div>


                  </main>
                 </div>
             </div>

        <script type="text/javascript">
            function doSelect(pd) {
                document.getElementById("txtProductType").value = pd;
               // document.getElementById("form1").action = "TorderAEdit.aspx";
                document.getElementById("form1").submit();
            }
            $(function () {
             
                $("#loadingdv").css("display", "none");
            });
         
        </script>
 
      
    </form>
</body>
</html>
