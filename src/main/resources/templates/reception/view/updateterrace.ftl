    <script>
        $(function () {
            var id=$("#checked1").val();
            if(id==0){
                $("#checked1").attr('checked',true);
            }else{
                $("#checked2").attr('checked',true);
            }
        })
    </script>

<#--id="ffu"-->
<form id="update">
    <input type="text" name="merchantId" value="${(queryId.merchantId)!''}"/><br/>
    商家名称:<input type="text" name="merchantName"  value="${(queryId.merchantName)!''}"/><br>
    商家状态:<input id="checked1" type="radio" name="merchantStatus" value="${queryId.merchantStatus}" />待审核
            <input id="checked2" type="radio" name="merchantStatus" value="${(queryId.merchantStatus)!''}">已认证<br/
    商家地址:<input type="text" name="merchantAddress" value="${(queryId.merchantAddress)!''}"/><br/>
    联系人:<input type="text" name="merchantLinkman" value="${(queryId.merchantLinkman)!''}"/><br/>
    商家电话:<input type="text" name="merchantPhone" value="${(queryId.merchantPhone)!''}"/><br/>
    经营品类:<select name="merchantType">
                <#if queryId.merchantType==-1>
                    <option>请选择</option>
                <#elseif queryId.merchantType==0>
                    <option>快餐</option>
                <#elseif queryId.merchantType==1>
                    <option>火锅</option>
                <#elseif queryId.merchantType==2>
                    <option>小吃</option>
                <#elseif queryId.merchantType==3>
                    <option>粤菜</option>
                <#elseif queryId.merchantType==4>
                    <option>川菜</option>
                <#elseif queryId.merchantType==5>
                    <option>东北菜</option>
                </#if>
</select><br/>
<#--商家评分:<input type="text" name="merchantGrade"/><br/>
商家图片:<input type="text" name="null">-->
</form>

