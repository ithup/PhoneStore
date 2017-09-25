package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.BigType;
import cn.ithup.phone.pojo.PageBean;

/**
 * 商品大类别模块操作：
 * 			后台功能：商品大类别添加、删除、查询
 * @author acer
 *
 */
public interface BigTypeService {
	
	/**
	 * 添加大类别
	 * @param bigType
	 * @return
	 * @throws Exception
	 */
	public void addBigType(BigType bigType) throws Exception;
	
	/**
	 * 根据大类别主键删除
	 * @param btId
	 * @return
	 * @throws Exception
	 */
	public void deleteBigType(Integer btId) throws Exception;
	
	/**
	 * 查询所有大类别
	 * @return
	 * @throws Exception
	 */
	public List<BigType> findAllBigType() throws Exception;

	/**
	 * 分页查询
	 * @param currPage
	 * @param pageSize
	 * @return
	 */
	public PageBean<BigType> showBigTypeByPage(int currPage, int pageSize) throws Exception;
}
