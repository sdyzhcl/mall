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