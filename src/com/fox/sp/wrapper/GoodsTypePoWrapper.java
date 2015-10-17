package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.po.GoodsTypePo;
import com.fox.sp.util.Wrapper;

public class GoodsTypePoWrapper implements Wrapper<GoodsTypePo>{

	public GoodsTypePo getObject(ResultSet rs) {
		GoodsTypePo gtp = new GoodsTypePo();
		try {
			gtp.setTypeID(rs.getInt("typeid"));
			gtp.setTypeName(rs.getString("typename"));
			gtp.setTypeDesc(rs.getString("typedesc"));
			gtp.setIsLeaf(rs.getInt("isleaf"));
			gtp.setParentID(rs.getInt("parentid"));
			gtp.setTypeLevel(rs.getInt("typelevel"));
			gtp.setCreater(rs.getString("creater"));
			gtp.setCreateDate(rs.getTimestamp("createdate"));
			gtp.setUpdater(rs.getString("updater"));
			gtp.setUpdateDate(rs.getTimestamp("updatedate"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gtp;
	}

}
