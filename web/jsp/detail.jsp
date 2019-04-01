<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/common.jsp"%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        $(function(){

        })

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


    </script>
</head>
<body>
<%@include file="/view/header.jsp"%>
<hr>
<fieldset>
    <legend>商品详情</legend>
    <img src="${path}${good.img}" width="100px" height="100px"><br>
    <input type="hidden" id="goodid" value="${good.id}">
    商品名称：${good.name}<br>
    商品价格：${good.price}<br>
    商品描述：${good.detail}<br>
    购买数量：<input type="button" value="-" onclick="mins()">
            <input type="text" id="count" value="1" style="width: 20px">
            <input type="button" value="+" onclick="add()"><br>
    <input type="button" value="添加到购物车" onclick="addCar()">
</fieldset>
</body>
</html>
