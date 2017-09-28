package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.Goods;

/**
 * 商品模块操作：
 * 	
 * @author acer
 *
 */
public interface GoodsDao {

	List<Goods> selectFreeGoods();

	int getCount();

	List<Goods> findFreeGoodsPage(int currPage, int pageSize);

	Goods selectGoodsByPrimaryKey(Integer goodsId);

	List<Goods> selectNewGoods();

	List<Goods> selectSalesRankGoods();
}
