package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.IMemberAddrDao;
import com.fox.sp.dao.impl.MemberAddrDaoImpl;
import com.fox.sp.service.IMemberAddrService;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;

public class MemberAddrServiceImpl implements IMemberAddrService {
	IMemberAddrDao imad = new MemberAddrDaoImpl();
	
	public boolean deleteMemberAddr(int memberAddrID) {
		// TODO Auto-generated method stub
		return imad.deleteMemberAddr(memberAddrID);
	}

	public boolean insertMemberAddr(Object... args) {
		// TODO Auto-generated method stub
		return imad.insertMemberAddr(args);
	}
	
	public boolean updaetMemberAddr(Object... args) {
		// TODO Auto-generated method stub
		return imad.updateMemberAddr(args);
	}

	public List<MemberAddrVo> queryAll(int memberID) {
		// TODO Auto-generated method stub
		return imad.queryAll(memberID);
	}

	public List<MemberAddrVo> queryone(
			int memberAddrID) {
		// TODO Auto-generated method stub
		return imad.queryone(memberAddrID);
	}

}

