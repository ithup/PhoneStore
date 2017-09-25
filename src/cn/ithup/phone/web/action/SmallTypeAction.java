package cn.ithup.phone.web.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.pojo.SmallType;
import cn.ithup.phone.service.SmallTypeService;

/**
 * 模块
 * 		
 * @author acer
 *
 */
public class SmallTypeAction extends ActionSupport implements ModelDriven<SmallType>{

	//注入服务层：smallTypeService
	private SmallTypeService smallTypeService;
	public void setSmallTypeService(SmallTypeService smallTypeService) {
		this.smallTypeService = smallTypeService;
	}
	//模型驱动封装数据
	private SmallType smallType = new SmallType();
	public SmallType getModel() {
		return smallType;
	}
	/**
	 * 分页显示数据
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public String showPage() throws Exception {
		// 1.获取第几页
		HttpServletRequest request = ServletActionContext.getRequest();
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		// 固定每页显示的条数
		int pageSize = 3;

		// 2.调用service完成分页查询 返回值:pagebean
		PageBean<SmallType> bean = null;
		try {
			bean = smallTypeService.showSmallTypeByPage(currPage, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.将pagebean放入request域中,请求转发
		request.setAttribute("st", bean);
		return SUCCESS;
	}
	
	/**
	 * 删除
	 * @return
	 * @throws Exception 
	 */
	public String delete() throws Exception{
		smallTypeService.deleteSmallType(smallType.getStId());
		return "handleSuccess";
	}
	
	/**
	 * 添加一条小类别记录
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception{
		smallType.setStCreateTime(new Date());
		smallTypeService.addSmallType(smallType);
		return "handleSuccess";
	}
	
}
