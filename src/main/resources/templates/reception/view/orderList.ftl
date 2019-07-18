<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>订单列表</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<div class="frame-header"><span class="page-reload cur">订单列表</span></div>
<!--操作栏-->
<div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">
    <div class="pull-left left-inp defualt">
        <input type="text" class="pull-left" style="margin-left: 10px;" placeholder="订单号、手机号">
        <button class="btn delete pramary">搜索</button>
        <button class="btn delete pramary">筛选</button>
    </div>
    <div class="right-btns" style="font-size: 0">
        <#--<button class="btn delete pramary">增加</button>
        <button class="btn delete pramary">编辑</button>
        <button class="btn delete pramary">设密</button>
        <button class="btn delete pramary">删除</button>-->
    </div>
</div>
<!--表格-->
<div class="table-wrapper pl27 " style="min-width: 4000px;">
    <table class="table text-center">
        <thead>
        <tr>
            <th style="width: 3%; text-align: left;" class="yt">
                <input type="checkbox" class="allCheck" id="all"><label for="all">&nbsp;&nbsp;&nbsp;</label></th>
            <th style="width: 3%;" class="sort cur">用户ID
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th style="width: 5%;" class="sort cur">联系方式
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th style="width: 3%;" class="sort cur">商户ID
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 3%;">配送费
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>

            <th class="sort cur" style="width: 3%;">总金额
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="sort cur" style="width: 4%;">实际支付
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 3%;">支付方式
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 3%;">收货人
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 10%;">收货地址
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 5%;">订单状态
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>

            <th class="no-nowrap sort cur" style="width: 10%;">订单号
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 5%;">备注
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 8%;">预送时间
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="sort cur" style="width: 10%;">送到时间
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="sort cur" style="width:10%">创建时间
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 10%;">SKU数据
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>
            <th class="no-nowrap sort cur" style="width: 10%;">修改时间
                <img class="bottom" src="../img/jt-bottom.png" alt="">
                <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
            </th>

        </tr>
        </thead>
        <tbody>
            <#list order as item>
                <tr class="info">
                    <td style="text-align: left;">
                        <input type="checkbox" name="pkId" id="ph1"> <label for="ph1">${item.orderId!""}</label>
                    </td>
                    <td>
                        <p>${item.userId!""}</p>
                    </td>
                    <td>
                        <p>${item.addressPhone!""}</p>
                    </td>
                    <td>
                        <p>${item.merchantId!""}</p>
                    </td>
                    <td>
                        <p>${item.orderCost!""}<i class="hui"></i></p>
                    </td>
                    <td>
                        <p>${item.orderCountprice!""}</p>
                    </td>
                    <td>
                        <p>${item.orderActual!""}</p>
                    </td>
                    <td>
                        <p>${item.orderPay!""}<i class="hui"></i></p>
                    </td>
                    <td>
                        <p>${item.addressName!""}</p>
                    </td>
                    <td>
                        <p>${item.addressShipping!""}</p>
                    </td>
                    <td>
                        <p>${item.orderStatus!""}</p>
                    </td>
                    <td>
                        <p>${item.orderNumber!""}</p>
                    </td>
                    <td>
                        <p>${item.orderText!""}</p>
                    </td>
                    <td>
                        <p>${item.orderSendTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                    </td>
                    <td>
                        <p>${item.orderGainTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                    </td>
                    <td>
                        <p>${item.orderCreateTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary" data-toggle="collapse"
                                data-parent="selector"
                                data-target="#demo${item.orderId!""}">
                            SKU详情
                        </button>
                        <div id="demo${item.orderId!""}" class="collapse collapsing">
                            <!--表格-->
                            <div class="table-wrapper pl27 " style="min-width:1000px;">
                                <table class="table text-center">
                                    <thead>
                                    <tr>
                                        <th class="yt" style="width: 9%;">&nbsp;SKU-ID
                                            <label for="all" style="width: 40px">&nbsp;&nbsp;&nbsp;</label>
                                        </th>
                                        <th style="width: 16%;" class="sort cur">SPU-ID
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                        <th class="sort cur" style="width:15%">商品ID
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                        <th class="sort cur" style="width: 15%;">同类价
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                        <th class="sort cur" style="width: 10%;">数量
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                        <th class="no-nowrap sort cur" style="width: 15%;">创建时间
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                        <th class="no-nowrap sort cur" style="width: 15%;">修改时间
                                            <img class="bottom" src="../img/jt-bottom.png" alt="">
                                            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <iframe id="mainMenuIframeorder" scrolling="no" src="/order/orderSku?id=${item.orderId!""}"></iframe>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </td>
                    <td>
                        <p>${(item.orderPayentTime?string("yyyy-MM-dd HH:mm:ss"))!""}</p>
                    </td>
                </tr>
            </#list>
        </tbody>
    </table>
</div>
<div class="table-tel clearfix">
    <div style="border-bottom: 1px solid #fff; overflow: hidden;" class="no-hover">
        <div class="fl tb1" style="text-align: left;    padding-left: 8px;  ">
            <input type="checkbox" class="allCheck" id="all"><label for="all">&nbsp;&nbsp;&nbsp;</label>
        </div>
        <div class="fl tb2" style="position: absolute; left: 50px; width: 190px;display: table">&emsp;<span class="cur">短信</span>&emsp;<span class="cur">邮件</span>&emsp;<span class="cur">微信</span>&emsp;<span class="cur">审核</span>&emsp;
        </div>
        <div class="tab-margin clearfix " style="width: 400px; position: absolute; left: 50%; margin-left: -120px;"">
        <div class="fl tb3" style="width: 225px;float: left;">
            <div class="page-wrapper text-left">
                <button class="btn-s"><img src="../img/left-icon.png" alt=""></button>
                <a href="#" class="active">1</a>
                <a href="#" class="">2</a>
                <a href="#" class="">3</a>
                <button class="btn-s"><img src="../img/right-icon.png" alt=""></button>
            </div>
        </div>


    </div>
    <div class="fr tb4" style="position: absolute; right:145px; top: 0;">
        <a href="">模版下载</a>&emsp;
        <a href="">批量导入</a>
    </div>
    <div class="fr tb5" style="text-align: left;padding-right: 30px;position: absolute; right: 0; top: 0;">
        <input type="text" style="width: 40px;height: 26px;" class="text-center" onkeyup="value=value.replace(/[^\d]/g,'')"> 行/页
    </div>
</div>
</div>
</body>
<script src="../plugin/jquery/jquery.js"></script>
<script src="../js/frame-base.js"></script>
</html>