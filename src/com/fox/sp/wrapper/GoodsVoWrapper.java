package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.GoodsVo;

public class GoodsVoWrapper implements Wrapper<GoodsVo> {

	public GoodsVo getObject(ResultSet rs) {
		GoodsVo gv = new GoodsVo();
		try {
			gv.setGoodsID(rs.getInt("goodsID"));
			gv.setGoodsName(rs.getString("goodsName"));
			gv.setGoodsIntroduce(rs.getString("goodsIntroduce"));
			gv.setGoodsNormalPrice(rs.getInt("goodsNormalPrice"));
			gv.setGoodsMemberPrice(rs.getInt("goodsMemberPrice"));
			gv.setGoodsRebate(rs.getInt("goodsRebate"));
			gv.setGoodsNumber(rs.getInt("goodsNumber"));
			gv.setIsSale(rs.getInt("isSale"));
			gv.setIsValid(rs.getInt("isValid"));
			gv.setGoodsPicture1(rs.getString("goodsPicture1"));
			gv.setGoodsPicture2(rs.getString("goodsPicture2"));
			gv.setGoodsPicture3(rs.getString("goodsPicture3"));
			gv.setGoodsPicture4(rs.getString("goodsPicture4"));
			gv.setCreater(rs.getString("creater"));
			gv.setCreateDate(rs.getDate("createDate"));
			gv.setUpdater(rs.getString("updater"));
			gv.setUpdateDate(rs.getDate("updateDate"));
			gv.setElse1(rs.getString("else1"));
			gv.setElse2(rs.getString("else2"));
			gv.setElse3(rs.getString("else3"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gv;
	}

}
