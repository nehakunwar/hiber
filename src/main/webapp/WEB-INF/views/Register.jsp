<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }

  </style>
</head>

<title>Register to Site</title>
<style>
</style>
</head>
<body bgcolor="pink">
<div class="header">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
        <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color:#0000FF;background:pink;">
         <img src="C:\Users\user\Documents\Presentation1\logo.png" align=left> 
      <ul class="nav navbar-nav navbar-right">
                    
            <li><a href="Products">Product</a></li>
            <li><a href="index">Home</a></li>
            <li><a href="Register">Register</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>

<table align=center bgcolor="yellow">
<form  action="" method="post"  style="display: block;">
<tr><td>Enter User ID:</td><td><input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value=""></td></tr>
<tr><td>Enter Password:</td><td><input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password"></td></tr>
<tr><td><input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In"></td><td><input type="Reset"></td></tr>
</form>
</table>
<div align="left" style="color:#0000FF;background:pink;">
<font size=3><a href="">About Us</a><a href="">Contact</a></font>
   <img src="C:\Users\user\Documents\Presentation1\fb.png" width=25 height=25 align=right>
  <img src="C:\Users\user\Documents\Presentation1\twitter.png" width=25 height=25 align=right>
  <img src="C:\Users\user\Documents\Presentation1\g+.png" width=25 height=25 align=right>

  </div>

</body>
</html>
