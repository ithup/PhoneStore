package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.BigTypeDao;
import cn.ithup.phone.pojo.BigType;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.BigTypeService;

/**
 * 服务层
 * 
 * @author acer
 *
 */
@Transactional
public class BigTypeServiceImpl implements BigTypeService {

	// 注入持久层bigTypeDao
	private BigTypeDao bigTypeDao;
	public void setBigTypeDao(BigTypeDao bigTypeDao) {
		this.bigTypeDao = bigTypeDao;
	}

	public void addBigType(BigType bigType) throws Exception {
		bigTypeDao.saveBigType(bigType);
	}

	public void deleteBigType(Integer btId) throws Exception {
		bigTypeDao.deleteBigTypeByPrimaryKey(btId);
	}

	public List<BigType> findAllBigType() throws Exception {
		return bigTypeDao.selectAlllBitType();
	}

	/**
	 * 分页显示大类别
	 */
	public PageBean<BigType> showBigTypeByPage(int currPage, int pageSize) throws Exception {
		// 查询当前页数据 (当前页-1)*每页显示条数,每页显示条数;
		// 调用持久层分页长查询
		List<BigType> list = bigTypeDao.findBigTypePage((currPage - 1) * pageSize, pageSize);

		// 查询总条数
		int totalCount = bigTypeDao.getCount();

		return new PageBean<BigType>(list, currPage, pageSize, totalCount);
	}

}
