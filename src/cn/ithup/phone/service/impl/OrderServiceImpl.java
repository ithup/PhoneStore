package cn.ithup.phone.service.impl;


import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.OrderDao;
import cn.ithup.phone.pojo.Order;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.OrderService;

@Transactional
public class OrderServiceImpl implements OrderService {

	//注入订单：OrderDao 
	private OrderDao orderDao;
	//注入订单详细
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}


	/**
	 * 订单添加
	 */
	public void add(Order order) throws Exception {
		orderDao.save(order);
	}


	/**
	 * 修改订单信息
	 */
	public void updateOrder(Order order) throws Exception {
		orderDao.updateOrder(order);
		
	}


	/**
	 * 根据订单主键查询订单信息
	 */
	public Order getById(String orderNumber) throws Exception {
		return orderDao.selectByrPrimaryKey(orderNumber);
	}


	/**
	 * 分页查询订单信息
	 */
	public PageBean<Order> findAllByPage(int currPage, int pageSize) throws Exception {
		//调用持久层分页查询
		List<Order> list  = orderDao.selectOrderByPage((currPage-1)*pageSize,pageSize);
		//查询总条数
		int totalCount = orderDao.getCount();
		return new PageBean<Order>(list, currPage, pageSize, totalCount);
	}

}
