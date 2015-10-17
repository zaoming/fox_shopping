package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.po.GoodsPo;
import com.fox.sp.util.Wrapper;

/**
 * 
 * 商品的Wrapper类,继承com.fox.sp.util.Wrapper接口
 * @author lyp
 *2012年9月22日16:56:02
 *
 */
public class GoodsPoWrapper implements Wrapper<GoodsPo> {

	public GoodsPo getObject(ResultSet rs) {
		GoodsPo gp = new GoodsPo();
		try {
			gp.setGoodsID(rs.getInt("goodsId"));
			gp.setGoodsName(rs.getString("goodsName"));
			gp.setGoodsIntroduce(rs.getString("goodsIntroduce"));
			gp.setGoodsNormalPrice(rs.getFloat("goodsNormalPrice"));
			gp.setGoodsMemberPrice(rs.getFloat("goodsMemberPrice"));
			gp.setGoodsRebate(rs.getFloat("goodsRebate"));
			gp.setTypeID(rs.getInt("typeID"));
			gp.setGoodsNumber(rs.getInt("goodsNumber"));
			gp.setIsSale(rs.getInt("isSale"));
			gp.setIsValid(rs.getInt("isValid"));
			gp.setGoodsPicture1(rs.getString("goodsPicture1"));
			gp.setGoodsPicture2(rs.getString("goodsPicture2"));
			gp.setGoodsPicture3(rs.getString("goodsPicture3"));
			gp.setGoodsPicture4(rs.getString("goodsPicture4"));
			gp.setCreater(rs.getString("creater"));
			gp.setCreateDate(rs.getTimestamp("createDate"));
			gp.setUpdater(rs.getString("updater"));
			gp.setUpdateDate(rs.getTimestamp("updateDate"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gp;
	}

}
