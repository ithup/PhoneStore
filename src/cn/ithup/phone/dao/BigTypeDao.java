package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.BigType;

/**
 * 商品大类别模块操作：
 * 			
 * @author acer
 *
 */
public interface BigTypeDao {

	/**
	 * 分页查询大类别
	 * @param i
	 * @param pageSize
	 * @return
	 */
	List<BigType> findBigTypePage(int currPage, int pageSize) throws Exception;

	/**
	 * 查询总记录数
	 * @return
	 */
	int getCount() throws Exception;

	/**
	 * 删除一条大类别
	 * @param btId
	 */
	void deleteBigTypeByPrimaryKey(Integer btId);

	/**
	 * 添加一条大类别记录
	 * @param bigType
	 */
	void saveBigType(BigType bigType);

	List<BigType> selectAlllBitType();

}
