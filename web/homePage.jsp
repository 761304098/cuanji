<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2020/11/5
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>散件攒机系统</title>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>

    </style>
    <script type="text/javascript">
          $(function (){
               $("#li-three li").click(function (){
                   $(this).addClass("active");
                   $(this).siblings().removeClass("active");
               })
          })
    </script>
</head>
<body>
<div class="container">
    <div class="row">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> 散件攒机系统</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav" id="li-three">
                        <li class="active"><a target="shouye" href="gongneng/cuanji.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">配件</a></li>
                        <li><a target="shouye" href="gongneng/cuanji3.jsp">模拟攒机</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                            <c:if test="${empty sessionScope.userLoginInfo}">
                                <li>
                                    <a href="loginPage">登录</a>
                                </li>
                            </c:if>

                 <%--       <li class="divider-vertical">
                        </li>--%>
                        <c:if test="${not empty sessionScope.userLoginInfo}">
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="glyphicon glyphicon-user"></span>
                                    <span id="user" style="color: red; font-weight: bolder">${sessionScope.userLoginInfo}</span>
                                    <strong class="caret"></strong>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="changePasswordPage">修改密码</a>
                                    </li>
                                  <%--  <li>
                                        <a href="#">下拉导航2</a>
                                    </li>
                                    <li>
                                        <a href="#">其他</a>
                                    </li>--%>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="logout">注销</a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>

                   <%--     <li>
                            <a href="#">欢迎:
                                <span class="glyphicon glyphicon-user"></span>
                                <span id="user" style="color: red; font-weight: bolder">${sessionScope.userLoginInfo}</span>
                        </a></li>--%>
                    </ul>


                 <%--   <ul class="nav pull-right">

                    </ul>--%>

                    <%--   <form class="navbar-form navbar-right">
                           <div class="form-group">
                               <input type="text" class="form-control" placeholder="Search">
                           </div>
                           <button type="submit" class="btn btn-success">搜配件</button>
                       </form>--%>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

    </div>
        <iframe  src="gongneng/cuanji.jsp" width="100%" id="shouye" name="shouye" frameborder="0" scrolling="no" onload="this.height=shouye.document.body.scrollHeight">

        </iframe>

<%--
    <div class="row">
        <div class="span12">
            <div class="carousel slide" id="carousel-482300" data-ride="carousel" data-interval="3000">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-482300">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-482300">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-482300" class="active">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" src="photo/4.png"/>
                        <div class="carousel-caption">
                            <h4>
                                主板
                            </h4>
                            <p>
                                随着AMD锐龙5000系列处理器的性能解禁，华硕发布的ROG CROSSHAIR VIII DARK HERO主板也彰显出其过硬实力。一举打破1项世界纪录，斩获15项全球第一，并将16核心的AMD锐龙9 5950X处理器成功超频至全核6075MHz，可以说是新一代Zen3处理器当之无愧的超频神器！
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="photo/5.png" />
                        <div class="carousel-caption">
                            <h4>
                                处理器
                            </h4>
                            <p>
                                英特尔之前发布了11代核心处理器，但第一次见到你的是低压笔记本，关于11代桌面核心处理器的消息并不多，但是对于英特尔来说，AMD的锐龙5000处理器的出现也给它带来了很大的压力，在今天清晨，英特尔突然宣布了11代核心处理器桌面的参数，这是一个很大的惊喜。
                            </p>
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="" src="photo/6.png" />
                        <div class="carousel-caption">
                            <h4>
                                显卡
                            </h4>
                            <p>
                                据报道，RX 6000XT基于RDNA2架构的Navi 21XT核心，内置4608流处理器，匹配16GB GDDR6显存和128MB缓存，AMD官方展示性能甚至小超RTX 3080。
                            </p>
                        </div>
                    </div>
                </div> <a data-slide="prev" href="#carousel-482300" class="left carousel-control"></a>
                <a data-slide="next" href="#carousel-482300" class="right carousel-control"></a>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-sm-8 " >
            <div class="row" style="border-bottom: 2px blue solid">
                    <h2>硬件新闻</h2>
            </div>

            <div class="row">
                <ul class="list-unstyled">
                    <table class="table table-hover">
                        <tr>
                            <td>
                                <img src="photo/7.jpg"/>
                            </td>

                            <div class="col-sm-7" >
                                <td>
                                    <h4 class="text-center">PC逆全球市场上扬 联想继续蝉联出货第一</h4>
                                    <p style="color: grey">近日，调研机构IDC正式发布了一份最新的报告，报告中显示，第三季度全球PC出货量为8130万台，同比增长14.6%。联想集团继续以23.7%的市场份额排在第一位，出货量为1927万台。</p>
                                </td>
                            </div>

                        </tr>
                        <tr>
                            <td>
                                <img src="photo/8.jpg"/>
                            </td>

                            <div class="col-sm-7" >
                                <td>
                                    <h4 class="text-center">苹果自研芯片由台积电独家代工 </h4>
                                    <p style="color: grey">10月13日，据中国台湾经济日报报道，近日有供应链消息显示，今天凌晨新款iPhone发布后，苹果可能在11月再次举行新品发布会，主角是苹果自主研发芯片Apple Silicon的 MacBook。这一芯片是由台积电独家代工，笔记本电脑成品组装厂为广达。</p>
                                </td>
                            </div>
                        </tr>
                        <tr>
                            <td>
                                <img src="photo/9.jpg"/>
                            </td>

                            <div class="col-sm-7" >
                                <td>
                                    <h4 class="text-center">戴尔发布新一代XPS 13系列 强大性能再升 </h4>
                                    <p style="color: grey">戴尔发布新一代XPS 13系列，包括XPS 13二合一、XPS 13。新品均搭载英特尔最新11代处理器、提升内存，并配置雷电4接口。XPS 13、XPS 13二合一，XPS 2020笔记本电脑系列采用礼盒式包装，包装材料由可持续材料制成，包括海洋回收塑料、本地回收塑料以及可回收瓦楞纸。</p>
                                </td>
                            </div>






                        </tr>

                    </table>



                </ul>


            </div>
        </div>
        <div class="col-sm-4 ">
            <div class="row">

                <div class="panel panel-info">
                    <!-- Default panel contents -->
                    <div class="panel-heading">硬件百科</div>
                    <div class="panel-body">
                        <p style="color: #8c8c8c">科普那些你不一定知道的硬件知识,不知道自己的文采怎么样,不过不管怎么样,总得试试才知道。用不专业的眼光看待硬件,带你跟我一起入坑</p>
                    </div>

                    <!-- List group -->
                    <ul class="list-group">
                        <li class="list-group-item"><a href="content/1.jsp">SSD固态硬盘的GC与Trim得区别</a></li>
                        <li class="list-group-item"><a href="content/2.jsp">镁光DDR5规格书</a></li>
                        <li class="list-group-item"><a href="content/3.jsp">影驰 HOF Pro 性能参数</a></li>
                        <li class="list-group-item"><a href="content/4.jsp">i3 9100F到底有多香？相当于几代i5？</a></li>
                        <li class="list-group-item"><a href="content/5.jsp">主板、显卡的全新工包是什么意思</a></li>
                        <li class="list-group-item"><a href="content/6.jsp">激光鼠标和光电鼠标哪个好？</a></li>
                        <li class="list-group-item"><a href="content/7.jsp">电源全模组、非模组、全模组、半模组、直出之间的区别</a></li>
                        <li class="list-group-item"><a href="content/8.jsp">Thermal Velocity Boost是什么意思？</a></li>
                        <li class="list-group-item"><a href="content/9.jsp">TDP、SDP、ACP、GCP、TBP是什么意思？</a></li>
                        <li class="list-group-item"><a href="content/10.jsp">内存条带宽的换算方法以及DDR4内存理论带宽</a></li>
                    </ul>
                    <div class="panel-footer"><span style="color: orangered;font-weight: bolder">开始攒机</span></div>
                </div>


            </div>
        </div>

    </div>--%>


</div>
</body>
</html>
