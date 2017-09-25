package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.Manager;

/**
 * 后台管理员模块功能：
 * 			管理员添加，删除，查询，密码修改
 * @author acer
 *
 */
public interface ManagerDao {
	/**
	 * 管理员添加操作
	 * @param manager
	 * @throws Exception
	 */
	public void saveManager(Manager manager) throws Exception;
	
	/**
	 * 管理员删除操作
	 * @param managerId
	 * @return
	 * @throws Exception
	 */
	public int deleteManager(Integer managerId) throws Exception;
	
	/**
	 * 查询所有管理员信息
	 * @return
	 * @throws Exception
	 */
	public List<Manager> selectAllManager() throws Exception;
	
	/**
	 * 修改管理员密码
	 * @param manager
	 * @return
	 * @throws Exception
	 */
	public int updateManagerOfpassword(Manager manager) throws Exception;

	/**
	 * 根据账户和密码查询管理员
	 * @param manager
	 * @return
	 */
	public Manager selectManagerByAccoutAndPwd(Manager manager)throws Exception;
}
