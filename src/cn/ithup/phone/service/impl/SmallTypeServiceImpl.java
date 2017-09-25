package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.SmallTypeDao;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.pojo.SmallType;
import cn.ithup.phone.service.SmallTypeService;

/**
 * 服务层：小类别模块
 * 
 * @author acer
 *
 */
@Transactional
public class SmallTypeServiceImpl implements SmallTypeService {

	// 注入持久层：smallTypeDao
	private SmallTypeDao smallTypeDao;
	public void setSmallTypeDao(SmallTypeDao smallTypeDao) {
		this.smallTypeDao = smallTypeDao;
	}

	public void addSmallType(SmallType smallType) throws Exception {
		smallTypeDao.saveSmallType(smallType);
	}

	public void deleteSmallType(Integer stId) throws Exception {
		smallTypeDao.deleteSmalTypeByPrimaryKey(stId);
	}

	@Override
	public List<SmallType> findAllSmallType() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 分页查询小类别
	 */
	public PageBean<SmallType> showSmallTypeByPage(int currPage, int pageSize) {
		// 查询当前页数据 (当前页-1)*每页显示条数,每页显示条数;
		// 调用持久层分页长查询
		List<SmallType> list = smallTypeDao.findSmallTypePage((currPage - 1) * pageSize, pageSize);

		// 查询总条数
		int totalCount = smallTypeDao.getCount();

		return new PageBean<SmallType>(list, currPage, pageSize, totalCount);
	}

}
