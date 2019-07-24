<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商户列表</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <script type="text/javascript" src="/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="/dialog/dialog-plus.js"></script>
    <link rel="stylesheet" href="/dialog/ui-dialog.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/frame.css">
    <link rel="stylesheet" href="../css/addClass.css">

    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>

<body>
    <div class="frame-header"><span class="page-reload cur">商户列表</span></div>
    <!--操作栏-->
    <div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">
        <div class="pull-left left-inp defualt">
            <input type="text" class="pull-left" style="margin-left: 10px;" placeholder="商户ID、商户名称 ">
            <button class="btn delete pramary">搜索</button>
            <button class="btn delete pramary">筛选</button>
        </div>

        <div class="right-btns" style="font-size: 0">
            <button class="btn delete pramary">增加</button>
            <button class="btn delete pramary">审核</button>
           <#-- <button class="btn delete pramary" onclick="getQueryIdFun()">编辑</button>-->

            <button class="btn delete pramary">删除</button>
        </div>
    </div>
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width: 2300px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <th style="width: 3%; text-align: left;" class="yt">
                        <input type="checkbox" class="allCheck" id="all" name="merchantLinkman"><label for="all">&nbsp;&nbsp;&nbsp;</label></th>
                    <th style="width: 5%;" class="sort cur">商家编号
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                   <#-- <th class="sort cur" style="width:10%">员工主键
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>-->
                    <th class="sort cur" style="width: 5%;">商家名称
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 5%;">商家简介
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 9%;">商家状态
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 5%;">商家地址
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 10%;">联系人
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 6%;">商家电话
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 10%;">经营品类
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 5%;">平均评分
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 8%;">图片
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 8%;">操作
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                </tr>
            </thead>
            <tbody>
            <#list list as list>
            <tr>

                <td>
                    <p><img src="../img/table_head.png" alt="" width="30" height="30" style="margin: 0;"></p>
                </td>
                <td>
                <#--<input type="checkbox" name="" id="ph1"><label for="ph1"></label>-->
                    <p>${list.merchantId}</p>
                </td>

                <td>
                    <p>${(list.merchantName)!"无说明"}</p>
                </td>
                <td>
                    <p>${(list.merchantIntro)!"无说明"}</p>
                </td>
                <td>
                    <p>
                        <#if (list.merchantStatus) == 0>
                            待审核
                            <#elseif (list.merchantStatus) == 1>
                            已认证
                        </#if>
                    </p>
                </td>
                <td>
                    <p>${(list.merchantAddress)!"无说明"}</p>
                </td>
                <td>
                    <p>${(list.merchantLinkman)!"无说明"}</p>
                </td>
                <td>
                    <p>${(list.merchantPhone)!"无说明"}</p>
                </td>
                <td>
                    <p>${(list.merchantType)!"无说明"}</p>
                </td>
                <td>
                    <p>${(list.merchantGrade)!"无说明"}</p>
                </td>
                <td>
                    <p>abcdefg@163.com</p>  <#-- 图片-->
                </td>
                <td>
                   <input type="button" value="编辑" onclick="getQueryIdFun(${list.merchantId})"/>
                   <input type="button" value="删除" onclick="getDeleteFun('${list.merchantId}')"/>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>
        <div id="dg"></div>
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

<script type="text/javascript">

    function getQueryIdFun(queryId) {
        alert(queryId);
        $.ajax({
            type: "GET",
            url: "/terr/getQueryId",
            async:false,//同步
            data: {'terraceId':queryId},
            dataType: "html",
            success: function (terrace) {
                //rowFirst = terrace;
                var d = dialog({
                    title: '店铺信息',
                    content: terrace,
                    okValue: '确定',
                    ok: function () {
                        //提交数据
                        updateInsertFun();
                    },
                    cancelValue: '取消',
                    cancel: function () {
                        console.log("cancel function")
                    }
                });
                d.showModal();
            }
        });
    }
    
    function updateInsertFun() {
        $.ajax({
            type:"GET",
            url:"/terr/updateTerrace",
            data:$("#update").serialize(),
            dataType:"html",
            success:function () {
                alert("修改成功")
            }
        });
    }

    




    
    function getDeleteFun(id) {
        $.ajax({
            type:"GET",
            url:"/terr/deleteFun",
            data:{"merchantId":id},
            dataType:"html",
            success:function (data) {
                alert("删除成功");
            },
            error:function () {
                alert("有问题");
            }
        });
    }
</script>
</html>