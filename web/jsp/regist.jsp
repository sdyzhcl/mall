<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="author" content="order by dede58.com"/>
  <title>用户注册</title>
  <link rel="stylesheet" type="text/css" href="${path}/static/css/login.css">

  <script type="text/javascript">
      function regist(){
          var username=$("#username").val();
          var password=$("#password").val();
          var password2=$("#password2").val();
          var phone=$("#phone").val();
          var email=$("#email").val();
          if(username=="" || password=="" || password2=="" || phone=="" || email==""){
              alert("请填写所有信息");
              return;
          }
          if(password!=password2){
              alert("两次密码输入不一致");
              return;
          }
          $.ajax({
              url:"${path}/user?action=regist",
              type:"post",
              dataType:"json",
              data:{
                  username:username,
                  password:password,
                  phone:phone,
                  email:email
              },
              success:function(result){
                  if(result.success){
                      alert("登录成功，下面将要跳向登录页面");
                      window.location.href="login.jsp";
                  }else{
                      alert(result.info);
                  }
                  console.log(result);
              }
          });
      }
  </script>
</head>
<body>
<form  method="post" action="${path}regist.jsp">
  <div class="regist">
    <div class="regist_center">
      <div class="regist_top">
        <div class="left fl">会员注册</div>
        <div class="right fr"><a href="index.jsp" target="_self">小米商城</a></div>
        <div class="clear"></div>
        <div class="xian center"></div>
      </div>
      <div class="regist_main center">
        <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input class="shurukuang" type="text" id="username" placeholder="请输入你的用户名"/></div>
        <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="shurukuang" type="password" id="password" placeholder="请输入你的密码"/></div>
        <div class="username">确认密码:&nbsp;&nbsp;<input class="shurukuang" type="password" id="password2" placeholder="请确认你的密码"/><span>两次密码要输入一致哦</span></div>
        <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;<input class="shurukuang" type="text" id="phone" placeholder="请填写手机号"/></div>
        <div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;<input class="shurukuang" type="text" id="email"></div><br>
      </div>
      <div class="regist_submit">
        <input class="submit" type="button" name="submit" value="立即注册" onclick="regist()"><br>
        <span id="info"></span><br>
        <a href="login.jsp">去往登录</a>
      </div>
    </div>
  </div>
</form>
</body>
</html>