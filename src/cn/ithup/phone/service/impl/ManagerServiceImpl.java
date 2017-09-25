package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.ManagerDao;
import cn.ithup.phone.pojo.Manager;
import cn.ithup.phone.service.ManagerService;

/**
 * 管理员业务层
 * @author acer
 *
 */
@Transactional
public class ManagerServiceImpl implements ManagerService {
	//注入ManagerDao
	private ManagerDao managerDao;
	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}

	public void addManager(Manager manager) throws Exception {
		managerDao.saveManager(manager);
	}

	public boolean deleteManager(Integer managerId) throws Exception {
		return false;
	}

	public List<Manager> findAllManager() throws Exception {
		return null;
	}

	public boolean modifyManagerOfpassword(Manager manager) throws Exception {
		return false;
	}

	public Manager isLogin(Manager manager) throws Exception {
		return managerDao.selectManagerByAccoutAndPwd(manager);
	}

}
