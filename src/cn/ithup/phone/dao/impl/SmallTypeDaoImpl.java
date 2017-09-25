package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.SmallTypeDao;
import cn.ithup.phone.pojo.SmallType;

/**
 * 持久层：小类别模块
 * @author acer
 *
 */
public class SmallTypeDaoImpl extends HibernateDaoSupport implements SmallTypeDao {

	public List<SmallType> findSmallTypePage(int currPage, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(SmallType.class);
		List<SmallType> list = (List<SmallType>) this.getHibernateTemplate().findByCriteria(criteria , currPage, pageSize);
		return list;
	}

	public int getCount() {
		List<Number> list = (List<Number>) this.getHibernateTemplate().find("select count(s) from SmallType s");
		if(list!=null&&list.size()>0){
            return list.get(0).intValue();
        }
        return 0;
	}

	/**
	 * 添加一条小类别
	 */
	public void saveSmallType(SmallType smallType) {
		this.getHibernateTemplate().save(smallType);
	}

	/**
	 * 删除一条小类别
	 */
	public void deleteSmalTypeByPrimaryKey(Integer stId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(SmallType.class, stId));
	}

}
