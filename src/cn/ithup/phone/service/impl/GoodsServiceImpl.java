package cn.ithup.phone.service.impl;

import java.util.List;

import cn.ithup.phone.dao.GoodsDao;
import cn.ithup.phone.pojo.BigType;
import cn.ithup.phone.pojo.Goods;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.GoodsService;

/**
 * 服务层：商品模块
 * 
 * @author acer
 *
 */
public class GoodsServiceImpl implements GoodsService {

	// 注入持久层
	private GoodsDao goodsDao;

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public boolean addGoods(Goods goods) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteGoodsByPrimaryKey(Integer goodsId) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Goods> findAllGoods() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	public Goods findGoodsByPrimaryKey(Integer goodsId) throws Exception {
		return goodsDao.selectGoodsByPrimaryKey(goodsId);
	}

	/**
	 * 查询特价商品
	 */
	public List<Goods> findFreeGoods() throws Exception {
		return goodsDao.selectFreeGoods();
	}

	/**
	 * 分页查询特价商品
	 */
	public PageBean<Goods> showFreeGoodsByPage(int currPage, int pageSize) throws Exception {
		// 查询当前页数据 (当前页-1)*每页显示条数,每页显示条数;
		// 调用持久层分页长查询
		List<Goods> list = goodsDao.findFreeGoodsPage((currPage - 1) * pageSize, pageSize);

		// 查询总条数
		int totalCount = goodsDao.getCount();

		return new PageBean<Goods>(list, currPage, pageSize, totalCount);//封装数据返回PageBean
	}

	//查询最新商品
	public List<Goods> findNewGoods() throws Exception {
		return goodsDao.selectNewGoods();
	}

	//查询商品销售排行
	public List<Goods> findSalesRankGoods() throws Exception {
		return goodsDao.selectSalesRankGoods();
	}

}
