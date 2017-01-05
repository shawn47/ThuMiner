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
            <li role="presentation" class="active"><a href="#map" role="tab" data-toggle="tab">Map</a></li>
            <li role="presentation" ><a href="statistics.html">Statistics</a></li>
            <li role="presentation"><a href="cases.html">Cases</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="map">
        <div class="container-fluid">
          <div class="container-fluid">
            <div id="main" class="row" style="padding:10px; text-align:center">
              <div class="col-xs-9" style="height:100%">
                <svg id="svg" style="width:100%; height:90%"></svg>
            <div style="width:100%; height:10%">
              <div class="row">
                <div class="col-xs-1">
                  <button id="play" type="button" class="btn btn-default" aria-label="播放">
                    <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                  </button>
                </div>
                <div class="col-xs-7">
                  <input id="position" class="form-control" type="range" min="0" max="100"  step="0.01" value="0" />
                </div>
              <div class="col-xs-2">
                  <input id="playSpeed" class="form-control" type="range" min="1" max="100" step="0.01" value="50"/>
                </div>
                <div class="col-xs-1">
                  <button id="resize" type="button" class="btn btn-default" aria-label="缩放还原">
                    <span class="glyphicon glyphicon-resize-small" aria-hidden="true"></span>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div id="aside" class="col-xs-3" style="height:100%; text-align:center">
            <div id="edgetype-form" class="form-group">
              <div class="row">
                <div class="col-lg-4">
                  <label for="edgetype" style="height:34px; padding:6px 0px; margin-bottom:0">边类型：</label>
                </div>
                <div class="col-lg-8">
                  <select id="edgetype" class="form-control">
                    <option>case_frequency</option>
                    <option>event_frequency</option>
                    <option>total_duration</option>
                    <option>min_duration</option>
                    <option>max_duration</option>
                  </select>
                </div>
              </div>
            </div>
            <div id="threshold-form" class="form-group">
              <div class="row">
                <div class="col-lg-4">
                  <label for="threshold" style="height:34px; padding:6px 0px; margin-bottom:0">边比例：</label>
                </div>
                <div class="col-lg-6">
                  <input id="threshold" class="form-control" type="range" min="0" max="100" value="20" />
                </div>
                <div class="col-lg-2">
                  <label id="threshold-value" style="height:34px; padding:6px 0px; margin-bottom: 0"></label>
                </div>
              </div>
            </div>
            <div id="chart">
            </div>
            <div id="table">
              <table class="table table-bordered">
                <tr>
                  <th style="text-align:center">属性名</th>
                  <th style="text-align:center">属性值</th>
                <tr>
                <tr>
                  <td><label id="property-name-1" for="property-value-1" style="height:34px; padding:6px 0px; margin-bottom:0"></label></td>
                  <td><input id="property-value-1" class="form-control" type="text" style="text-align:center" disabled="true" /></td>
                <tr>
                <tr>
                  <td><label id="property-name-2" for="property-value-2" style="height:34px; padding:6px 0px; margin-bottom:0"></label></td>
                  <td><input id="property-value-2" class="form-control" type="text" style="text-align:center" /></td>
                <tr>
              </table>
            </div>
          </div>
            </div>
          </div>
          <div class="modal fade" id="loading" tabindex="-1" role="dialog" aria-labelledby="loadingLabel" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="loadingLabel">Loading</h4>
            </div>
            <div class="modal-body">
              <div class="progress">
                <div class="progress-bar progress-bar-striped active" role="progresbar" style="width: 100%">
                </div>
              </div>
            </div>
          </div>
            </div>
          </div>
        </div>
      </div>

      <div role="tabpanel" class="tab-pane" id="about">Statistics</div>

      <div role="tabpanel" class="tab-pane" id="cases">
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
              <div class="row" id="caseMainPanel">
                <ul class="nav nav-tabs  nav-justified">
                  <li class="active"><a href="#caseGraph" data-toggle="tab">Graph</a></li>
                  <li><a href="#caseTable" data-toggle="tab">Table</a></li>
                </ul>
              </div>
              <div class="row">
                <div class="tab-content">
                  <div class="tab-pane active" id="caseGraph">
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
                  <div class="tab-pane" id="caseTable">
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
    <script src="/ThuMiner/resources/js/commons/d3.min.js"></script>
    <script src="/ThuMiner/resources/js/commons/highcharts.js"></script>
    <script src="/ThuMiner/resources/js/map/map.js"></script>
    <script type="text/javascript">
      $('#navbar a[href="#cases"]').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
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
      });
    </script>
  </body>
</html>