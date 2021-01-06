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

    <title>镁光DDR5规格书</title>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/static/jq/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
          ins{
              color:blue;
          }
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
            <p>镁光DDR5规格书</p>
        </blockquote>
        <div style="background-color: #9d9d9d1a;font-size: 15px;font-family: Microsoft YaHei " class="well well-lg">
            <p style="text-indent:2em;">
                <ins>DDR5</ins>是DRAM的下一个发展，带来了一系列旨在提高可靠性，可用性和可维护性（RAS）的新功能。降低功率；并大大提高性能。 DDR4和DDR5之间的一些主要功能差异如下：
            </p>
            <p style="text-indent:2em; color:gray">
                By Randall Rooney and Neal Koyle
            </p>
            <p style="text-indent:2em;">
                本白皮书是<ins>Micron（镁光）</ins>早期DDR5白皮书“Micron®DDR5 SDRAM的介绍：不仅仅是一代更新”的后续内容，该白皮书着重介绍了第五代双倍数据速率（DDR5）SDRAM关键的关键特性，这些特性可提供出色的性能DDR4的改进。在本文中，我们提供了与上一代SDRAM相比改进的性能，RAS和易于实现的更多详细信息。
            <h3>Performance</h3>
            <p style="text-indent:2em;">
                当存储器密度增加时，需要扩展存储体的数量以解决增加的存储器密度。 DDR5标准使银行组数量增加了一倍，而每个银行组的银行数量保持不变。通过允许在任何给定时间打开更多页面，并通过增加高页面点击率的统计概率，可以提高整体系统效率
            </p>
            <p style="text-indent:2em;">
                在特定银行组访问范围内，银行组到银行组交错定时访问比银行到银行短。这些时序参数具有“长”时序定义（tCCD_L，tWTR_L，tRRD_L）和“短”时序定义（tCCD_S，tWTR_S，tRRD_S）。较长的时间是指银行组内的银行到银行，而较短的时间是指访问不同的银行组（如图1所示）。为了提供一些观点，tCCD_L可以接近tCCD_S的两倍。增加的银行组通过增加使用短时间的可能性来减轻内部时间限制。
            </p>
             <p>
                 <img src="${pageContext.request.contextPath}/photo/10.jpg">
             </p>
             <h3>
                Data Burst Length Increase
            </h3>
            <p style="text-indent:2em;">
                DDR5 SDRAM的默认突发长度从BL8（在DDR4上可以看到）增加到BL16，并提高了命令/地址和数据总线的效率。现在，相同的读取或写入CA总线事务可以在数据总线上提供两倍的数据，同时限制了同一存储库中IO /阵列时序约束的暴露。减少访问给定数据量所需的命令，还可以改善读写访问的电源配置文件。
            </p>
            <p style="text-indent:2em;">
                突发长度的增加还减少了访问同一64B高速缓存行数据有效负载所需的IO数量。默认突发长度的增加为DDR5 DIMM体系结构启用了一个双子通道（如图2所示），从而增加了总体通道并发性，灵活性和数量。对于使用128B高速缓存行数据有效负载的系统，DDR5添加了专门针对x4配置的设备的32位突发长度选项。这进一步改善了命令/地址，数据总线效率和总体功率分布。
            </p>

        </div>

    </div>

</div>

</body>
</html>
