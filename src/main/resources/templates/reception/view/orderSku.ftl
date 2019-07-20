<html>
<head></head>
<body style="min-width:1000px;">
<table class="table text-center">
    <thead>
    <tr>
        <th class="yt" style="width: 3%;">&nbsp;SKU-ID
            <label for="all" style="width: 40px">&nbsp;</label>
        </th>
        <th style="width: 3%;" class="sort cur">SPU-ID
            <img class="bottom" src="../img/jt-bottom.png" alt="">
            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
        </th>
        <th class="sort cur" style="width:3%">商品ID
            <img class="bottom" src="../img/jt-bottom.png" alt="">
            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
        </th>
        <th class="sort cur" style="width: 5%;">同类价
            <img class="bottom" src="../img/jt-bottom.png" alt="">
            <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
        </th>
        <th class="sort cur" style="width: 5%;">数量
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
    <#list skuOreder as itme>
    <tr>
        <td>
            <label for="ph1">${itme.skuId!""}</label></td>
        <td>
            <p>${itme.orderId!""}</p>
        </td>
        <td>
            <p>${itme.itemId!""}</p>
        </td>
        <td>
            <p>${itme.skuCountprice!""}</p>
        </td>
        <td>
            <p>${itme.skuNum!""}</p>
        </td>
        <td>
            <p>${itme.skuCreateTime?string("yyyy-MM-dd HH:mm:ss")}</p>
        </td>
        <td>
            <p>${(itme.skuUpdateTime?string("yyyy-MM-dd HH:mm:ss"))!""}</p>
        </td>
    </tr>
    </#list>

    </tbody>
</table>
</body>
</html>

<script>
    if(window.parent != window){
        parent.document.getElementById("mainMenuIframeorder").style.height = (document.body.scrollHeight+30)+"px";
    }
</script>