package com.hanma.hanmaterraceclientserver.order.service;/**
 * Created by Administrator on 2019/7/17.
 */

import com.hanma.hanmaterraceclientserver.order.domain.Order;
import com.hanma.hanmaterraceclientserver.order.domain.OrderSku;
import com.hanma.hanmaterraceclientserver.order.service.impl.OrderServiceImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @program: hanma-terrace-client-server
 * @description: feign订单接口
 * @author: "Laugh Yan
 * @author: 申笑琰
 * @create: 2019-07-17 11:31
 */
@FeignClient(name = "HANMA-ORDER-SERVER",fallback = OrderServiceImpl.class)
public interface OrderService {
    /**
    *@Description: OrderService java类作用描述:查询订单调用
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/17 下午 05:10
    */
    @RequestMapping(value = "plat/queryOrderList",method = RequestMethod.GET)
    List<Order> queryOrderList(@RequestParam("orderNumber") String orderNumber);
    /**
    *@Description: OrderService java类作用描述:根据主订单ID查询sku表信息
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/20 上午 10:17
    */
    @RequestMapping(value = "order/orderSku",method = RequestMethod.GET)
    List<OrderSku> ORDER_SKUS(@RequestParam("orderid") Long orderid);
}
