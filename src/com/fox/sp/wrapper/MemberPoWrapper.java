package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.po.MemberPo;
import com.fox.sp.util.Wrapper;

public class MemberPoWrapper implements Wrapper<MemberPo> {

	public MemberPo getObject(ResultSet rs) {
		MemberPo mp = new MemberPo();
		try {
				mp.setMemberID(rs.getInt("memberID"));
				mp.setMemberName(rs.getString("memberName"));
				mp.setMemberNiCheng(rs.getString("memberNiCheng"));
				mp.setMemberRealName(rs.getString("memberRealName"));
				mp.setMemberPassword(rs.getString("memberPassword"));
				mp.setMemberToPayPassword(rs.getString("memberToPayPassword"));
				mp.setMemberEmail(rs.getString("memberEmail"));
				mp.setMemberTelePhone(rs.getString("memberTelePhone"));
				mp.setMemberBirthday(rs.getString("MemberBirthday"));
				mp.setMemberSex(rs.getInt("MemberSex"));
				mp.setMemberShenFen(rs.getString("MemberShenFen"));
				mp.setMemberShouRu(rs.getString("MemberShouRu"));
				mp.setMemberIntegration(rs.getInt("MemberIntegration"));
				mp.setMemberGrade(rs.getInt("MemberGrade"));
				mp.setMemberAmount(rs.getInt("MemberAmount"));
				mp.setMemberStatus(rs.getInt("MemberStatus"));
				mp.setCreateDate(rs.getTimestamp("CreateDate"));
				mp.setUpdteDate(rs.getTimestamp("UpdteDate"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mp;
	}

}
