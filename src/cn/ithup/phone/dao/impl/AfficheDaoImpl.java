package cn.ithup.phone.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.AfficheDao;
import cn.ithup.phone.pojo.Affiche;

/**
 * 持久层
 * @author acer
 *
 */
public class AfficheDaoImpl extends HibernateDaoSupport implements AfficheDao {

	public void addAffiche(Affiche affiche) throws Exception {
		this.getHibernateTemplate().save(affiche);
	}

	public void deleteAffiche(Integer afficheId) throws Exception {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(Affiche.class, afficheId));
	}

	public void modifyAffiche(Affiche affiche) throws Exception {
		this.getHibernateTemplate().update(affiche);
	}

	public List<Affiche> findAllAffiche() throws Exception {
		return (List<Affiche>) this.getHibernateTemplate().find("from Affiche");
	}

	public Affiche findAfficheByPrimaryKey(Integer afficheId) throws Exception {
		return this.getHibernateTemplate().get(Affiche.class, afficheId);
	}

}
