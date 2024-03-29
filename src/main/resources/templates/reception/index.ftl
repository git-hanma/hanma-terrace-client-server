<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>汗马，后台管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/frame.css">
    <link rel="stylesheet" href="/css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!-- common-head -->




    <div class="common-head clearfix">
        <a class="logo" href="index">
            <img src="/img/logo.png" alt="">
        </a>
        <div class="info clearfix">
            <a href="#/">站点首页</a> |
            <a href="#/">更新首页缓存</a>
        </div>
        <div class="right pull-right text-right" id="hovpad">
            <dl class="user-wrapper">
                <dt><span class="time">欢迎您</span>eewxh@163.com <img src="/img/headjt.png" alt=""><img class="active" src="/img/headjt-active.png" alt=""></dt>
                <dd>
                    <div class="head clearfix">
                        <a href="/terrace/">我的账户</a>
                        <span></span>
                        <a href="/terrace/login">安全退出</a>
                    </div>
                    <ul>
                        <li>登陆：100&nbsp;次</li>
                        <li>下单：1000&nbsp;次</li>
                        <li>审单：1000&nbsp;次</li>
                        <li>好评：1000&nbsp;次</li>
                        <li>积分：1000&nbsp;分</li>
                        <li>星级：
                            <img src="/img/star.png" alt="">
                            <img src="/img/star.png" alt="">
                            <img src="/img/star-ban.png" alt="">
                            <img src="/img/star-hui.png" alt="">
                            <img src="/img/star-hui.png" alt="">
                        </li>
                    </ul>
                </dd>
            </dl>
            <dl class="msg-wrapper">
                <dt class="clearfix"><img src="/img/msg.png" alt=""><img class="active" src="/img/msg-active.png" alt=""><span> 消息 </span><span class="tag">320</span></dt>
                <dd>
                    <a href="/terrace/">交易通知：<span>123</span></a>
                    <a href="/terrace/">系统通知：<span>123</span></a>
                    <a href="/terrace/">系统消息：<span>123</span></a>
                </dd>
            </dl>
        </div>
    </div>
    <!-- common-head -->
        <!--侧栏-->
    <div class="side-bar">
        <div class="content">
            <dl>
                <dt style="border-top: none;">用户管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/terr/userListYh">用户列表</a>
                    <a href="#/terrace/communication">通讯信息 </a>
                    <a href="#/terrace/loginInfo">登录信息 </a>
                </dd>
            </dl>
            <dl>
                <dt >商户管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/terr/terraceQueryList">商户列表 </a>
                    <a href="#/terrace/loginUser">登录账号 </a>
                    <a href="#/terrace/loginCode">登录记录 </a>
                    <a href="#/terrace/aptitudeInfo">资质信息 </a>
                    <a href="#/">商户设置 </a>
                </dd>
            </dl>
            <dl>
                <dt >订单管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/order/orderList">订单列表 </a>
                    <a href="#/">统计分析 </a>
                </dd>
            </dl>
            <dl>
                <dt>收支管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/">收支列表 </a>
                    <a href="#/">收支分析 </a>
                </dd>
            </dl>
            <dl>
                <dt>平台管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/terrace/main" >管理中心 </a>
                    <a href="#/">短信管理 </a>
                    <a href="#/">促销信息 </a>
                    <a href="#/">基本设置 </a>
                </dd>
            </dl>
            <dl>
                <dt>安全管理 <img class="b" src="/img/jt-right-co.png" alt=""><img class="r" src="/img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#/terr/userYg">基本信息 </a>
                    <a href="#/">密码设置 </a>
                </dd>
            </dl>
        </div>
    </div>
    <!--内容部分-->
    <div id="main" >
        <div   style="-webkit-overflow-scrolling:touch;overflow:auto;height: 100%;">
            <iframe class="scroll"  src="/terrace/main" id="ghrzFrame"  frameborder="no" border="0"></iframe>
        </div>
    </div>
</body>
<script src="/js/jquery-1.11.3.js"></script>
        

<script>
//首次加载至url
var u = window.location.href.split('#')[1];
$('#main iframe').attr('src',u);
$('.side-bar dd a[href="#'+ $('#main iframe').attr('src') + '"]').addClass('active');


//侧栏菜单
$(function() {
    $('.side-bar dt').click(function() {
        var dd = $(this).siblings('dd');
        dd.slideToggle();
        $(this).find('.b').toggle()
        $(this).find('.r').toggle()
    });
    $('.side-bar dd a').click(function() {
        $('.side-bar dd a').removeClass('active');
        $(this).addClass('active');
        //页面显示控制
        var url = $(this).attr('href').substring(1);
        var f = $('#main iframe');
        f.attr('src', url);
    });
});

$('#hovpad dl').on('click', function(e) {
    var dd = $(this).find('dd');
    if (dd.css('display') === 'none') {
        dd.show();
        $(this).addClass('active');
    } else {
        dd.hide();
        $(this).removeClass('active');
    }
    e.stopPropagation();
});
$('#hovpad dl').hover(function(e) {
    var dd = $(this).find('dd');
    dd.show();
    $(this).addClass('active');
}, function(e) {
    var dd = $(this).find('dd');
    dd.hide();
    $(this).removeClass('active');
})
$('body').on('click', function() {
    $('#hovpad dl').removeClass('active');
})

    
</script>

</html>