package cn.ithup.phone.pojo;

import java.io.Serializable;

/**
 * 友情链接信息
 * @author acer
 *
 */
public class Link implements Serializable{
	private Integer linkId;//友情链接编号PK
	private String linkName;//网站名称
	private String linkAddress;//网站地址
	public Integer getLinkId() {
		return linkId;
	}
	public void setLinkId(Integer linkId) {
		this.linkId = linkId;
	}
	public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}
	public String getLinkAddress() {
		return linkAddress;
	}
	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}
	
}
