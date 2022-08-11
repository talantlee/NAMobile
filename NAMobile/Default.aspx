<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NAMobile._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <title><%Response.Write(Session["WebTitle"]==null?"Norman Australia":Session["WebTitle"].ToString()); %></title>
    <style type="text/css">
        html,
body {
  height: 100%;
}

body {
  display: flex;
  align-items: center;
  
  padding-bottom: 80px;
  background-color: #f5f5f5;
}

.form-signin {
  max-width: 360px;
  padding: 15px;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

#floatingInput {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}


    </style>
     <link href="css/dashboard.css" rel="stylesheet" />
</head>
<body class="text-center">
      <nav class="navbar bg-light fixed-top" aria-label="Light offcanvas navbar">
    <div class="container-fluid row">
  
         <div class="col d-md-none col-2 col-md-1">
             <span  data-feather="align-justify" class="align-text-bottom" style="width:32px; height:32px; cursor:pointer" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation"></span>

          </div>
         <div class="col col-8 col-md-10 text-center text-md-start"><img src="css/images/home_norman3.jpg" height="49" /></div>
     <div class="col col-2 col-md-1 text-end"><span data-feather="user" class="align-text-bottom chagetoggler" style="width:32px; height:32px;"></span></div>
     </div>

      

    
  </nav>
    <main class="form-signin w-100 m-auto">
         <form id="form1" runat="server" class="needs-validation" novalidate>
    <div style="border:1px solid black;background-color:#fff" id="dvAgreeterm" >
        <div style="border-bottom:1px solid black; height:39px; line-height:39px; font-weight:600; font-size:1.05rem; background-color:#cccccc" class="text-start ps-3">NOTICE</div>
        <div class="p-2" >
            Welcome to Norman Australia Pty Ltd’s online platform, where you can place your order for Shutters Blinds & Shades.<br /><br />
            A. By accessing our Site you confirm that you have read, understood and accept Normans Terms of Trade that govern your order of goods to which you will be bound by, and our privacy policy without limitation or qualification.<br />
B. We may modify these Terms of Trade and / or the content of our Site without notice. All changes are effective immediately upon posting to our site.<br />
C. if you have any questions, please contact our Customer Service team on (07) 3256 1068.<br />
I agree to the Norman Australia Pty Ltd Terms of Trade and Privacy Policy. </div>
    <div class="p-2">
         <button type="button" onclick="agreecodi()"  class="btn-na">Aggree</button>


    </div>
    </div>
    <div id="dvLogin" class="d-none">
    <h5 class="mb-3 fw-normal" style="color:#aaa">Let The Sun Shine Your Way</h5>

    <div class="form-floating">
     
        <asp:TextBox ID="floatingInput" runat="server" CssClass="form-control" placeholder="User ID" Text="admin"  required></asp:TextBox>
      <label for="floatingInput">User ID</label>
    </div>

    <div class="form-floating" >
         <asp:TextBox ID="floatingPassword" runat="server" TextMode="Password" CssClass="form-control"  placeholder="Login ID" required ></asp:TextBox>
    
      <label for="floatingPassword">Password</label>
    </div>
    <input type="button" value="Register" class="btn-na btn-na-grey" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btn_submit" runat="server" CssClass="btn-na" Text=" Login "  OnClick="btn_submit_Click" />
    
              <div class="row" style="padding-top:10px;color:red">
               <asp:Label ID="lblmess" runat="server"></asp:Label>
                  </div>
    </div>
  </form>
</main>
     <script src="lib/feather.min.js" type="text/javascript"></script>
    <script type="text/javascript">
      
        (function () {
            'use strict'
            document.getElementById("floatingPassword").value = "123456";
            feather.replace({ 'aria-hidden': 'true' })
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
        function agreecodi() {
           
            document.getElementById("dvAgreeterm").classList.add("d-none");
            document.getElementById("dvLogin").classList.remove("d-none");
        }

    </script>

</body>
</html>
