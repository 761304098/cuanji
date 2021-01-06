<%--
  Created by IntelliJ IDEA.
  User: Sun
  Date: 2020/11/11
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>SSD固态硬盘的GC与Trim得区别</title>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>

    </style>
    <script type="text/javascript">
        $(function (){
            $("#shouye").click(function (){
                $(this).addClass("active");
                location.href="${pageContext.request.contextPath}/homePage"

            })
        })
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <blockquote>
            <p>SSD固态硬盘的GC与Trim得区别</p>
        </blockquote>
        <div style="background-color: #9d9d9d1a;font-size: 15px;font-family: Microsoft YaHei " class="well well-lg">
            <p style="text-indent:2em;">
                操作系统：其实并没有删除数据 - “事实上，它只是在硬盘前的索引区里标记这块文件占用的区域为可覆盖的，所以下次数据将要再次写入的时候，可以覆盖写入这块被标记的区域。这也就是为啥那 些所谓的文件恢复软件能恢复的道理。（数据依然存在）。”
            </p>
            <p style="text-indent:2em;">
                固态硬盘：在固态硬盘闪存内，数据存储一般是以page（页）为最小单位存储的（典型的为4KB），而128个page组成了一个block（块），数据可以以 4KB大小的页来读取和写入，但却只能以512KB(128 page)的块大小来删除。当读取数据或者写入到一个没有被使用过的page上时，固态硬盘的速度是很快的，但是覆写数据的话，就比较复杂了，需要许多步 骤来完成。
            </p>
            <p style="text-indent:2em;">
                *注意：硬盘本身是不知道当前数据的状态的，他只是被控制着做这做那。 上面这一套在普通的机械硬盘上工作起来非常完美，因为他们可以直接覆写旧的区域，但是当用到NAND闪存上就行不通了，当全部闪存被写满一遍后，没有空余 （从未写过）的块可以被使用的情况下，速度就下来了。
            <p style="text-indent:2em;">
                操作系统：其实并没有删除数据 - “事实上，它只是在硬盘前的索引区里标记这块文件占用的区域为可覆盖的，所以下次数据将要再次写入的时候，可以覆盖写入这块被标记的区域。这也就是为啥那 些所谓的文件恢复软件能恢复的道理。（数据依然存在）。”
            </p>
            <p style="text-indent:2em;">
                Trim：SSD一样会复制整个包含删除数据的块到缓存，清空块并写入有效数据的页回去，区别是这样等于把这个延迟时间从覆写数据的那个时 间提前到了删除数据的时候
            </p>
            <p style="text-indent:2em;">
                简而言之，这个问题是因为操作系统和文件系统不能和SSD的主控进行删除文件的交流造成的，如果有之前没清除干净的数据，所有写入的页的操作都要先清除块再改写，将严重影响写入速度。有2种途径来修复这个问题：
            </p>
            <p style="text-indent:2em;">
                第一个就是定期运行垃圾回收程序(GC)（这个操作有点像整理，在SSD空闲时，全盘扫描有效的页并合并整理起来变为一个包含全部有效页的块，而那些无效的页和块都将被完全的清除）。
            </p>
            <p style="text-indent:2em;">
                第二个更好的途径就是当数据删除时候让系统告诉SSD数据没了，让SSD立即擦掉那些数据占用的块，这就是Trim命令做的事。
            </p>
            <p style="text-indent:2em;">
                当一个文件在支持Trim的系统里被删除后，操作系统会发个命令给SSD，让他知道这个数据所在的这个page可以直接被写入，等于把控制权从操作系统变 为了SSD主控制器固件。
            </p>




        </div>

    </div>

</div>

</body>
</html>

