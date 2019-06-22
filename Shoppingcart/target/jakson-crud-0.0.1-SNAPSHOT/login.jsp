

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<html>
  <head>
  <link href="./static/css/style.css" type="text/css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  </head>
<body id="LoginForm">
<div class="space">

</div>
<div class="container">


<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Admin Login</h2>
   <p>Please enter your email and password</p>
        <span style="color: red">"${msg}"</span>
   </div>
    <form  action="/login" method="post" id="Login">

        <div class="form-group">
       <input type="text" class="form-control" name="userName" id="userName" placeholder="User Name"/>
        </div>

        <div class="form-group">

            <!--<input type="password" class="form-control" id="inputPassword" placeholder="Password">-->
            <input type="password" class="form-control" name="passWord" id="passWord" placeholder="Password" />
        </div>

        <div class="formElement">
            <label><input type="checkbox" name="keepLogged" id="keepLogged" value="1" /> Remember me</label>
        </div>
        <div class="forgot">
        <a href="">Forgot password?</a>
</div>
        <!--<button type="submit" class="btn btn-primary">Login</button>-->
        <div id="submitionBlock">
            <button id="btnSubmit" class="btn btn-primary">Log in</button>
        </div>
    </form>
    </div>
</div></div></div>


</body>
</html>