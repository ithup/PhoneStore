package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.SmallType;

/**
 * 商品小类别模块操作：
 * 
 * @author acer
 *
 */
public interface SmallTypeDao {

	List<SmallType> findSmallTypePage(int currPage, int pageSize);

	int getCount();

	void saveSmallType(SmallType smallType);

	void deleteSmalTypeByPrimaryKey(Integer stId);

}
