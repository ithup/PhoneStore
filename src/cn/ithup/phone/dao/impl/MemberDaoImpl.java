package cn.ithup.phone.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.ithup.phone.dao.MemberDao;
import cn.ithup.phone.pojo.Member;

/**
 * 持久层：会员模块
 * @author acer
 *
 */
public class MemberDaoImpl extends HibernateDaoSupport implements MemberDao {

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
		return this.getHibernateTemplate().get(Member.class, memberName);
	}

	@Override
	public boolean isRegisterMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public Member isLoginMember(Member member) throws Exception {
		DetachedCriteria criteria=DetachedCriteria.forClass(Member.class);
		criteria.add(Restrictions.eq("memberName", member.getMemberName()));
		criteria.add(Restrictions.eq("password", member.getPassword()));
		List<Member> list = (List<Member>) this.getHibernateTemplate().findByCriteria(criteria);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public boolean isModifyMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
