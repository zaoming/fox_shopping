package com.fox.sp.dao.impl;

import java.sql.ResultSet;
import java.util.List;

import com.fox.sp.dao.IMemberAddrDao;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;
import com.fox.sp.vo.OrderVo;
import com.fox.sp.wrapper.MemberAddrVoWrapper;
import com.fox.sp.wrapper.OrderVoWrapper;

public class MemberAddrDaoImpl implements IMemberAddrDao {

	DbUtil<MemberAddrVo> db = new DbUtil<MemberAddrVo>();

	public boolean deleteMemberAddr(int memberAddrID) {
		String sql = "delete from fox_MemberAddr where memberAddrID=?";
		boolean res = db.update(sql, memberAddrID);
		return res;
	}

	public boolean insertMemberAddr(Object... args) {
		MemberAddrVoWrapper mavw = new MemberAddrVoWrapper();
		String sql = "insert into fox_MemberAddr values(seq_fox_MemberAddrID.nextval,?,?,?,?,?,?,?)";
		boolean res = db.update(sql, args);
		return res;
	}

	public boolean updateMemberAddr(Object... args) {
		String sql = "update fox_MemberAddr set MemberTrueName=?,MemberCode=?,MemberTelephone=?,MemberAddr=?,MemberProvince=?,MemberCity=? where memberAddrID=?";
		boolean res = db.update(sql, args);
		return res;
	}

	public List<MemberAddrVo> queryAll(int memberID) {
		MemberAddrVoWrapper mav = new MemberAddrVoWrapper();
		String sql = "select * from fox_MemberAddr where memberID="+memberID;
		List<MemberAddrVo> list = db.Query(mav, sql);
		return list;
	}

	public List<MemberAddrVo> queryone(int memberAddrID) {
		MemberAddrVoWrapper mavw = new MemberAddrVoWrapper();
		String sql = "select * from fox_MemberAddr where memberAddrID=?";
		List list = db.Query(mavw, sql, memberAddrID);
		return list;
	}

}
