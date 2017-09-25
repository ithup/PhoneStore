package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.pojo.SmallType;

/**
 * 商品小类别模块操作：
 * 			后台功能：商品小类别添加、删除、查询
 * @author acer
 *
 */
public interface SmallTypeService {
	/**
	 * 添加小类别
	 * @param smallType
	 * @return
	 * @throws Exception
	 */
	public void addSmallType(SmallType smallType) throws Exception;
	
	/**
	 * 根据小类别主键删除
	 * @param btId
	 * @return
	 * @throws Exception
	 */
	public void deleteSmallType(Integer stId) throws Exception;
	
	/**
	 * 查询所有小类别
	 * @return
	 * @throws Exception
	 */
	public List<SmallType> findAllSmallType() throws Exception;

	
	public PageBean<SmallType> showSmallTypeByPage(int currPage, int pageSize);
}
