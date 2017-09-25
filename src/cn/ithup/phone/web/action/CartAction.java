package cn.ithup.phone.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.ithup.phone.pojo.Cart;
import cn.ithup.phone.pojo.CartGoods;
import cn.ithup.phone.pojo.Goods;
import cn.ithup.phone.service.GoodsService;

/**
 * 购物车模块
 */
public class CartAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private GoodsService goodsService;
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	/**
	 * 获取购物车
	 * @param request
	 * @return
	 */
	public Cart getCart(HttpServletRequest request){
		Cart cart=(Cart) request.getSession().getAttribute("cart");
		//判断购物车是否为空
		if(cart == null){
			//创建一个cart
			cart=new Cart();
			
			//添加到session中
			request.getSession().setAttribute("cart", cart);
		}
		return cart;
	}
	
	/**
	 * 添加到购物车
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		//1.获取pid和数量
		int gid = Integer.parseInt(request.getParameter("gid"));
		int count = Integer.parseInt(request.getParameter("count"));
		//2.调用goodsService 通过gid获取一个商品
		Goods goods = goodsService.findGoodsByPrimaryKey(gid);
		
		//3.组装成CartGoods
		CartGoods cartGoods = new CartGoods(goods, count);
		
		//4.添加到购物车
		Cart cart = getCart(request);
		cart.addCart(cartGoods);
		
		//5.重定向cart_see.jsp
		return "cart_see";
	}
	
	/**
	 * 从购物车中移除购物车项
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String remove() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		//1.获取商品的pid
		int gid = Integer.parseInt(request.getParameter("gid"));
		//2.调用购物车的remove方法
		getCart(request).removeFromCart(gid);
		//3.重定向
		//response.sendRedirect(request.getContextPath()+"/jsp/cart.jsp");
		return "cart_see";
	}
	
	/**
	 * 清空购物车
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String clear() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		//获取购物车 清空
		getCart(request).clearCart();
		//response.sendRedirect(request.getContextPath()+"/jsp/cart.jsp");
		return "cart_see";
	}

}
