package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 订单信息
 * 		订单和会员关联关系：多对一
 * @author acer
 *
 */
public class Order implements Serializable {
	private String orderNumber;//订单编号PK
	private String ContacterName;//收货人姓名
	private String address;//订货人地址
	private String tel;//订货人电话
	private String setMoney;//付款方式
	private String post;//订货邮寄方式
	private String bz;//订货备注信息
	private Integer sign=0;//是否处理:订单状态  0:未支付  1:已支付 
	private Date createTime;//发布时间
	private Double total;//订单总金额
	//订单和会员关联关系：多对一
	private Member member;//账户名FK
	private Set<Orderdetail> orderdetails = new HashSet<>();//订单对应订单明细		
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSetMoney() {
		return setMoney;
	}
	public void setSetMoney(String setMoney) {
		this.setMoney = setMoney;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	public Integer getSign() {
		return sign;
	}
	public void setSign(Integer sign) {
		this.sign = sign;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Set<Orderdetail> getOrderdetails() {
		return orderdetails;
	}
	public void setOrderdetails(Set<Orderdetail> orderdetails) {
		this.orderdetails = orderdetails;
	}
	public String getContacterName() {
		return ContacterName;
	}
	public void setContacterName(String contacterName) {
		ContacterName = contacterName;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
}
