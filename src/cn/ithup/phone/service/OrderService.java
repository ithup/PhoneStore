package cn.ithup.phone.service;

import cn.ithup.phone.pojo.Order;
import cn.ithup.phone.pojo.PageBean;

/**
 * 订单模块操作：
 * 
 * @author acer
 *
 */
public interface OrderService {

	void add(Order order) throws Exception;


	void updateOrder(Order order)throws Exception;


	Order getById(String orderNumber)throws Exception;


	PageBean<Order> findAllByPage(int currPage, int pageSize)throws Exception;

}
