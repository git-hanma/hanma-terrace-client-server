package com.hanma.hanmaterraceclientserver.order.service.impl;/**
 * Created by Administrator on 2019/7/17.
 */

import com.hanma.hanmaterraceclientserver.order.domain.Order;
import com.hanma.hanmaterraceclientserver.order.domain.OrderSku;
import com.hanma.hanmaterraceclientserver.order.service.OrderService;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: hanma-terrace-client-server
 * @description: 断路器
 * @author: "Laugh Yan
 * @author: 申笑琰
 * @create: 2019-07-17 15:20
 */
@Component
public class OrderServiceImpl implements OrderService {


    @Override
    public List<Order> queryOrderList(String orderNumber) {
        return null;
    }

    @Override
    public List<OrderSku> ORDER_SKUS(Long orderid) {
        return null;
    }
}
