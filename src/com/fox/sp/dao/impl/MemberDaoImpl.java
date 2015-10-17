package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.IMemberDao;
import com.fox.sp.po.MemberPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.wrapper.MemberPoWrapper;

public class MemberDaoImpl implements IMemberDao {

	/*
	 * //增加积分,添加积分的同时更新等级
	 * (non-Javadoc)
	 * lyp
	 * 2012年10月17日2:10:52
	 * @see com.fox.sp.dao.IMemberDao#addMemberIntegration(int, int)
	 */
	public boolean addMemberIntegration(int memberID, int integration) {
		// TODO Auto-generated method stub
		return false;
	}

	
	/*
	 * 给会员账户充值
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#chongZhi(int, double)
	 * lyp
	 * 2012年10月17日2:11:25
	 */
	public boolean chongZhi(int memberID, double money) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set MemberAmount=? where memberID="+memberID;
		boolean b = db.update(sql, money);
		
		db.close();
		return b;
	}

	
	/*
	 * 忘记密码时找回密码
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#forgetPwd(java.lang.String, java.lang.String, int)
	 * lyp
	 * 2012年10月17日2:11:59
	 */
	public boolean forgetPwd(String question, String answer, int memberID) {
		// TODO Auto-generated method stub
		return false;
	}

	
	/*
	 * 查询账户的余额
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#getMemberAmount(int)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public double getMemberAmount(int memberID) {
		DbUtil<Double> db = new DbUtil<Double>();
		String sql = "select * from fox_member where memberID="+memberID;
		List<Double> list = db.queryd(sql, "memberAmount");
		double memberAmount = 0;
		for (Double double1 : list) {
			memberAmount = double1;
		}
		return memberAmount;
	}

	
	/*
	 * 查询用户的等级
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#getMemberGrade(int)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public int getMemberGrade(int memberID) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		Wrapper<MemberPo> wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member where memberID="+memberID;
		List<MemberPo> list = db.Query(wrapper, sql);
		int memberGrade = 1;
		for (MemberPo memberPo : list) {
			memberGrade = memberPo.getMemberGrade();
		}
		return memberGrade;
	}

	
	/*
	 * 查询用户的积分
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#getMemberIntegration(int)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public int getMemberIntegration(int memberID) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		Wrapper<MemberPo> wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member where memberID="+memberID;
		List<MemberPo> list = db.Query(wrapper, sql);
		int memberIntegration = 1;
		for (MemberPo memberPo : list) {
			memberIntegration = memberPo.getMemberIntegration();
		}
		return memberIntegration;
	}

	
	/*
	 * 查询已有的用户名
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#getMemberNameAll()
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public List<String> getMemberNameAll() {
		DbUtil<String> db = new DbUtil<String>();
		List<String> list = null;
		String sql = "select * from fox_member";
		list = db.querys(sql, "memberName");
		System.out.println("dao层获得用户名");
		db.close();
		return list;
	}

	/*
	 * 查询已有的昵称
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#getMemberNiChengAll()
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public List<String> getMemberNiChengAll() {
		DbUtil<String> db = new DbUtil<String>();
		List<String> list = null;
		String sql = "select * from fox_member";
		list = db.querys(sql, "memberNiCheng");
		
		db.close();
		return list;
	}

	
	/*
	 * 登陆
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#login(java.lang.String, java.lang.String)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public List<MemberPo> login(String memberName, String memberPwd) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		Wrapper<MemberPo> wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member where memberPassword='"+memberPwd+"' and" +
				" (memberEmail='"+memberName+"' or memberName='"+memberName+"')";
		System.out.println(sql);
		List<MemberPo> list = db.Query(wrapper, sql);
		
		
		db.close();
		return list;
	}

	/*
	 * 注册
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#regedit()
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public boolean regedit(Object...objects) {
		DbUtil<String> db = new DbUtil<String>();
		String sql = "insert into fox_member (MemberID,MemberName,MemberNiCheng,MemberPassword,MemberToPayPassword,MemberEmail,MemberStatus,CreateDate,UpdteDate) " +
				"values(seq_fox_member.nextval,?,?,?,?,?,1,?,?)";
		
		boolean b = db.update(sql, objects);
		db.close();
		return b;
	}

	
	/*
	 * 支付
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#toPay(int, java.lang.String, double)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public boolean toPay(int memberID, String toPayPwd, double money) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberAmount=? where memberToPayPassword=? and memberID="+memberID;
		boolean b = db.update(sql,money,toPayPwd);
		
		db.close();
		return b;
	}

	
	/*
	 * 修改个人 信息
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#update(int, java.lang.Object[])
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public boolean update(int memberID, Object... objects) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberNiCheng=?,memberRealName=?,memberTelePhone=?," +
				"memberSex=?,memberBirthday=?,memberShenFen=?,memberShouRu=? where memberID="
		+memberID;
		boolean b = db.update(sql, objects);
		
		db.close();
		return b;
	}

	
	/*
	 * 修改登陆密码
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#updatePwd(int, java.lang.String, java.lang.String)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public boolean updatePwd(int memberID, String newPwd) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberPassword=? where memberID="+memberID;
		boolean b = db.update(sql, newPwd);
		
		db.close();
		return b;
	}

	
	/*
	 * 修改支付密码
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#updateToPayPwd(int, java.lang.String, java.lang.String)
	 * lyp
	 * 2012年10月17日2:12:27
	 */
	public boolean updateToPayPwd(int memberID, String newPwd) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		String sql = "update fox_member set memberToPayPassword=? where memberID="+memberID;
		boolean b = db.update(sql, newPwd);
		
		db.close();
		return b;
	}


	public List<String> getMemberEmail() {
		DbUtil<String> db = new DbUtil<String>();
		List<String> list = null;
		String sql = "select * from fox_member";
		list = db.querys(sql, "memberEmail");
		
		db.close();
		return list;
	}


	/*
	 * 查询个人信息
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IMemberDao#queryPersonal(int)
	 * 2012年10月17日15:44:01
	 */
	public List<MemberPo> queryPersonal(int memberID) {
		DbUtil<MemberPo> db = new DbUtil<MemberPo>();
		Wrapper<MemberPo> wrapper = new MemberPoWrapper();
		String sql = "select * from fox_member where memberID="+memberID;
		List<MemberPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

}
