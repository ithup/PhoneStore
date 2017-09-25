package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.OrderDao;
import cn.ithup.phone.pojo.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	/**
	 * 保存订单信息
	 */
	public void save(Order order) throws Exception {
		this.getHibernateTemplate().save(order);
	}

	/**
	 * 查询订单信息：主键
	 */
	public Order selectByrPrimaryKey(String orderNumber) throws Exception {
		return this.getHibernateTemplate().get(Order.class, orderNumber);
	}

	/**
	 * 修改订单信息
	 */
	public void updateOrder(Order order) throws Exception {
		//Order order2 = this.getHibernateTemplate().get(Order.class, order.getOrderNumber());
		this.getHibernateTemplate().update(order);
	}

	/**
	 * 分页查询
	 */
	public List<Order> selectOrderByPage(int currPage, int pageSize) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Order.class);
		return (List<Order>) this.getHibernateTemplate().findByCriteria(criteria ,currPage,pageSize);
	}

	//查询总条数
	public int getCount() throws Exception {
		List<Number> list = (List<Number>) this.getHibernateTemplate().find("select count(o) from Order o");
		if(list!=null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

}
