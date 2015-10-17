package com.fox.sp.dao.impl;

import java.util.List;

import javax.ejb.Timeout;

import com.fox.sp.dao.AdminUserDao;
import com.fox.sp.po.AdminUserVo;
import com.fox.sp.po.MemberPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.wrapper.AdminUserWrapper;
import com.fox.sp.wrapper.MemberPoWrapper;

/**
 * dao接口的实现类
 * @author lyp
 * 2012年9月17日17:52:46
 *
 */
public class AdminUserDaoImpl implements AdminUserDao {

	/*
	 * 用户登陆
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#LoginCheck(java.lang.String, java.lang.String)
	 */
	public List<AdminUserVo> LoginCheck(String userName, String userPassword) {
		AdminUserWrapper auw = new AdminUserWrapper();
		DbUtil<AdminUserVo> db = new DbUtil<AdminUserVo>();
		String sql = "select * from fox_User where username=? and userpassword=?";
		List<AdminUserVo> list = db.Query(auw, sql,userName, userPassword);
		db.close();
		return list;
	}

	/*
	 * 冻结用户
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#DongJie(java.lang.Integer[])
	 */
	
	public boolean DongJie(Integer... integers) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberStatus = 0 where memberID in (";
		for (int i = 0; i < integers.length; i++) {
			sql = sql+integers[i];
			if((i+1) != integers.length){
				sql =sql+",";
			}
		}
		sql = sql+")";
		System.out.println(sql);
		boolean b = db.update(sql);
		
		db.close();
		return b;
	}

	/*
	 * 给用户解冻
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#JieDong(java.lang.Integer[])
	 */
	public boolean JieDong(Integer... integers) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberStatus = 1 where memberID in (";
		for (int i = 0; i < integers.length; i++) {
			sql = sql+integers[i];
			if((i+1) != integers.length){
				sql =sql+",";
			}
		}
		sql = sql+")";
		boolean b = db.update(sql);
		System.out.println(sql);
		db.close();
		return b;
	}

	/*
	 * 带条件查询
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#Query(java.lang.Object[])
	 */
	public List<MemberPo> Query(Object... objects) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/*
	 * 查询所有会员
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#QueryAll()
	 */
	public List<MemberPo> QueryAll() {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		MemberPoWrapper wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member";
		List<MemberPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	/*
	 * 查询单个会员
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.AdminUserDao#QueryOne(int)
	 */
	public MemberPo QueryOne(int userID) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		MemberPoWrapper wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member where memberID="+userID;
		List<MemberPo> list = db.Query(wrapper, sql);
		MemberPo auv = null;
		for (MemberPo memberPo : list) {
			auv = memberPo;
		}
		
		
		db.close();
		return auv;
	}

}
