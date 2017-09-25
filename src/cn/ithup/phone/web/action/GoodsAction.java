package cn.ithup.phone.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import cn.ithup.phone.pojo.Goods;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.GoodsService;

/**
 * 模块
 * 
 * @author acer
 *
 */
public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {

	// 注入服务层：goodsService
	private GoodsService goodsService;

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	// 模型驱动封装数据
	private Goods goods = new Goods();

	public Goods getModel() {
		return goods;
	}

	/**
	 * 查询特价商品
	 * 
	 * @return
	 * @throws Exception
	 */
	public String selectFreePage() throws Exception {
		// 1.获取第几页
		HttpServletRequest request = ServletActionContext.getRequest();
		int currPage = Integer.parseInt(request.getParameter("currPage"));
		// 固定每页显示的条数
		int pageSize = 3;

		// 2.调用service完成分页查询 返回值:pagebean
		PageBean<Goods> bean = null;
		try {
			bean = goodsService.showFreeGoodsByPage(currPage, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.将pagebean放入request域中,请求转发
		request.setAttribute("freeGoodsList", bean);
		return "freeGoodsList";
	}

	public String selectOne() throws Exception{
		Goods goodsOne = goodsService.findGoodsByPrimaryKey(goods.getGoodsId());
		ActionContext.getContext().put("goods", goodsOne);
		return "goodsOne";
	}
}
