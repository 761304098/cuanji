<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2020/11/4
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>散件攒机登录系统</title>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
            /*web background*/

        .container{
            display:table;
            height:100%;
        }

        .row{
            display: table-cell;
            vertical-align: middle;
        }
        /* centered columns styles */
        .row-centered {
            text-align:center;
        }
        .col-centered {
            display:inline-block;
            float:none;
            text-align:left;
            margin-right:-4px;
        }
            body{
                background-image: url("${pageContext.request.contextPath}/photo/body_background.png");
            }
          table{
              margin: 10px auto;
              text-align: center;
          }
          table td{
            /*  border: 2px slategrey solid;*/
           }
          table td a{
              color: #5e5e5e;
              font-size: 7px;
              font-weight:bolder;
              text-decoration:none ;
          }
           table a:link{text-decoration:none; }  /* 指正常的未被访问过的链接*/
            table a:visited{text-decoration:none; }/*指已经访问过的链接*/
            table a:hover{text-decoration:none;}/*指鼠标在链接*/
            table a:active{text-decoration:none;}/* 指正在点的链接*/



    </style>


     <script type="text/javascript">
         $(function (){
             $("#btn-1").click(function (){
                 let username=$("#username").val();
                 let password=$("#password").val();
                 if(username==""){
                     alert("用户名不为空");
                     return false;
                 }
                 if(password==""){
                     alert("密码不为空");
                     return false;
                 }
                 $.ajax({
                      type:"POST",
                      url:"${pageContext.request.contextPath}/loginForJson",
                      data:({"username":username,"password":password}),
                      success:function (result){
                          if(result.toString()=="用户名或密码错误"){
                                  alert(result);
                                  location.href="${pageContext.request.contextPath}/loginPage";
                          }else{
                              location.href="${pageContext.request.contextPath}/homePage";
                          }
                      },
                      error: function(err) {
                          alert("用户名或密码错误");
                      }
                  })
             })


         })


     </script>
</head>
<body>
<div class="container">
    <div class="row row-centered">
        <div class="well col-md-6 col-centered">
            <div style="text-align: center ; margin-bottom: 20px">
                <h1>散件攒机登录系统  <small>V 11-4</small></h1>
            </div>
<%--

            <div style="width: 100%;text-align: right;background-color:#cce4ec">
                <span class="glyphicon glyphicon-book"></span>
                <span style="color: #8c8c8c;font-size: 4px">

                </span>
            </div>
--%>

            <hr style="border : 2px dashed #7184b0; margin-top: 30px" />
            <div role="form">
                <div class="input-group input-group-md" style="margin-top: 10px">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户ID"/>
                </div>
                <div class="input-group input   -group-md " style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password"  class="form-control" id="password" name="password" placeholder="请输入密码"/>
                </div>
                <br/>
                <button  class="btn btn-primary btn-block" id="btn-1"  ><span class="glyphicon glyphicon-log-in"></span>  登录</button>

                    <table>
                         <th>
                             <td style="width: 60px; border-right: 2px dimgray solid"><a href="registerPage" style="margin-right:3px;">注册</a></td>
                             <td style=" width: 80px; "><a href="findPasswordPage">忘记密码</a></td>
                         </th>
                    </table>

            </div>
        </div>

    </div>
</div>

</body>
</html>
