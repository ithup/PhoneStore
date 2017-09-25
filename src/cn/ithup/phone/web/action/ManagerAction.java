package cn.ithup.phone.web.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.Manager;
import cn.ithup.phone.service.ManagerService;

/**
 * 管理员模块
 * 		登录、添加管理员、修改管理员密码
 * @author acer
 *
 */
public class ManagerAction extends ActionSupport implements ModelDriven<Manager>{
	//注入ManagerService
	private ManagerService managerService;
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	private Manager manager = new Manager();
	public Manager getModel() {
		return manager;
	}
	
	/**
	 * 管理员登录
	 * @return
	 */
	public String login(){
		try {
			Manager existManager =  managerService.isLogin(manager);
			ServletActionContext.getRequest().getSession().setAttribute("manager", existManager);
			if(existManager != null){
				return SUCCESS;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}
	
	public String add() throws Exception{
		managerService.addManager(manager);
		return SUCCESS;
	}
	
}
