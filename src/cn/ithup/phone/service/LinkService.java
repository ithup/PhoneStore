package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.Link;
import cn.ithup.phone.pojo.PageBean;

/**
 * 友情链接模块操作：
 * 			后台操作：友情链接添加、删除、修改、查询
 * @author acer
 *
 */
public interface LinkService {
	
	/**
	 * 友情链接添加操作
	 * @param link
	 * @return
	 * @throws Exception
	 */
	public void addLink(Link link) throws Exception;
	
	/**
	 * 根据友情链接主键删除
	 * @param linkId
	 * @return
	 * @throws Exception
	 */
	public void deleteLink(Integer linkId) throws Exception;
	
	/**
	 * 友情链接修改操作
	 * @param link
	 * @return
	 * @throws Exception
	 */
	public boolean modifyLink(Link link) throws Exception;
	
	/**
	 * 查询所有友情链接信息
	 * @return
	 * @throws Exception
	 */
	public List<Link> findAllLink() throws Exception;
	
	/**
	 * 分页查询友情链接
	 * @param currPage    第几页
	 * @param pageSize    每页显示的条数
	 * @return
	 * @throws Exception
	 */
	public PageBean<Link> showLinkByPage(int currPage, int pageSize) throws Exception;
}
