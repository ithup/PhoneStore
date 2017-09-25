package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 商品信息
 * 		商品与小类别关联关系：一对多
 * @author acer
 *
 */
public class Goods implements Serializable{
	private Integer goodsId;//商品编号PK
	private String goodsName;//商品名称
	private String goodsFrom;//生产厂家
	private String introduce;//商品介绍
	private Date createTime;//发布时间
	private Double nowPrice;//商品定价
	private Double freePrice;//商品特价
	private Integer number;//商品数量
	private String pirture;//商品图片
	private Integer mark;//是否特价（特价商品标识）
	private Integer sellCount;//商品销售数量
	private SmallType smallType;//小类别编号FK
	private Set<Orderdetail> orderdetails = new HashSet<>();//商品对应订单明细
	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsFrom() {
		return goodsFrom;
	}

	public void setGoodsFrom(String goodsFrom) {
		this.goodsFrom = goodsFrom;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Double getNowPrice() {
		return nowPrice;
	}

	public void setNowPrice(Double nowPrice) {
		this.nowPrice = nowPrice;
	}

	public Double getFreePrice() {
		return freePrice;
	}

	public void setFreePrice(Double freePrice) {
		this.freePrice = freePrice;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getPirture() {
		return pirture;
	}

	public void setPirture(String pirture) {
		this.pirture = pirture;
	}

	public Integer getMark() {
		return mark;
	}

	public void setMark(Integer mark) {
		this.mark = mark;
	}

	public SmallType getSmallType() {
		return smallType;
	}

	public void setSmallType(SmallType smallType) {
		this.smallType = smallType;
	}

	public Set<Orderdetail> getOrderdetails() {
		return orderdetails;
	}

	public void setOrderdetails(Set<Orderdetail> orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Integer getSellCount() {
		return sellCount;
	}

	public void setSellCount(Integer sellCount) {
		this.sellCount = sellCount;
	}
	
}
