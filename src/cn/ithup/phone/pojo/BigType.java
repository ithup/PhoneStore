package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 商品大类别信息
 * 		商品大类别与小类别关联关系：1对多---1：n
 * @author acer
 *
 */
public class BigType implements Serializable{
	private Integer btId;//商品大类编号PK
	private String btBigName;//大类别名称
	private Date btCreateTime;//发布时间	
	private Set<SmallType> smallType = new HashSet<>();
	public Integer getBtId() {
		return btId;
	}
	public void setBtId(Integer btId) {
		this.btId = btId;
	}
	public String getBtBigName() {
		return btBigName;
	}
	public void setBtBigName(String btBigName) {
		this.btBigName = btBigName;
	}
	public Date getBtCreateTime() {
		return btCreateTime;
	}
	public void setBtCreateTime(Date btCreateTime) {
		this.btCreateTime = btCreateTime;
	}
	public Set<SmallType> getSmallType() {
		return smallType;
	}
	public void setSmallType(Set<SmallType> smallType) {
		this.smallType = smallType;
	}
	
}
