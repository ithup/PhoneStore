package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.Order;

/**
 * 订单模块操作：
 * 
 * @author acer
 *
 */
public interface OrderDao {

	void save(Order order) throws Exception;

	Order selectByrPrimaryKey(String orderNumber) throws Exception;

	void updateOrder(Order order)throws Exception;

	List<Order> selectOrderByPage(int currPage, int pageSize)throws Exception;

	int getCount()throws Exception;

}
