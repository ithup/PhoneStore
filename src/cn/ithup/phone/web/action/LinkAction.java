package cn.ithup.phone.web.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.Link;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.LinkService;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * 友情链接模块
 * 
 * @author acer
 *
 */
public class LinkAction extends ActionSupport implements ModelDriven<Link> {
	//注入jedisPool
	private JedisPool jedisPool;//获取连接池
	public void setJedisPool(JedisPool jedisPool) {
		this.jedisPool = jedisPool;
	}

	private InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}
	
	// 注入linkService
	private LinkService linkService;
	public void setLinkService(LinkService linkService) {
		this.linkService = linkService;
	}

	// 模型驱动封装数据
	private Link link = new Link();
	public Link getModel() {
		return link;
	}

	/**
	 * 查询所有友情链接
	 * 
	 * @return
	 * @throws Exception
	 */
	public String selectAll() throws Exception {
		List<Link> allLink = linkService.findAllLink();
		ActionContext.getContext().put("links", allLink);
		return SUCCESS;
	}

	/**
	 * 添加友情链接操作
	 * 
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception {
		linkService.addLink(link);
		return "handleSuccess";
	}

	/**
	 * 友情连接删除操作
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		linkService.deleteLink(link.getLinkId());
		return "handleSuccess";
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
		PageBean<Link> bean = null;
		try {
			bean = linkService.showLinkByPage(currPage, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.将pagebean放入request域中,请求转发product_page.jsp
		request.setAttribute("link", bean);
		return SUCCESS;
	}

	/**
	 * ajax异步请求友情链接
	 * @return
	 * @throws Exception 
	 */
	public String fgShow() throws Exception{
		//先从缓存中查询link 如果有直接使用 没有在从数据库中查询 存到缓存中
		//1、获得jedis对象 连接redis数据库
		Jedis jedis = jedisPool.getResource();
		String linkListJson = jedis.get("linkListJson");
		//2、判断linkListJson是否为空
		if(linkListJson == null){
			System.out.println("缓存没有数据 查询数据库");
			//准备友情链接数据
			List<Link> linkList = linkService.findAllLink();
			Gson gson = new Gson();
			linkListJson = gson.toJson(linkList);
			jedis.set("linkListJson", linkListJson);
		}
		inputStream=new ByteArrayInputStream(linkListJson.getBytes("UTF-8"));
		return "linkList";
	}
}
