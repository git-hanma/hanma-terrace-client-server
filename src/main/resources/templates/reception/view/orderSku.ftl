<#list item.orderSkus as sku>
<tr>
    <td>
        <label for="ph1">${sku.skuId!""}</label></td>
    <td>
        <p>${sku.orderId!""}</p>
    </td>
    <td>
        <p>${sku.itemId!""}</p>
    </td>
    <td>
        <p>${sku.skuCountprice!""}</p>
    </td>
    <td>
        <p>${sku.skuNum!""}</p>
    </td>
    <td>
        <p>${sku.skuCreateTime?string("yyyy-MM-dd HH:mm:ss")}</p>
    </td>
    <td>
        <p>${sku.skuUpdateTime?string("yyyy-MM-dd HH:mm:ss")}</p>
    </td>
</tr>
</#list>
<script>
    if(window.parent != window){
        parent.document.getElementById("mainMenuIframeorder").style.height = (document.body.scrollHeight+30)+"px";
    }
</script>