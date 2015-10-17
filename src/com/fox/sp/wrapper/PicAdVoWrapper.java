package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.PicAdVo;

public class PicAdVoWrapper implements Wrapper<PicAdVo> {
	
	
	public PicAdVo getObject(ResultSet rs) {
		PicAdVo pav = new PicAdVo();
		try {
			pav.setAdsID(rs.getInt("adsID"));
			pav.setAdsPicture(rs.getString("adsPicture"));
			pav.setIssueDate(rs.getDate("IssueDate"));
			pav.setExpireDate(rs.getDate("ExpireDate"));
			pav.setCreater(rs.getString("Creater"));
			pav.setCreateDate(rs.getDate("CreateDate"));
			pav.setUpdater(rs.getString("Updater"));
			pav.setUpdateDate(rs.getDate("UpdateDate"));
			pav.setAddress(rs.getString("address"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pav;
	}

}
