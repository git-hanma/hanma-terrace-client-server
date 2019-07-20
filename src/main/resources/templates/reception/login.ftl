<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>点菜宝贝，后台管理系统</title>
    <meta name="keywords" content="点菜宝贝，后台管理系统">
    <meta name="description" content="点菜宝贝，后台管理系统">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/frame.css">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/merchant.css">
    <link rel="stylesheet" href="/css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript" src="/js/jquery-1.11.0.min.js"></script>
<body>
    <a href="/terrace/toLogin"><img class="login-logo" src="/img/demo6.png"></a>
    <a class="login-change" href="login.ftl">PC客户端 <span>&nbsp; | &nbsp;</span> 手机客户端</a>
    <div class="login-title default"></div>
   <div class="login-name">管理员登录</div>
    <div class="login-form-area">

        <div class="login-input">

            <label for="">账&nbsp;&nbsp;&nbsp;号：</label>
            <input class="ob-form login-form-user" type="text" name="staffPhone">
        </div>
        <div class="login-input">
            <label for="">密&nbsp;&nbsp;&nbsp;码：</label>
            <input class="ob-form login-form-user" type="password" name="staffPass">
        </div>
        <#--<button class="btn order-food-menu-btn login-btn">登录</button>-->
        <input class="btn order-food-menu-btn login-btn" type="button" onclick="loginStaff()" value="登录"/>
    </div>
<script>
    function loginStaff() {
        var phone=$("input[name='staffPhone']").val();
        var pass=$("input[name='staffPass']").val();
         if (phone!=null) {
             $.ajax({
                 type: "GET",
                 async: false,
                 url: "/terr/LogonBy",
                 data: {staffPhone: phone, staffPass: pass},
                 datatType: "json",
                 success: function (data) {
                     if (data.code == 2) {
                         //跳转到管理员页面
                         location.href = "/terrace/toIndex";
                     } else if (data.code == 1) {
                         //跳转到登陆页面
                         location.href = "/terr/toLogin";
                     }
                 }
             })
         }else{
                 alert("用户不能为空")
         }
     }
    
    

</script>
</body>
</html>
