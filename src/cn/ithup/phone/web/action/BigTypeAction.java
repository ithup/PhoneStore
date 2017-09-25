package cn.ithup.phone.web.action;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.BigType;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.BigTypeService;

/**
 * 模块
 * 		
 * @author acer
 *
 */
public class BigTypeAction extends ActionSupport implements ModelDriven<BigType>{

	//注入服务层bigTypeService
	private BigTypeService bigTypeService;
	public void setBigTypeService(BigTypeService bigTypeService) {
		this.bigTypeService = bigTypeService;
	}
	//模型驱动封装数据
	private BigType bigType = new BigType();
	public BigType getModel() {
		return bigType;
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
		PageBean<BigType> bean = null;
		try {
			bean = bigTypeService.showBigTypeByPage(currPage, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.将pagebean放入request域中,请求转发
		request.setAttribute("bt", bean);
		return SUCCESS;
	}
	
	/**
	 * 删除
	 * @return
	 * @throws Exception 
	 */
	public String delete() throws Exception{
		bigTypeService.deleteBigType(bigType.getBtId());
		return "handleSuccess";
	}
	
	/**
	 * 添加一条大类别记录
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception{
		bigType.setBtCreateTime(new Date());
		bigTypeService.addBigType(bigType);
		return "handleSuccess";
	}
	
	/**
	 * 查询所有大类别
	 * @return
	 * @throws Exception 
	 */
	public String findAll() throws Exception{
		List<BigType> bigType = bigTypeService.findAllBigType();
		ActionContext.getContext().put("list", bigType);
		return "bigTypeList";
	}
}
