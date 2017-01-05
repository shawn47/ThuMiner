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
    <script src="/ThuMiner/resources/js/commons/echarts.common.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="/ThuMiner/resources/css/commons/bootstrap.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="styles/bootstrap-theme.min.css"> -->

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
            <li role="presentation" ><a href="main">Map</a></li>
            <li role="presentation" class="active"><a href="#Statistics" role="tab" data-toggle="tab">Statistics</a></li>
            <li role="presentation" ><a href="cases">Cases</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="Statistics">
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-1 col-md-1 sidebar">
                <ul class="nav nav-sidebar">
                  <li class="active"><a href="#">Overview</a></li>
                  <li><a href="#">Activity</a></li>
                </ul>
              </div>
              <div role="tabpanel" class="tab-pane active" id="Overview">
                <div class="col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1 sidebar">
                  <ul class="nav nav-sidebar">
                    <li><a href="statistics">Events over time</a></li>
                    <li><a href="active-cases">Active Cases</a></li>
                    <li><a href="main2">Cases Variants</a></li>
                    <li><a href="main3">Events Percase</a></li>
                    <li><a href="case-duration">Case Duration</a></li>
                    <li><a href="case-utilization">Case Utilization</a></li>
                    <li><a href="meanactivityduration">Mean Activity Duration</a></li>
                    <li class="active"><a href="#meanwaitingtime">Mean Waiting Time</a></li>
                  </ul>
                 </div>
                </div>
                <div class="tab-content">
                <div id="eventsovertime" class="tab-pane fade in active">
                <div class="col-sm-8 col-sm-offset-3 col-md-9 col-md-offset-3 main"> 
                <div class="col-md-8">
                      <h2>Overview</h2>
                      <div id="test2" style="width: 600px;height:280px;"></div>
                </div>
                <div class="col-md-4">
                  <div><h3 class="text-center"><b>Information</b></h3><br>
                  <td><div style="float:left;">Events:</div><div style="float:right;">7435</div></td> <br/>
                  <td><div style="float:left;">Cases: </div><div style="float:right;">3885</div></td> <br/>
                  <td><div style="float:left;">Activities:</div><div style="float:right;">6</div></td> <br/>
                  <td><div style="float:left;">Median case duration:</div><div style="float:right;">5 mins</div></td> <br/>
                  <td><div style="float:left;">Mean case duration:</div><div style="float:right;">62.2 hrs</div></td> <br/>
                  <td><div style="float:left;">Start:</div><div style="float:right;">01.03.2010 01:05:00</div></td> <br/>
                  <td><div style="float:left;">End:</div><div style="float:right;">30.04.2010 01:05:00</div></td> <br/>

                  </div>
                </div>
                <div class="col-xl-12">
                <div class="col-md-5 col-md-offset-4">
                      <ul class="nav nav-tabs">
                          <li class="active"><a data-toggle="tab" href="#cases">Cases(number)</a></li>
                          <li ><a data-toggle="tab" href="#variants">Variants(number)</a></li>
                      </ul>
                      <br>
                </div>
                <div class="tab-content">
            <div id="cases" class="tab-pane fade in active">
                <table id="overview-cases" class="table table-striped table-bordered" cellspacing="0" width="120%" >
        <thead>
            <tr>
                <th>Case ID</th>
                <th>Events</th>
                <th><div style="width:50px"></th>
                <th>Variant</th>
                <th>Started</th>
                <th>Finished</th>
                <th>Duration</th>
                <th><div style="width:50px"></th>
            </tr>
        </thead>
         <tbody>
            <tr>
                <td>Case 1</td>
                <td>1</td>
                <td>
            <div class='progress progress'>
                <div class="progress-bar" role="progressbar" style="width: 6.45%;">
                </div>
            </div>
          </td>
                <td>Variant 1</td>
                <td>19.03.2010 15:58:00</td>
                <td>19.03.2010 15:59:00</td>
                <td>1 Min</td>
                <td>
            <div class='progress progress'>
                <div class="progress-bar" role="progressbar" style="width: 97%;">
                </div>
            </div>
          </td>
            </tr>
            
            
        </tbody>
    </table>
    </div>
            <div id="variants" class="tab-pane fade">
                <table id="overview-cases" class="table table-striped table-bordered" cellspacing="0" width="120%" >
        <thead>
            <tr>
                <th>Variant</th>
                <th>Cases</th>
                <th><div style="width:20px"></div></th>
                <th>Events</th>
                <th><div style="width:20px"></div></th>
                <th>Median duration</th>
                <th><div style="width:30px"></div></th>
                <th>Mean Duration</th>
                <th><div style="width:30px"></div></th>
            </tr>
        </thead>
         <tbody>
            <tr>
                <td>Variant 35</td>
                <td>5</td>
                <td>
                <div class='progress progress'>
                    <div class="progress-bar" role="progressbar" style="width:3%;">
                    </div>
                </div>
                </td>
                <td>3</td>
                <td>
                <div class='progress progress'>
                    <div class="progress-bar" role="progressbar" style="width:25%;">
                    </div>
                </div>
                </td>
                <td>1 day, 1 hour</td>
                <td>
                <div class='progress progress'>
                    <div class="progress-bar" role="progressbar" style="width:6%;">
                    </div>
                </div>
                </td>
                <td>1 day, 14 hours</td>
                <td>
            <div class='progress progress'>
                <div class="progress-bar" role="progressbar" style="width: 6%;">
                </div>
            </div>
          </td>
            </tr>
            
            
        </tbody>
    </table>
    </div>
    </div>
                </div>
                <div>
              </div>
              </div>
            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="Map">map</div>
        <div role="tabpanel" class="tab-pane" id="contact">contact</div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/ThuMiner/resources/js/commons/jquery-3.1.1.min.js"></script>
    <script src="/ThuMiner/resources/js/commons/bootstrap.min.js"></script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('test2'));

option = {

    tooltip: {
        trigger: 'axis',
        formatter:'up to  {b0} mins<br/>{a0}: {c0}'
    },

    toolbox: {
        feature: {
          dataZoom: {
            },
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },
    legend: {
        data:['Number of cases']
    },
    xAxis: [
        {
            show:false,
            type: 'category',
            data: ['1','2','3','4','5','6','7','8','9','10','11','12','13','14']
        }
    ],
    yAxis: [
        {
            type: 'value',
            name: '',
            min: 0,
            max: 5000,
            interval: 1000,
            axisLabel: {
                formatter: '{value}'
            }
        }
    ],
    series: [
        {
            name:'Number of cases',
            type:'bar',
            itemStyle: {
                normal: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            {offset: 0, color: '#83bff6'},
                            {offset: 0.5, color: '#188df0'},
                            {offset: 1, color: '#188df0'}
                        ]
                    ),
            barGap:'0%',
            barWidth: 30,
            maxbarwidth:30,
            barCategoryGap:'-100%',
            }},
            data:[2843,216,124,71,57,25,11,10,9,8,7,6,5,4],
        }
    ]
};
        myChart.setOption(option);
    </script>

  </body>
</html>
