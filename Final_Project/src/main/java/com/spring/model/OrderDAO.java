package com.spring.model;

import java.util.List;
import java.util.Map;

public interface OrderDAO {
    void save(OrderDTO orderDTO);

    int allCount();

    int totalSales();

    Map<String, Map<String, Object>> dailysales();

    List<OrderDTO> getList(int userNo);


    int get_order_set();

    List<OrderListDTO> allList();

    int percentSale();
}
