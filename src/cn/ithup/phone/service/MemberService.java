package cn.ithup.phone.service;

import java.util.List;

import cn.ithup.phone.pojo.Member;

/**
 * 会员的基本操心功能：
 * 			后台功能：会员查询操作、删除、详细查询
 * 			前台功能：会员注册、登录、资料修改
 * @author acer
 *
 */
public interface MemberService {
	/**
	 * 查询所有会员信息
	 * @return
	 * @throws Exception
	 */
	public List<Member> findAllMember() throws Exception;
	
	/**
	 * 根据会员主键删除会员
	 * @param memberName
	 * @return
	 * @throws Exception
	 */
	public boolean deleteMemberByPrimaryKey(String memberName) throws Exception;
	
	/**
	 * 详细查询：
	 * 		根据会员主键查询某个会员详细信息
	 * @param memberName
	 * @return
	 * @throws Exception
	 */
	public Member findMemberByPrimaryKey(String memberName) throws Exception;
	
	/**
	 * 会员注册功能：
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public boolean isRegisterMember(Member member) throws Exception;
	
	/**
	 * 会员登录功能
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public Member isLoginMember(Member member) throws Exception;
	
	/**
	 * 会员资料修改
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public boolean isModifyMember(Member member) throws Exception;
}
