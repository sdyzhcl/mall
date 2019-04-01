<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/view/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>小米手机列表</title>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css">

    <script type="text/javascript">
        $(function(){
            loadGoodData(1,10,"");
        })
        
        function query() {
            
        }
        
        function mins(){
            var count=parseInt($("#count").val());
            if(count>1){
                count=count-1;
            }
            $("#count").val(count);
        }

        function add(){
            var count=parseInt($("#count").val());
            count=count+1;
            $("#count").val(count);
        }

        function addCar(){
            var goodid=$("#goodid").val();
            var counts=$("#count").val();
            $.ajax({
                url:path+"/process/car?action=add",
                data:{goodid:goodid,counts:counts},
                type:"post",
                dataType:"json",
                success:function(result){
                    alert(result.info);
                  }
            })
        }
        function loadGoodData(page,pageSize,keyword){
            $.ajax({
                url:"${path}/good?action=query",
                data:{page:page,pageSize:pageSize,keyword:keyword},
                type:"post",
                dataType:"json",
                success:function(result){
                    console.log(result);
                    var data=result.data;
                    $("#prev").val(result.prev);
                    $("#next").val(result.next);
                    $("#end").val(result.end);
                    //$("#total").val(result.total);
                    $("#endPage").text(result.end);
                    $("#totalCount").text(result.total);
                    $("#goodData").html("");
                    for(var i=0; i<data.length;i++){
                        var row=data[i];
                        $("#goodData").append("<tr>" +
                            "<td><a href='"+path+"/good?action=detail&goodid="+row.id+"'>"+row.name+"</a></td>" +
                            "<td>"+row.price+"</td>" +
                            "<td><img src='"+path+row.img+"' width='40px' height='40px'></td>" +
                            "<td>"+row.detail+"</td>" +
                            "<td>"+row.kucun+"</td>" +
                            "</tr>");
                    }
                }
            })
        }

        function loadFirst(){
            var keyword=$("#keyword").val();
            var pageSize=$("#pageSize").val();
            loadGoodData(1,pageSize,keyword);
        }

        function loadPrev(){
            var prev=$("#prev").val();
            var keyword=$("#keyword").val();
            var pageSize=$("#pageSize").val();
            loadGoodData(prev,pageSize,keyword);
        }

        function loadNext(){
            var next=$("#next").val();
            var keyword=$("#keyword").val();
            var pageSize=$("#pageSize").val();
            loadGoodData(next,pageSize,keyword);
        }
        function loadEnd(){
            var end=$("#end").val();
            var keyword=$("#keyword").val();
            var pageSize=$("#pageSize").val();
            loadGoodData(end,pageSize,keyword);
        }


    </script>

</head>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="fr">
                <ul>
                    <%@include file="/view/header.jsp"%>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="${path}index.jsp" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <li><a href="">小米手机</a></li>
            <li><a href="">红米</a></li>
            <li><a href="">平板·笔记本</a></li>
            <li><a href="">电视</a></li>
            <li><a href="">盒子·影音</a></li>
            <li><a href="">路由器</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">服务</a></li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
</div>
<!-- end banner_x -->

<!-- start banner_y -->
<!-- end banner -->

<!-- start danpin -->

<hr>
<input type="hidden" id="prev">
<input type="hidden" id="next">
<input type="hidden" id="end">
<%--<input type="hidden" id="total">--%>
<a href="javascript:void(0)" onclick="loadFirst()">首页</a>
<a href="javascript:void(0)" onclick="loadPrev()">上一页</a>
<a href="javascript:void(0)" onclick="loadNext()">下一页</a>
<a href="javascript:void(0)" onclick="loadEnd()">尾页</a>
共<span id="endPage"></span>页/共<span id="totalCount"></span>条&nbsp;&nbsp;&nbsp;
每页条数：
<select id="pageSize" onchange="loadFirst()">
    <option value="5">5</option>
    <option value="10" sel  ected="selected">10</option>
    <option value="20">20</option>
    <option value="30">30</option>
</select>
<div class="search fr">
    <form action="" method="post">
        <input type="text" id="keyword" ><input type="button" class="sousuo" value="搜索" onclick="loadFirst()"/>
        <div class="clear"></div>
    </form>
    <div class="clear"></div>
</div>
<table border="1">
    <thead>
    <tr>
        <td>名称</td>
        <td>价格</td>
        <td>图片</td>
        <td>详情</td>
        <td>库存</td>
    </tr>
    </thead>
    <tbody id="goodData">
    </tbody>
</table>

<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>

</footer>

<!-- end danpin -->


</body>
</html>