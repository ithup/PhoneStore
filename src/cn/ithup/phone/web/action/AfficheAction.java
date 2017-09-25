package cn.ithup.phone.web.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.Affiche;
import cn.ithup.phone.service.AfficheService;

public class AfficheAction extends ActionSupport implements ModelDriven<Affiche>{
	//注入afficheService
	private AfficheService afficheService;
	public void setAfficheService(AfficheService afficheService) {
		this.afficheService = afficheService;
	}

	private Affiche affiche = new Affiche();
	public Affiche getModel() {
		return affiche;
	}

	/**
	 * 查询所有公告信息
	 * @return
	 * @throws Exception 
	 */
	public String findAll() throws Exception{
		List<Affiche> list = afficheService.findAllAffiche();
		ActionContext.getContext().put("list", list);
		return SUCCESS;
	}
	
	/**
	 * 添加公告信息
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception{
		affiche.setAfficheIssueTime(new Date());
		afficheService.addAffiche(affiche);
		return "handleSuccess";
	}
	
	/**
	 * 查询公告详细信息
	 * @return
	 * @throws Exception 
	 */
	public String findDetail() throws Exception{
		Affiche afficheByPrimaryKey = afficheService.findAfficheByPrimaryKey(affiche.getAfficheId());
		ActionContext.getContext().put("affiche", afficheByPrimaryKey);
		return "afficheDetail";
	}
	
	public String findPrimaryKey() throws Exception{
		Affiche afficheByPrimaryKey = afficheService.findAfficheByPrimaryKey(affiche.getAfficheId());
		ActionContext.getContext().put("affiche", afficheByPrimaryKey);
		return "afficheUpdate";
	}
	
	/**
	 * 修改公告信息
	 * @return
	 * @throws Exception 
	 */
	public String modify() throws Exception{
		affiche.setAfficheIssueTime(new Date());
		afficheService.modifyAffiche(affiche);
		return "handleSuccess";
	}
	/**
	 * 删除公告信息
	 * @return
	 * @throws Exception 
	 */
	
	public String delete() throws Exception{
		afficheService.deleteAffiche(affiche.getAfficheId());
		return "handleSuccess";
	}
}
