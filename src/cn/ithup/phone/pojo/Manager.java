package cn.ithup.phone.pojo;

import java.io.Serializable;

/**
 * 管理员
 * @author acer
 *
 */
public class Manager implements Serializable {
	private Integer managerId;//管理员编号PK
	private String account;//账户名
	private String password;//密码
	private String name;//姓名
	private Integer sign;//管理员标识
	public Integer getManagerId() {
		return managerId;
	}
	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSign() {
		return sign;
	}
	public void setSign(Integer sign) {
		this.sign = sign;
	}
	
}
