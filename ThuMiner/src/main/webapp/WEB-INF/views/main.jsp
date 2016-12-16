<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/ThuMiner/resources/css/commons/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/ThuMiner/resources/css/mainPage/mainPage.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">ThuMiner</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
            <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">Home</a></li>
            <li role="presentation" ><a href="#about" role="tab" data-toggle="tab">About</a></li>
            <li role="presentation" ><a href="#contact" role="tab" data-toggle="tab">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                  <li class="active"><a href="#">Overview</a></li>
                  <li><a href="#">Reports</a></li>
                  <li><a href="#">Analytics</a></li>
                  <li><a href="#">Export</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                  <li><a href="">Nav item</a></li>
                  <li><a href="">Nav item again</a></li>
                  <li><a href="">One more nav</a></li>
                  <li><a href="">Another nav item</a></li>
                  <li><a href="">More navigation</a></li>
                </ul>
                <ul class="nav nav-sidebar">
                  <li><a href="">Nav item again</a></li>
                  <li><a href="">One more nav</a></li>
                  <li><a href="">Another nav item</a></li>
                </ul>
              </div>
              <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Something</h1>

                <h2 class="sub-header">Something else</h2>
                
              </div>
            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="about">about</div>
        <div role="tabpanel" class="tab-pane" id="contact">contact</div>
      </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/ThuMiner/resources/js/commons/jquery-3.1.1.min.js"></script>
    <script src="/ThuMiner/resources/js/commons/bootstrap.min.js"></script>
  </body>
</html>
