package cn.ithup.phone.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.ManagerDao;
import cn.ithup.phone.pojo.Manager;

/**
 * 持久层
 * @author acer
 *
 */
public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao{

	public void saveManager(Manager manager) throws Exception {
		 this.getHibernateTemplate().save(manager);
	}

	public int deleteManager(Integer managerId) throws Exception {
		return 0;
	}

	public List<Manager> selectAllManager() throws Exception {
		return null;
	}

	public int updateManagerOfpassword(Manager manager) throws Exception {
		return 0;
	}

	public Manager selectManagerByAccoutAndPwd(Manager manager) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Manager.class);
		//设置条件
		criteria.add(Restrictions.eq("account", manager.getAccount()));
		criteria.add(Restrictions.eq("password", manager.getPassword()));
		List<Manager> list = (List<Manager>) this.getHibernateTemplate().findByCriteria(criteria);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
