package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.NoticeVo;

public class NoticeWriper implements Wrapper<NoticeVo> {

	public NoticeVo getObject(ResultSet rs) {
		NoticeVo nv = new NoticeVo();
		
		try {
			nv.setPlacardID(rs.getInt("PlacardID"));
			nv.setPlacardTitle(rs.getString("PlacardTitle"));
			nv.setPlacardContent(rs.getString("PlacardContent"));
			nv.setiSsueDate(rs.getDate("IssueDate"));
			nv.setExpireDate(rs.getDate("ExpireDate"));
			nv.setCreater(rs.getString("Creater"));
			nv.setCreateDate(rs.getDate("CreateDate"));
			nv.setUpdater(rs.getString("Updater"));
			nv.setUpdateDate(rs.getDate("UpdateDate"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nv;
	}

}
