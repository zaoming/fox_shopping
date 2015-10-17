package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MemberAddrVo;

public class MemberAddrVoWrapper implements Wrapper<MemberAddrVo> {
	
	public MemberAddrVo getObject(ResultSet rs){
		MemberAddrVo mav = new MemberAddrVo();
		try {
			mav.setMemberAddrID(rs.getInt("memberAddrID"));
			mav.setMemberName(rs.getString("memberTrueName"));
			mav.setMemberCode(rs.getInt("memberCode"));
			mav.setMemberTelephone(rs.getString("memberTelephone"));
			mav.setMemberAddr(rs.getString("memberAddr"));
			mav.setMemberProvince(rs.getString("memberProvince"));
			mav.setMemberCity(rs.getString("memberCity"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
		
	}
}
