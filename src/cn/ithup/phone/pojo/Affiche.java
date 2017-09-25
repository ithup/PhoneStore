package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 公告信息
 * 		该实体主要是保存公告的标题、公告内容的信息
 * @author acer
 *
 */
public class Affiche implements Serializable {
	private Integer afficheId;//公告编号PK
	private String afficheName;//公告标题
	private String afficheContent;//公告内容
	private Date afficheIssueTime;//发布时间
	public Integer getAfficheId() {
		return afficheId;
	}
	public void setAfficheId(Integer afficheId) {
		this.afficheId = afficheId;
	}
	public String getAfficheName() {
		return afficheName;
	}
	public void setAfficheName(String afficheName) {
		this.afficheName = afficheName;
	}
	public String getAfficheContent() {
		return afficheContent;
	}
	public void setAfficheContent(String afficheContent) {
		this.afficheContent = afficheContent;
	}
	public Date getAfficheIssueTime() {
		return afficheIssueTime;
	}
	public void setAfficheIssueTime(Date afficheIssueTime) {
		this.afficheIssueTime = afficheIssueTime;
	}
	
}
