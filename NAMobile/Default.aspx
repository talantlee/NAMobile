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
  
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  max-width: 330px;
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
</head>
<body class="text-center">
    <main class="form-signin w-100 m-auto">
         <form id="form1" runat="server" class="needs-validation" novalidate>
    <div><img src="css/images/home_norman3.jpg" /></div>
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
     
        <asp:TextBox ID="floatingInput" runat="server" CssClass="form-control" placeholder="Login ID" required></asp:TextBox>
      <label for="floatingInput">Login ID</label>
    </div>
    <div class="form-floating" >
         <asp:TextBox ID="floatingPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Login ID" required></asp:TextBox>
    
      <label for="floatingPassword">Password</label>
    </div>

  
     <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" Text="Sign in"  OnClick="btn_submit_Click" />
    
              <div class="row" style="padding-top:10px;color:red">
               <asp:Label ID="lblmess" runat="server"></asp:Label>
                  </div>
  </form>
</main>

    <script type="text/javascript">
      
           (function () {
               'use strict'

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
           })()

    </script>

</body>
</html>
