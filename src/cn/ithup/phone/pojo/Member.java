package cn.ithup.phone.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 会员信息
 * 			会员和订单关联关系：一对多
 * @author acer
 *
 */
public class Member implements Serializable{
	private String memberName;//账户名PK
	private String password;//密码
	private String reallyName;//真实姓名
	private Integer age;//年龄
	private String profession;//职业
	private String email;//邮箱
	private String question;//问题
	private String result;//答案
	private String address;//地址
	//会员和订单关联关系：一对多
	private Set<Order> orders = new HashSet<>();
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReallyName() {
		return reallyName;
	}
	public void setReallyName(String reallyName) {
		this.reallyName = reallyName;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
}
