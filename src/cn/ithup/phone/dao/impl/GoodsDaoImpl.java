package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.GoodsDao;
import cn.ithup.phone.pojo.Goods;

/**
 * 持久层：商品模块
 * @author acer
 *
 */
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	/**
	 * 查询特价商品
	 */
	public List<Goods> selectFreeGoods() {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		//添加条件，是否是特价
		criteria.add(Restrictions.eq("mark", 1));
		return (List<Goods>) this.getHibernateTemplate().findByCriteria(criteria );
	}

	/**
	 * 查找特价商品总数
	 */
	public int getCount() {
		List<Number> list = (List<Number>) this.getHibernateTemplate().find("select count(g) from Goods g where mark=1");
		if(list!=null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	
	/**
	 * 分页查询特价商品
	 */
	public List<Goods> findFreeGoodsPage(int currPage, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		//添加条件，是否是特价
		criteria.add(Restrictions.eq("mark", 1));
		return (List<Goods>) this.getHibernateTemplate().findByCriteria(criteria,currPage,pageSize);
	}

	/**
	 * 根据主键查询商品详细信息
	 */
	public Goods selectGoodsByPrimaryKey(Integer goodsId) {
		return this.getHibernateTemplate().get(Goods.class, goodsId);
	}

	//查询最新商品
	public List<Goods> selectNewGoods() {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		criteria.addOrder(Order.desc("createTime"));
		return (List<Goods>) this.getHibernateTemplate().findByCriteria(criteria,0,5);
	}

	//查询商品销售排行
	public List<Goods> selectSalesRankGoods() {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		criteria.addOrder(Order.desc("sellCount"));
		return (List<Goods>) this.getHibernateTemplate().findByCriteria(criteria,0,5);
	}

}
