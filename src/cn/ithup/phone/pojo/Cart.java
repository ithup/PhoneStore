package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart implements Serializable {
	// 存放购物车项的集合 key:商品的id cartitem:购物车项 使用map集合便于删除单个购物车项
	private Map<Integer, CartGoods> map = new LinkedHashMap<>();

	// 总金额
	private Double total = 0.0;

	/**
	 * 获取所有的购物车项
	 * 
	 * @return
	 */
	public Collection<CartGoods> getCartGoods() {
		return map.values();
	}

	/**
	 * 添加到购物车
	 * 
	 * @param item
	 *            购物车项
	 */
	public void addCart(CartGoods goods) {
		// 1.先判断购物车中有无该商品
		// 1.1先获取商品的id
		Integer gid = goods.getGoods().getGoodsId();
		if (map.containsKey(gid)) {
			// 有
			// 设置购买数量 需要获取该商品之前的购买数量+现在的购买数量(item.getCount)
			// 获取购物车中购物车项
			CartGoods oldGoods = map.get(gid);
			oldGoods.setCount(oldGoods.getCount() + goods.getCount());
		} else {
			// 没有 将购物车项添加进去
			map.put(gid, goods);
		}

		// 2.添加完成之后 修改金额
		total += goods.getSubtotal();
	}

	/**
	 * 从购物车删除指定购物车项
	 * 
	 * @param pid
	 *            商品的id
	 */
	public void removeFromCart(int gid) {
		// 1.从集合中删除
		CartGoods goods = map.remove(gid);

		// 2.修改金额
		total -= goods.getSubtotal();
	}

	/**
	 * 清空购物车
	 */
	public void clearCart() {
		// 1.map置空
		map.clear();

		// 2.金额归零
		total = 0.0;
	}

	public Map<Integer, CartGoods> getMap() {
		return map;
	}

	public void setMap(Map<Integer, CartGoods> map) {
		this.map = map;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}
