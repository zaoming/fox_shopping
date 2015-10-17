package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.po.GoodsTopPo;
import com.fox.sp.util.Wrapper;

public class GoodsTopPoWrapper implements Wrapper<GoodsTopPo> {

	public GoodsTopPo getObject(ResultSet rs) {
		GoodsTopPo gtp = new GoodsTopPo();
		try {
			gtp.setGoodsID(rs.getInt("goodsID"));
			gtp.setGoodsName(rs.getString("goodsName"));
			gtp.setGoodsIntroduce(rs.getString("goodsIntroduce"));
			gtp.setGoodsMemberPrice(rs.getInt("goodsMemberPrice"));
			gtp.setTypeID(rs.getInt("typeID"));
			gtp.setGoodsPicture1(rs.getString("goodspicture1"));
			gtp.setNum(rs.getInt("num"));
			gtp.setRownum(rs.getInt("r"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gtp;
	}

}
