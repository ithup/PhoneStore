package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.AfficheDao;
import cn.ithup.phone.pojo.Affiche;
import cn.ithup.phone.service.AfficheService;

/**
 * 公告服务
 * @author acer
 *
 */
@Transactional
public class AfficheServiceImpl implements AfficheService {
	//注入afficheDao
	private AfficheDao afficheDao;
	public void setAfficheDao(AfficheDao afficheDao) {
		this.afficheDao = afficheDao;
	}

	public void addAffiche(Affiche affiche) throws Exception {
		afficheDao.addAffiche(affiche);
	}

	public void deleteAffiche(Integer afficheId) throws Exception {
		afficheDao.deleteAffiche(afficheId);
	}

	public void modifyAffiche(Affiche affiche) throws Exception {
		afficheDao.modifyAffiche(affiche);
	}

	public List<Affiche> findAllAffiche() throws Exception {
		return afficheDao.findAllAffiche();
	}

	public Affiche findAfficheByPrimaryKey(Integer afficheId) throws Exception {
		return afficheDao.findAfficheByPrimaryKey(afficheId);
	}

}
