package cn.ithup.phone.web.action;

import java.util.Date;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ithup.phone.utils.PaymentUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.Cart;
import cn.ithup.phone.pojo.CartGoods;
import cn.ithup.phone.pojo.Member;
import cn.ithup.phone.pojo.Order;
import cn.ithup.phone.pojo.Orderdetail;
import cn.ithup.phone.pojo.PageBean;
import cn.ithup.phone.service.OrderService;

/**
 * 订单处理
 * @author acer
 *
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order>{
	
	/**
	 * 注入订单orderService
	 */
	private OrderService orderService;
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}




	//采用模型封装
	private Order order = new Order();
	public Order getModel() {
		return order;
	}

	/**
	 * 生成订单
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
			//0.判断用户是否登录
			/*HttpServletRequest request = ServletActionContext.getRequest();
			Member member = (Member) request.getSession().getAttribute("member");
			if(member == null){
				request.setAttribute("msg", "请先登录~~");
				return "";
			}*/
		
		//1.封装数据
		//1.1 订单id(数据库自动生成)
		//1.2 订单时间
		order.setCreateTime(new Date());
		
		//1.3 总金额
		//获取session中cart
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		order.setTotal(cart.getTotal());
		
		//1.4 订单的所有订单项
		
		 /* 先获取cart中购物车项
		 * 遍历购物车项 组装成Orderdetail
		 * 将Orderdetail添加到list(order)中
		 */
		for (CartGoods cartGoods : cart.getCartGoods()) {
			//订单详细项
			Orderdetail ot = new Orderdetail();
			
			//设置id(数据库自动生成)
			//设置购买商品数量
			ot.setNubmer(cartGoods.getCount());
			//设置成交小计
			ot.setPrice(cartGoods.getSubtotal());
			//设置product
			ot.setGoodsId(cartGoods.getGoods());
			
			//设置order
			ot.setOrderNumber(order);
			
			//添加到order的list中
			order.getOrderdetails().add(ot);
		}
		
		//1.5 设置用户
		Member member = (Member) request.getSession().getAttribute("member");
		order.setMember(member);
		
		//2.调用service 添加订单
		orderService.add(order);
		
		//3.将order放入request域中,请求转发
		request.setAttribute("order", order);
		
		//4.清空购物车
		request.getSession().removeAttribute("cart");
		return "orderInfo";//跳转到cart_checkOut.jsp
	}
	
	
	
	
	/**
	 * 分页查询我的订单
	 * @return
	 * @throws Exception
	 */
	public String findAllByPage() throws Exception {
		//1.获取当前页
		HttpServletRequest request = ServletActionContext.getRequest();
		int currPage=Integer.parseInt(request.getParameter("currPage"));
		int pageSize=2;
		
		//2.调用service 分页查询  参数:currpage pagesize  返回值:PageBean
		PageBean<Order> bean=orderService.findAllByPage(currPage,pageSize);
		
		//3.将PageBean放入request域中
		request.setAttribute("pb", bean);
		
		return "orderList";
	}
	
	
	
	
	/**
	 * 根据订单主键查询订单信息
	 * @return
	 * @throws Exception
	 */
	public String getById() throws Exception {
		/*//1.获取oid
		String oid = request.getParameter("oid");
		
		//2.调用service 通过oid 返回值:order
		OrderService os=(OrderService) BeanFactory.getBean("OrderService");
		Order order=os.getById(oid);
		
		//3.将order放入request域中
		request.setAttribute("bean", order);*/
		
		return "/jsp/order_info.jsp";
	}
	
	/**
	 * 订单支付
	 * @return
	 * @throws Exception
	 */
	public String pay() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		//接受参数:已经被封装到order模型中
		//通过订单主键获取order
		Order backOrder = orderService.getById(order.getOrderNumber());
		
		backOrder.setAddress(order.getAddress());//收货地址
		backOrder.setContacterName(order.getContacterName());//收货人姓名
		backOrder.setTel(order.getTel());//收货人联系电话
		backOrder.setSetMoney(order.getSetMoney());//付款方式
		backOrder.setPost(order.getPost());//运送方式
		backOrder.setBz(order.getBz());//备注
		
		
		//更新order信息
		orderService.updateOrder(order);

		// 组织发送支付公司需要哪些数据
		String pd_FrpId = request.getParameter("pd_FrpId");
		String p0_Cmd = "Buy";
		String p1_MerId = ResourceBundle.getBundle("merchantInfo").getString("p1_MerId");
		String p2_Order = order.getOrderNumber();
		String p3_Amt = "0.01";//支付金额
		String p4_Cur = "CNY";
		String p5_Pid = "";
		String p6_Pcat = "";
		String p7_Pdesc = "";
		// 支付成功回调地址 ---- 第三方支付公司会访问、用户访问
		// 第三方支付可以访问网址
		String p8_Url = ResourceBundle.getBundle("merchantInfo").getString("responseURL");
		String p9_SAF = "";
		String pa_MP = "";
		String pr_NeedResponse = "1";
		// 加密hmac 需要密钥
		String keyValue = ResourceBundle.getBundle("merchantInfo").getString("keyValue");
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
				p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
				pd_FrpId, pr_NeedResponse, keyValue);
	
		
		//发送给第三方
		StringBuffer sb = new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node?");
		sb.append("p0_Cmd=").append(p0_Cmd).append("&");//业务类型
		sb.append("p1_MerId=").append(p1_MerId).append("&");//商户编号
		sb.append("p2_Order=").append(p2_Order).append("&");//商户订单号
		sb.append("p3_Amt=").append(p3_Amt).append("&");// 支付金额
		sb.append("p4_Cur=").append(p4_Cur).append("&");//交易币种
		sb.append("p5_Pid=").append(p5_Pid).append("&");//商品名称
		sb.append("p6_Pcat=").append(p6_Pcat).append("&");//商品种类
		sb.append("p7_Pdesc=").append(p7_Pdesc).append("&");// 商品描述
		sb.append("p8_Url=").append(p8_Url).append("&");// 商户接收支付成功数据的地址
		sb.append("p9_SAF=").append(p9_SAF).append("&");// 送货地址
		sb.append("pa_MP=").append(pa_MP).append("&");//商户扩展信息
		sb.append("pd_FrpId=").append(pd_FrpId).append("&");//支付通道编码
		sb.append("pr_NeedResponse=").append(pr_NeedResponse).append("&");// 应答机制
		sb.append("hmac=").append(hmac);// 签名数据
		
		//respone.sendRedirect(sb.toString());//需要重定向单第三方地址
		
		return null;
	}
	/**
	 * 支付成功之后的回调
	 * @return
	 * @throws Exception
	 */
	public String callback() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String p1_MerId = request.getParameter("p1_MerId");
		String r0_Cmd = request.getParameter("r0_Cmd");
		String r1_Code = request.getParameter("r1_Code");
		String r2_TrxId = request.getParameter("r2_TrxId");
		String r3_Amt = request.getParameter("r3_Amt");
		String r4_Cur = request.getParameter("r4_Cur");
		String r5_Pid = request.getParameter("r5_Pid");
		String r6_Order = request.getParameter("r6_Order");
		String r7_Uid = request.getParameter("r7_Uid");
		String r8_MP = request.getParameter("r8_MP");
		String r9_BType = request.getParameter("r9_BType");
		String rb_BankId = request.getParameter("rb_BankId");
		String ro_BankOrderId = request.getParameter("ro_BankOrderId");
		String rp_PayDate = request.getParameter("rp_PayDate");
		String rq_CardNo = request.getParameter("rq_CardNo");
		String ru_Trxtime = request.getParameter("ru_Trxtime");
		// 身份校验 --- 判断是不是支付公司通知你
		String hmac = request.getParameter("hmac");
		String keyValue = ResourceBundle.getBundle("merchantInfo").getString(
				"keyValue");

		// 自己对上面数据进行加密 --- 比较支付公司发过来hamc
		boolean isValid = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd,
				r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid,
				r8_MP, r9_BType, keyValue);
		if (isValid) {
			// 响应数据有效
			if (r9_BType.equals("1")) {
				// 浏览器重定向
				System.out.println("111");
				request.setAttribute("msg", "您的订单号为:"+r6_Order+",金额为:"+r3_Amt+"已经支付成功,等待发货~~");
				
			} else if (r9_BType.equals("2")) {
				// 服务器点对点 --- 支付公司通知你
				System.out.println("付款成功！222");
				// 修改订单状态 为已付款
				// 回复支付公司
				//response.getWriter().print("success");
				return "";
			}
			
			//修改订单状态
			Order order = orderService.getById(r6_Order);
			
			//修改订单状态为 已支付
			order.setSign(1);
			
			orderService.updateOrder(order);
			
		} else {
			// 数据无效
			System.out.println("数据被篡改！");
		}
		
		
		return "/jsp/msg.jsp";
		
	}
	
	
	/*
	 * 确认收获
	 */
	public String updateState() throws Exception{
		//HttpServletRequest request = ServletActionContext.getRequest();
		//1.获取 oid
		//String oid = request.getParameter("oid");
		
		//2.调用service 修改订单状态
		//OrderService os=(OrderService) BeanFactory.getBean("OrderService");
		//Order order = os.getById(oid);
		//order.setState(3);
		//os.update(order);
		
		//3.重定向
		//response.sendRedirect(request.getContextPath()+"/order?method=findAllByPage&currPage=1");
		return null;
	}
	
}
