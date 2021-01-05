<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2020/11/11
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
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
            //验证密码
            $("#password1").blur(function(){
                let password1= $("#password1").val();
                let regular=/^[a-zA-Z0-9_-]{6,18}$/;
                if(!(regular.test(password1))){ //验证不成功
                    $("#div-password1").addClass("has-error");
                }else{
                    $("#div-password1").removeClass("has-error");
                }
            })
            //验证密码一致性
            $("#password2").blur(function(){
                let password2= $("#password2").val();
                let password1= $("#password1").val();
                if(password1!=password2){ //验证不成功
                    $("#div-password2").addClass("has-error");

                }else{
                    $("#div-password2").removeClass("has-error");

                }
            })


        })


        function checkPassword(){
            let password=  document.getElementById("password2").value;
            let regular=/^[a-zA-Z0-9_-]{6,18}$/;
            if(!(regular.test(password))){
                alert("密码格式错误");
                return false;
            }else {
                return true;
            }

        }
        function checkP1andP2(){
            let password2=  document.getElementById("password2").value;
            let password1=  document.getElementById("password1").value;
            if(password2!=password1){
                alert("两次密码输入不一致");
                return  false;
            }else{
                return true;
            }
        }


        function check(){
            if(checkPassword()&checkP1andP2()){
                alert("修改成功,点击确定转去主页面");
                return true;
            }else{
                return false;
            }

        }


    </script>

</head>
<body>
<div class="container">
    <div class="row row-centered">
        <div class="well col-md-6 col-centered">
            <div style="text-align: center ; margin-bottom: 20px">
                <h1>修改密码 <small>V 11-11</small></h1>
            </div>

            <div style="width: 100%;text-align: right;background-color:#cce4ec">

            </div>

            <hr style="border : 2px dashed #7184b0; margin-top: 30px" />
            <form action="changePassword" method="post" role="form" onsubmit="return check()" >

                <div class="input-group input-group-md " id="div-password1" style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                    <input required type="password" class="form-control" id="password1" name="password1" placeholder="请输入新密码"/>
                </div>
                <div class="input-group input-group-md " id="div-password2" style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon glyphicon-lock"></i></span>
                    <input  required type="password" class="form-control" id="password2" name="password" placeholder="请再次输入密码"/>
                </div>
                <br/>
                <button  type="submit" class="btn btn-primary btn-block" id="btn-1"  ><span class="glyphicon glyphicon-log-in"></span>  修改</button>
            </form>
        </div>

    </div>
</div>
</body>
</html>

