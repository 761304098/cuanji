<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2021/1/5
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
       #liebiao li a{
            margin-left: 2%;
            text-decoration: none;
        }
    </style>
</head>
<body>
        <div class="container-fluid">
                 <div class="row">
                     <div class="panel panel-default">
                         <div class="panel-heading"><strong>请选择<span style="color: deeppink">CPU</span></strong></div>
                          <ul class="list-unstyled list-group" style="margin-left:2% " id="liebiao">
                               <li class="list-group-item" >
                                   <span style="color:#5e5e5e;">推荐品牌：</span>
                                   <a href="#" >Intel</a>
                                   <a href="#">AMD</a>
                                   <a href="#">龙芯</a>
                               </li>
                              <li class="list-group-item">
                                  <span style="color:#5e5e5e;">价格区间：</span>
                                  <a href="#">500元以下</a>
                                  <a href="#">500-1499元</a>
                                  <a href="#">1500元以上</a>
                              </li>
                              <li class="list-group-item">
                                  <span style="color:#5e5e5e;">CPU系列：</span>
                                  <a href="#">Intel</a>
                                  (<a href="#" style="margin-left: 0%">酷睿i9</a>
                                  <a href="#">酷睿i5</a>
                                  <a href="#">酷睿i3</a>
                                  <a href="#">奔腾</a>
                                  <a href="#">赛扬</a>
                                  <a href="#">XeonW</a>
                                  <a href="#">XeonE</a>)
                                  <a href="#">AMD</a>
                                  (<a href="#" style="margin-left: 0%">RyzenThreadripper</a>
                                  <a href="#">Ryzen9</a>
                                  <a href="#">Ryzen7</a>
                                  <a href="#">Ryzen5</a>
                                  <a href="#">Ryzen3</a>
                                  <a href="#">APU</a>
                                  <a href="#">推土机FX</a>)

                              </li>
                              <li class="list-group-item">
                                  <span style="color:#5e5e5e;">插槽类型：</span>
                                  <a href="#">Intel</a>
                                  (<a href="#" style="margin-left: 0%">LGA1200</a>
                                  <a href="#">LGA2066</a>
                                  <a href="#">LGA2011-v3</a>
                                  <a href="#">LGA2011</a>
                                  <a href="#">LGA1151</a>
                                  <a href="#">LGA1150</a>
                                  <a href="#">LGA1155</a>
                                  <a href="#">LGA775</a>
                                  <a href="#">BGA</a>)
                                  <a href="#">AMD</a>
                                  (<a href="#" style="margin-left: 0%">SocketTR4</a>
                                  <a href="#">SocketsTRX4</a>
                                  <a href="#">SocketAM4</a>
                                  <a href="#">SocketAM3+</a>
                                  <a href="#">SocketAM3</a>
                                  <a href="#">SocketFM2+</a>
                                  <a href="#">SocketFM2</a>
                                  <a href="#">SocketFM1</a>)
                              </li>

                              <li class="list-group-item">
                                  <span style="color:#5e5e5e;">核心数量：</span>
                                  <a href="#">十六核心</a>
                                  <a href="#">十二核心</a>
                                  <a href="#">十核心</a>
                                  <a href="#">八核心</a>
                                  <a href="#">六核心</a>
                                  <a href="#">四核心</a>
                                  <a href="#">三核心</a>
                                  <a href="#">双核心</a>
                              </li>

                              <li class="list-group-item">
                                  <span style="color:#5e5e5e;">集成显卡：</span>
                                  <a href="#">是</a>
                                  <a href="#">否</a>

                              </li>

                          </ul>
                     </div>
                 </div>
        </div>
</body>
</html>
