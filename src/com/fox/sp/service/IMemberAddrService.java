package com.fox.sp.service;

import java.util.List;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;

public interface IMemberAddrService {
	public boolean insertMemberAddr(Object...args);
	public boolean deleteMemberAddr(int memberAddrID);
	public boolean updaetMemberAddr(Object...args);
	public List<MemberAddrVo> queryone(int memberAddrID);
	public List<MemberAddrVo> queryAll(int memberID);
}
