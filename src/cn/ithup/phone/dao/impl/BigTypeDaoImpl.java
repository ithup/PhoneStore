package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.BigTypeDao;
import cn.ithup.phone.pojo.BigType;
import cn.ithup.phone.pojo.Link;

/**
 * 持久层：大类别模块
 * @author acer
 *
 */
public class BigTypeDaoImpl extends HibernateDaoSupport implements BigTypeDao {

	/**
	 * 持久层：分页查询数据
	 */
	public List<BigType> findBigTypePage(int currPage, int pageSize) throws Exception {
		DetachedCriteria criteria = DetachedCriteria.forClass(BigType.class);
		List<BigType> list = (List<BigType>) this.getHibernateTemplate().findByCriteria(criteria , currPage, pageSize);
		return list;
	}

	/**
	 * 持久层：查询总记录数
	 */
	public int getCount() throws Exception {
		List<Number> list = (List<Number>) this.getHibernateTemplate().find("select count(b) from BigType b");
		if(list!=null&&list.size()>0){
            return list.get(0).intValue();
        }
        return 0;
	}

	public void deleteBigTypeByPrimaryKey(Integer btId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(BigType.class, btId));
	}

	public void saveBigType(BigType bigType) {
		this.getHibernateTemplate().save(bigType);
	}

	/**
	 * 查询所有大类别
	 */
	public List<BigType> selectAlllBitType() {
		return (List<BigType>) this.getHibernateTemplate().find("from BigType");
	}

}
