<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>员工列表</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/frame.css">
    <link rel="stylesheet" href="../css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .table-wrapper .table td label{
            width: 40px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="frame-header"><span class="page-reload cur">员工列表</span></div>
    <!--操作栏-->
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width:1000px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <td>员工工号</td>
                    <td>员工姓名</td>
                    <td>员工手机号</td>
                    <td>创建时间</td>
                    <td>修改时间</td>
                    <td>员工状态</td>
                </tr>
            </thead>
         <#list user as user>
         <tr>
             <td>${(user.staffId)!""}</td>
             <td>${(user.staffName)!""}</td>
             <td>${(user.staffPhone)!""}</td>
             <td>${user.staffCreateTime?string("yyyy-MM-dd HH:mm:ss")}</td>
             <td>${user.staffUpdateTime?string("yyyy-MM-dd HH:mm:ss")}</td>
             <td>${(user.staffYn)!""}</td>
         </tr>
         </#list>

        </table>
    </div>
</body>

<script src="../plugin/jquery/jquery.js"></script>
<script src="../js/frame-base.js"></script>

</html>