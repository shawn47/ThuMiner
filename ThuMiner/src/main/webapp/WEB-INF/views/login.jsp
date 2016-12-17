<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin for ThuMiner</title>

    <!-- Bootstrap core CSS -->
    <link href="/ThuMiner/resources/css/commons/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/ThuMiner/resources/css/logInPage/signin.css" rel="stylesheet">
  </head>
s
  <body>

    <div class="container">

      <form class="form-signin" role="form" action="user/login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="email" class="form-control" placeholder="Email address" required autofocus name="username">
        <input type="password" class="form-control" placeholder="Password" required name="password">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
  </body>
</html>
