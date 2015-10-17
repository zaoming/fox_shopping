package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;
import com.fox.sp.vo.OrderVo;

public interface IMemberAddrDao {
	public boolean insertMemberAddr(Object...args);
	public boolean deleteMemberAddr(int memberAddrID);
	public boolean updateMemberAddr(Object...args);
	public List<MemberAddrVo> queryone(int memberAddrID);
	public List<MemberAddrVo> queryAll(int memberID);

}
