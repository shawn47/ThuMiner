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

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/ThuMiner/resources/css/commons/bootstrap.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="../../resources/css/commons/bootstrap-theme.min.css"> -->

    <!-- Custom styles for this template -->
    <link href="/ThuMiner/resources/css/mainPage/mainPage.css" rel="stylesheet">
    
    <!-- echarts -->
    <script src="/ThuMiner/resources/js/commons/echarts.common.min.js"></script>
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
            <li role="presentation" ><a href="main">Map</a></li>
            <li role="presentation" ><a href="statistics">Statistics</a></li>
            <li role="presentation" class="active"><a href="#cases" role="tab" data-toggle="tab">Cases</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="tab-content">
      <div role="tabpanel" class="tab-pane" id="map">
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

      <div role="tabpanel" class="tab-pane active" id="cases">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-1 sidebar">
              <ul class="nav nav-sidebar">
                <li class="active"><a href="#">Variant1</a></li>
                <li><a href="#">Variant2</a></li>
                <li><a href="#">Variant3</a></li>
                <li><a href="#">Variant4</a></li>
                <li><a href="#">Variant5</a></li>
                <li><a href="#">Variant6</a></li>
                <li><a href="#">Variant7</a></li>
                <li><a href="#">Variant8</a></li>
                <li><a href="#">Variant9</a></li>
                <li><a href="#">Variant10</a></li>
                <li><a href="#">Variant11</a></li>
                <li><a href="#">Variant12</a></li>
                <li><a href="#">Variant13</a></li>
                <li><a href="#">Variant14</a></li>
                <li><a href="#">Variant15</a></li>
                <li><a href="#">Variant16</a></li>
                <li><a href="#">Variant17</a></li>
                <li><a href="#">Variant18</a></li>
                <li><a href="#">Variant19</a></li>
              </ul>
            </div>
            <div class="col-md-1 col-md-offset-1 sidebar">
              <ul class="nav nav-sidebar">
                <li class="active"><a href="#">Case1</a></li>
                <li><a href="#">Case2</a></li>
                <li><a href="#">Case3</a></li>
                <li><a href="#">Case4</a></li>
                <li><a href="#">Case5</a></li>
                <li><a href="#">Case6</a></li>
                <li><a href="#">Case7</a></li>
                <li><a href="#">Case8</a></li>
                <li><a href="#">Case9</a></li>
                <li><a href="#">Case10</a></li>
                <li><a href="#">Case11</a></li>
                <li><a href="#">Case12</a></li>
                <li><a href="#">Case13</a></li>
                <li><a href="#">Case14</a></li>
                <li><a href="#">Case15</a></li>
                <li><a href="#">Case16</a></li>
                <li><a href="#">Case17</a></li>
                <li><a href="#">Case18</a></li>
                <li><a href="#">Case19</a></li>
              </ul>
            </div>
            <div class="col-md-10 col-md-offset-2">
              <div class="row" style="margin-bottom:10px">
                <div id="echartsDOM" class="col-md-8" style="width:60%;height:35%;"></div>
                <div class="col-md-4">
                  <div class="jumbotron" style="height:35%; margin-bottom:5px; margin-top:5px;">
                    <h3 class="text-center">Information</h3>
                    <dl class="dl-horizontal">
                      <dt>Start Time:</dt>
                      <dd>2016-08-09-11:12:26:300</dd>
                      <dt>End Time:</dt>
                      <dd>2016-08-09-11:15:26:300</dd>
                      <dt>Events:</dt>
                      <dd>2</dd>
                    </dl>
                  </div>
                </div>
              </div>
              <div class="row">
                <ul class="nav nav-tabs  nav-justified">
                  <li class="active"><a href="#graph" data-toggle="tab">Graph</a></li>
                  <li><a href="#table" data-toggle="tab">Table</a></li>
                </ul>
              </div>
              <div class="row">
                <div class="tab-content">
                  <div class="tab-pane active" id="graph">
                    <div class="row">
                      <div class="col-md-2 col-md-offset-5">
                        <h4 class="text-center"><span class="glyphicon glyphicon-certificate"></span></h4>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 col-md-offset-3">
                        <div class="panel panel-primary" style="margin-bottom:0px">
                          <div class="panel-heading">
                            <h4 class="panel-title text-center">Event1</h4>
                          </div>
                          <div class="panel-body">
                            <p class="text-center">INFO</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-2 col-md-offset-5">
                        <h4 class="text-center"><span class="glyphicon glyphicon-arrow-down"></span></h4>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 col-md-offset-3">
                        <div class="panel panel-primary" style="margin-bottom:0px">
                          <div class="panel-heading">
                            <h4 class="panel-title text-center">Event2</h4>
                          </div>
                          <div class="panel-body">
                            <p class="text-center">INFO</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-2 col-md-offset-5">
                        <h4 class="text-center"><span class="glyphicon glyphicon-ok-sign"></span></h4>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane" id="table">
                    <div class="row">
                      <div class="panel panel-primary" style="margin-top:10px;margin-left:20px;margin-right:20px;">
                        <div class="panel-heading">Events</div>
                        <table class="table">
                          <thead>
                            <tr>
                              <th>NO.</th>
                              <th>Starttime</th>
                              <th>Endtime</th>
                              <th>Duration</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>2016-08-09-11:12:26:300</td>
                              <td>2016-08-09-11:12:26:600</td>
                              <td>300</td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>2016-08-09-11:12:41:300</td>
                              <td>2016-08-09-11:12:42:100</td>
                              <td>800</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/ThuMiner/resources/js/commons/jquery-3.1.1.min.js"></script>
    <script src="/ThuMiner/resources/js/commons/bootstrap.min.js"></script>
    <script type="text/javascript">
    	<!-- start for getting data for table -->
    	$.ajax({
    		url: "/ThuMiner/queryCasesData",
    		method: "GET",
    		success: function(result) {
    			console.log(result);
    		},
    		error: function(result) {
    			console.log(result);
    		}
        });
    	<!-- end for getting data for table -->
    
    
        var data = [];
        var value = [100];
        var timeIndex = new Date();
        timeIndex.setFullYear(2016);
        timeIndex.setMonth(7);
        timeIndex.setDate(9);
        timeIndex.setHours(11);
        timeIndex.setMinutes(12);
        timeIndex.setSeconds(26);
        timeIndex.setMilliseconds(56);
        for (var i = 0; i <= 1000; i++) {
            value[i + 1] = Math.round((Math.random() - 0.5) * 8) + value[i];
            data[i] = [timeIndex.setMilliseconds(timeIndex.getMilliseconds() + 500), value[i]];
        };
        var myChart = echarts.init(document.getElementById('echartsDOM'));
        var option = {
            grid:{
                x:25,
                y:15,
                x2:5,
                y2:20,
                borderWidth:1
            },
            xAxis: {
                type: 'time'
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    type: 'line',
                    symbol: 'none',
                    smooth:true,
                    itemStyle: {
                        normal: {
                            color: 'rgb(70, 140, 200)'
                        }
                    },
                    areaStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                offset: 0,
                                color: 'rgb(70, 140, 200)'
                            }, {
                                offset: 1,
                                color: 'rgb(180, 255, 255)'
                            }])
                        }
                    },
                    data: data
                }
            ]
        };
        myChart.setOption(option);
    </script>
  </body>
</html>