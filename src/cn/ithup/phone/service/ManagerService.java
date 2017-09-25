package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.Manager;

/**
 * 后台管理员模块功能：
 * 			管理员添加，删除，查询，密码修改
 * @author acer
 *
 */
public interface ManagerService {
	/**
	 * 管理员添加操作
	 * @param manager
	 * @throws Exception
	 */
	public void addManager(Manager manager) throws Exception;
	
	/**
	 * 管理员删除操作
	 * @param managerId
	 * @return
	 * @throws Exception
	 */
	public boolean deleteManager(Integer managerId) throws Exception;
	
	/**
	 * 查询所有管理员信息
	 * @return
	 * @throws Exception
	 */
	public List<Manager> findAllManager() throws Exception;
	
	/**
	 * 修改管理员密码
	 * @param manager
	 * @return
	 * @throws Exception
	 */
	public boolean modifyManagerOfpassword(Manager manager) throws Exception;

	/**
	 * 管理员登录
	 * @param manager
	 * @return
	 */
	public Manager isLogin(Manager manager) throws Exception;
}
