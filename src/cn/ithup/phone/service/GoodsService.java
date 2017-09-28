package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.Goods;
import cn.ithup.phone.pojo.PageBean;

/**
 * 商品模块操作：
 * 		后台操作：商品添加、删除、查询、详细查询
 * 		前台操作：
 * 				——商品查询：按类别查看商品、按类别商品查询
 * 				——商品展台：新品上架、特价商品、销售排行
 * @author acer
 *
 */
public interface GoodsService {

	/**
	 * 商品的添加功能
	 * @param goods
	 * @return
	 * @throws Exception
	 */
	public boolean addGoods(Goods goods) throws Exception;
	
	/**
	 * 根据商品主键删除商品信息
	 * @param goodsId
	 * @return
	 * @throws Exception
	 */
	public boolean deleteGoodsByPrimaryKey(Integer goodsId) throws Exception;
	
	/**
	 * 查询所有商品信息
	 * @return
	 * @throws Exception
	 */
	public List<Goods> findAllGoods() throws Exception;
	
	/**
	 * 根据商品主键查询商品详细信息
	 * @param goodsId
	 * @return
	 * @throws Exception
	 */
	public Goods findGoodsByPrimaryKey(Integer goodsId) throws Exception;

	public List<Goods> findFreeGoods()throws Exception;

	public PageBean<Goods> showFreeGoodsByPage(int currPage, int pageSize) throws Exception;

	public List<Goods> findNewGoods()throws Exception;

	public List<Goods> findSalesRankGoods()throws Exception;
}
