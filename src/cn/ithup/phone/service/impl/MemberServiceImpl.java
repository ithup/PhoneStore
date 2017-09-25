package cn.ithup.phone.service.impl;

import java.util.List;

import cn.ithup.phone.dao.MemberDao;
import cn.ithup.phone.pojo.Member;
import cn.ithup.phone.service.MemberService;

/**
 * 服务层：会员模块
 * @author acer
 *
 */
public class MemberServiceImpl implements MemberService {

	//注入持久层memberDao
	private MemberDao memberDao;
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public List<Member> findAllMember() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteMemberByPrimaryKey(String memberName) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Member findMemberByPrimaryKey(String memberName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isRegisterMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public Member isLoginMember(Member member) throws Exception {
		return memberDao.isLoginMember(member);
	}

	@Override
	public boolean isModifyMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
