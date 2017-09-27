package cn.ithup.phone.web.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.ithup.phone.pojo.Member;
import cn.ithup.phone.service.MemberService;

/**
 * 模块
 * 		
 * @author acer
 *
 */
public class MemberAction extends ActionSupport implements ModelDriven<Member>{

	private InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}

	//注入服务层：memberService
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	//模型驱动封装
	private Member member = new Member();
	public Member getModel() {
		return member;
	}
	
	/**
	 * 会员登录
	 * @return
	 * @throws Exception 
	 */
	public String login() throws Exception{
		Member loginMember = memberService.isLoginMember(member);
		if(loginMember == null){
			return "error";
		}
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("member", loginMember);
		return SUCCESS;
	}
	
	/**
	 * 校验用户名是否已注册
	 * @return
	 * @throws Exception 
	 */
	public String check() throws Exception{
		String memberName = member.getMemberName();
		Member checkMember = memberService.findMemberByPrimaryKey(memberName);
		if(checkMember == null){
			inputStream=new ByteArrayInputStream("1".getBytes("UTF-8"));
		}else{
			inputStream=new ByteArrayInputStream("2".getBytes("UTF-8"));
		}
		return "check";
	}
}
