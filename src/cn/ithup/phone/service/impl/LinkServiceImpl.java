package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.LinkDao;
import cn.ithup.phone.pojo.Link;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.LinkService;

/**
 * 友情链接服务层
 * 
 * @author acer
 *
 */
@Transactional
public class LinkServiceImpl implements LinkService {
	private LinkDao linkDao;
	public void setLinkDao(LinkDao linkDao) {
		this.linkDao = linkDao;
	}

	public void addLink(Link link) throws Exception {
		linkDao.addLink(link);
	}

	public void deleteLink(Integer linkId) throws Exception {
		linkDao.deleteLink(linkId);
	}

	public boolean modifyLink(Link link) throws Exception {
		return false;
	}

	public List<Link> findAllLink() throws Exception {
		return linkDao.findAllLink();
	}

	public PageBean<Link> showLinkByPage(int currPage, int pageSize) throws Exception {
		// 查询当前页数据 (当前页-1)*每页显示条数,每页显示条数;
		//调用持久层分页长查询
		List<Link> list = linkDao.findLinkPage((currPage-1)*pageSize, pageSize);

		// 查询总条数
		int totalCount = linkDao.getCount();

		return new PageBean<Link>(list, currPage, pageSize, totalCount);
	}

}