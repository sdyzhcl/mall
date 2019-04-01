<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/view/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="c" value="${pageContext.request.contextPath}"/>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="author" content="order by dede58.com"/>
  <title>会员登录</title>

  <script type="text/javascript" >

      $(function(){
          var username=$.cookie("username");
          var password=$.cookie("password");
          var remember=$.cookie("remember");
          if(remember){
              $("#username").val(username);
              $("#password").val(password);
              $("#remember").prop("checked","checked");
          }
      });

      function login(){
          var username=$("#username").val();
          var password=$("#password").val();
          /*alert(checked);
          return;*/
          if(username=="" || password=="" ){
              alert("请填写所有信息");
              return;
          }
          $.ajax({
              url:"${path}/user?action=login",
              data:{
                  username:username,
                  password:password
              },
              type:"post",
              dataType:"json",
              success:function(result){
                  if(result.success){
                      if(checked){
                          $.cookie("username",username,{expires:7})
                          $.cookie("password",password,{expires:7})
                      }else{
                          $.cookie("username",null)
                          $.cookie("password",null)
                      }
                      alert("登录成功！");
                      window.location.href="${path}index.jsp"
                  }else{
                      $("#info").html(result.info);
                  }
              }
          });
      }
  </script>

  <link rel="stylesheet" type="text/css" href="${path}/static/css/login.css">
</head>
<body>
<!-- login -->
<div class="top center">
  <div class="logo center">
    <a href="${path}index.jsp" target="_blank"><img src="${path}/static/image/mistore_logo.png" alt=""></a>
  </div>
</div>
<form  method="post" action="${path}login.jsp" class="form center">
  <div class="login">
    <div class="login_center">
      <div class="login_top">
        <div class="left fl">会员登录</div>
        <div class="right fr">您还不是我们的会员？<a href="regist.jsp" target="_self">立即注册</a></div>
        <div class="clear"></div>
        <div class="xian center"></div>
      </div>
      <div class="login_main center">
        <div class="username">用户名:&nbsp;<input class="shurukuang" type="text" id="username" placeholder="请输入你的用户名"/></div>
        <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input class="shurukuang" type="password" id="password" placeholder="请输入你的密码"/></div>
      </div>
      <div class="login_submit">
        <input class="submit" type="button" name="submit" value="立即登录" onclick="login()">
        <span id="info"></span>
      </div>
    </div>
  </div>
</form>
<footer>
  <div class="copyright">简体 | 繁体 | English | 常见问题</div>
  <div class="copyright">小米公司版权所有-京ICP备10046444-<img src="${path}/static/image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号</div>

</footer>
</body>
</html>