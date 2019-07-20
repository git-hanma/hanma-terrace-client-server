package com.hanma.hanmaterraceclientserver.order.controller;/**
 * Created by Administrator on 2019/7/17.
 */

import com.google.gson.Gson;
import com.hanma.hanmaterraceclientserver.order.domain.Order;
import com.hanma.hanmaterraceclientserver.order.domain.OrderSku;
import com.hanma.hanmaterraceclientserver.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @program: hanma-terrace-client-server
 * @description: 订单控制层
 * @author: "Laugh Yan
 * @author: 申笑琰
 * @create: 2019-07-17 11:38
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    /**
    *@Description: OrderController java类作用描述:订单全部查询
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/17 下午 04:20
    */
    @ResponseBody
    @RequestMapping("orderList")
    public ModelAndView orderlist(String orderNumber){
        ModelAndView mav =new ModelAndView("/reception/view/orderList");
        List<Order> orderList = orderService.queryOrderList(orderNumber);
        mav.addObject("order", orderList);
        System.out.println(orderList);
        return mav;
    }
    /**
    *@Description: OrderController java类作用描述:订单的sku查询
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/18 上午 11:33
    */
    @ResponseBody
    @RequestMapping("orderSku")
    public ModelAndView orderSku(Long orderid){
        /*List<Order> orderList = orderService.queryOrderList(null);
        if (orderid!=null) {
            for (int i = 0; i < orderList.size(); i++) {
                for (int j=0;j<orderList.get(i).getOrderSkus().size();i++){
                    if (orderList.get(i).getOrderSkus().get(j).getOrderId().equals(orderid)){
                        ModelAndView mav =new ModelAndView("/reception/view/orderSku");
                        mav.addObject("skuOreder", orderList.get(i).getOrderSkus());
                        System.out.println(orderList.get(i).getOrderSkus());
                        return mav;
                    }
                }
            }
        }*/
        ModelAndView mav =new ModelAndView("/reception/view/orderSku");
        List<OrderSku> orderSkus = orderService.ORDER_SKUS(orderid);
        mav.addObject("skuOreder", orderSkus);
        return mav;
    }
}
