package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.junit.Test;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.LinkDao;
import cn.ithup.phone.pojo.Link;

public class LinkDaoImpl extends HibernateDaoSupport implements LinkDao {

	public void addLink(Link link) throws Exception {
		this.getHibernateTemplate().save(link);
	}

	public void deleteLink(Integer linkId) throws Exception {
		Link link = this.getHibernateTemplate().get(Link.class, linkId);
		this.getHibernateTemplate().delete(link);
	}

	public boolean modifyLink(Link link) throws Exception {
		return false;
	}

	public List<Link> findAllLink() throws Exception {
		return (List<Link>) this.getHibernateTemplate().find("from Link");
	}

	public List<Link> findLinkPage(int currPage, int pageSize) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(Link.class);
		List<Link> list = (List<Link>) this.getHibernateTemplate().findByCriteria(criteria , currPage, pageSize);
		return list;
	}

	public int getCount() throws Exception {
		List<Number> list = (List<Number>) this.getHibernateTemplate().find("select count(l) from Link l");
		if(list!=null&&list.size()>0){
            return list.get(0).intValue();
        }
        return 0;
	}

}
