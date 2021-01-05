<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2020/11/10
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码</title>
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
            //验证账号
            $("#username").blur(function(){
                let username= $("#username").val();
                let regular=/^[a-zA-Z0-9_-]{3,16}$/;
                if(!(regular.test(username))){ //验证不成功
                    $("#div-name").addClass("has-error");
                }else{
                    $("#div-name").removeClass("has-error");
                }

    /*            $.ajax({
                    url:"${pageContext.request.contextPath}/login",
                    data:({"username":username}),
                    success:function (result){
                        if(result.toString()=="用户名已存在"){
                            $("#span-one").text(result);
                            $("#btn-1").removeClass("disabled");
                            $("#btn-1").prop('disabled', false);
                        }else{
                            $("#span-one").text(result);
                            $("#btn-1").addClass("disabled");
                            $("#btn-1").prop('disabled', true);
                        }

                    }


                })*/



            })
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

            $("#id_card,#username").keyup(function (){
                   let username =$("#username").val();
                   let id_card=$("#id_card").val();

                $.ajax({
                    url:"${pageContext.request.contextPath}/findUserAndCard",
                    data:({"username":username,"id_card":id_card}),
                    success:function (result){
                        if(result.toString()=="身份证与用户名不匹配"){
                            $("#span-one").text(result);
                            $("#btn-1").addClass("disabled");
                            $("#btn-1").prop('disabled', true);
                        }else{
                            $("#span-one").text(result);
                            $("#btn-1").removeClass("disabled");
                            $("#btn-1").prop('disabled', false);
                        }

                    }


                })

            })


        })


        function checkName(){
            let username=  document.getElementById("username").value;
            let regular=/^[a-zA-Z0-9_-]{3,16}$/;


            if(!(regular.test(username))){   //验证失败
                alert("用户名格式错误");
                return false;
            }else{
                return  true;
            }
        }

        function checkIdCard(){

            let idCardReg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            let id_card= document.getElementById("id_card").value;
            if(!(idCardReg.test(id_card))){
                alert("您输入的身份证格式有误");
                return false;
            }else{
                return  true;
            }
        }



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
            if(checkName()&checkPassword()&checkP1andP2()&checkIdCard()){
                alert("修改成功,点击确定转去登录页面");
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
                <h1>找回密码 <small>V 11-10</small></h1>
            </div>

            <div style="width: 100%;text-align: right;background-color:#cce4ec">
                <span class="glyphicon glyphicon-book"></span>
                <span style="font-size: 4px ;color:#fc1b1b" id="span-one">

                </span>
            </div>

            <hr style="border : 2px dashed #7184b0; margin-top: 30px" />
            <form action="findPassword" method="post" role="form" onsubmit="return check()" >
                <div class="input-group input-group-md" id="div-name" style="margin-top: 10px">
                    <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                    <input required type="text" class="form-control" id="username" name="username" placeholder="请输入用户ID"/>
                </div>
                <div class="input-group input-group-md " id="div-idCard" style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon4"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input  required type="text" class="form-control" id="id_card" name="id_card" placeholder="请输入完整身份证" maxlength="18"/>
                </div>

                <div class="input-group input-group-md " id="div-password1" style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon2"><i class="glyphicon glyphicon-lock"></i></span>
                    <input required type="password" class="form-control" id="password1" name="password1" placeholder="请输入新密码"/>
                </div>
                <div class="input-group input-group-md " id="div-password2" style="margin-top: 20px">
                    <span class="input-group-addon" id="sizing-addon3"><i class="glyphicon glyphicon-lock"></i></span>
                    <input  required type="password" class="form-control" id="password2" name="password" placeholder="请再次输入密码"/>
                </div>
                <br/>
                <button  type="submit" class="btn btn-primary btn-block" id="btn-1"  ><span class="glyphicon glyphicon-log-in"></span>  找回密码</button>
            </form>
        </div>

    </div>
</div>
</body>
</html>
