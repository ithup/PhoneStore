package cn.ithup.phone.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.ithup.phone.dao.MemberDao;
import cn.ithup.phone.pojo.Member;
import cn.ithup.phone.service.MemberService;

/**
 * 服务层：会员模块
 * @author acer
 *
 */
@Transactional
public class MemberServiceImpl implements MemberService {

	//注入持久层memberDao
	private MemberDao memberDao;
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public List<Member> findAllMember() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean deleteMemberByPrimaryKey(String memberName) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public Member findMemberByPrimaryKey(String memberName) throws Exception {
		return memberDao.findMemberByPrimaryKey(memberName);
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
