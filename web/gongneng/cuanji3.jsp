<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2021/1/5
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#listGroup li").click(function (){
                $(this).addClass("active");
                $(this).siblings().removeClass("active");
            })
          $("#listGroup li:eq(0)").click(function (){
                $("#cuanji").attr("src",'cpu.jsp')

          })
            $("#listGroup li:eq(1)").click(function (){
                $("#cuanji").attr("src",'zhuban.jsp')

            })

        })
    </script>
    <style>
       a{
           color: #444444;
       }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
         <div class="col-sm-4" >
             <div class="row">

                 <div class="panel panel-info text-center">
                     <!-- Default panel contents -->
                     <div class="panel-heading"><strong>装机配置单</strong></div>
                  <%--   <div class="panel-body">
                         <p style="color: #8c8c8c">科普那些你不一定知道的硬件知识,不知道自己的文采怎么样,不过不管怎么样,总得试试才知道。用不专业的眼光看待硬件,带你跟我一起入坑</p>
                     </div>--%>

                     <!-- List group -->
                     <ul class="list-group" id="listGroup">
                         <li class="list-group-item active" >
                             <div class="row">
                                   <div class="col-sm-2 "><strong>CPU</strong></div>
                                   <div class="col-sm-6  col-sm-offset-1 "><span style="color: #9d9d9d" id="name1">请选择商品</span></div>
                                   <div class="col-sm-2  col-sm-offset-1  "><a href="cpu.jsp" target="cuanji" style="text-decoration: none" id="price1">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>主板</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="zhuban.jsp" target="cuanji" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>内存</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>硬盘</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>固态硬盘</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>显卡</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>显示器</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>机箱</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>电源</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>散热器</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>鼠标</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>键盘</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>音箱</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>光驱</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>声卡</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>

                         <li class="list-group-item">
                             <div class="row">
                                 <div class="col-sm-2"><strong>网卡</strong></div>
                                 <div class="col-sm-6 col-sm-offset-1 "><span style="color: #9d9d9d">请选择商品</span></div>
                                 <div class="col-sm-2  col-sm-offset-1 text-info"><a href="#" style="text-decoration: none">添加</a></div>
                             </div>

                         </li>
                     <%--    <li class="list-group-item">
                             <div class="row">
                                   <div class="text-left col-sm-6">
                                         共计<span id="span1">0</span>项
                                   </div>
                                   <div class="text-right col-sm-6" >
                                       合计：￥<span id="span2">0</span>
                                   </div>
                             </div>
                         </li>--%>
                     </ul>

                     <div class="panel-footer">
                         <div class="row">
                             <div class="text-left col-sm-6">
                                 共计 <span id="span1">0</span> 项
                             </div>
                             <div class="text-right col-sm-6" style="color: red">
                                  <span style="color: black"> 合计：</span>   ￥<span id="span2" >0</span>
                             </div>
                         </div>
                     </div>
                 </div>


             </div>
         </div>
         <div class="col-sm-8 " >
             <iframe  src="cpu.jsp" width="100%" id="cuanji" name="cuanji" frameborder="0" scrolling="no" onload="this.height=cuanji.document.body.scrollHeight">

             </iframe>
         </div>
    </div>
</div>
</body>
</html>
