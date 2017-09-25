package cn.ithup.phone.pojo;

import java.io.Serializable;
/**
 * 购物车项
 * @author 顾怀要
 *
 */
public class CartGoods implements Serializable{
	private Goods goods;//商品对象
	private Integer	count;//购买数量
	private Double	subtotal=0.0;//小计
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Double getSubtotal() {
		//计算小计：商品价格*购买数量
		return goods.getFreePrice()*count;
	}
	//构造参数
	public CartGoods() {
	}
	//带参构造
	public CartGoods(Goods goods, Integer count) {
		super();
		this.goods = goods;
		this.count = count;
	}
}
