
<form id="addInsert">
    商家名称:<input type="text" name="merchantName"/><br>
    商家状态:<input type="radio" name="merchantStatus" value="0">待审核
            <input type="radio" name="merchantStatus" value="1">已认证<br/>
    商家地址:<input type="text" name="merchantAddress"/><br/>
    联系人:<input type="text" name="merchantLinkman"/><br/>
    商家电话:<input type="text" name="merchantPhone"/><br/>
    经营品类:<select name="merchantType">
                <option value="0">快餐</option>
                <option value="1">火锅</option>
                <option value="2">小吃</option>
                <option value="3">粤菜</option>
                <option value="4">川菜</option>
                <option value="5">东北菜</option>
            </select><br/>
    商家评分:<input type="text" name="merchantGrade"/><br/>
    商家图片:<input type="text" name="null">
</form>