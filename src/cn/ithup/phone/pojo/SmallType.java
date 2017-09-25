package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 商品小类别信息
 * 		商品大类别与小类别关联关系：1对多---1：n
 * 		一个大类别对应多个小类别
 * 商品与小类别关联关系：一对多
 * @author acer
 *
 */
public class SmallType implements Serializable {
	private Integer stId;//小类别编号PK
	private String stSmallName;//小类别名称
	private Date stCreateTime;//发布时间
	private BigType bigType;
	//一个小类别对应多个商品
	private Set<Goods> goods = new HashSet<>();
	public Integer getStId() {
		return stId;
	}
	public void setStId(Integer stId) {
		this.stId = stId;
	}
	public String getStSmallName() {
		return stSmallName;
	}
	public void setStSmallName(String stSmallName) {
		this.stSmallName = stSmallName;
	}
	public Date getStCreateTime() {
		return stCreateTime;
	}
	public void setStCreateTime(Date stCreateTime) {
		this.stCreateTime = stCreateTime;
	}
	public BigType getBigType() {
		return bigType;
	}
	public void setBigType(BigType bigType) {
		this.bigType = bigType;
	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	
}
