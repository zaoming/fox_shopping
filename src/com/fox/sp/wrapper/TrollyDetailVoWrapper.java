package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.TrolleyDetailVo;

public class TrollyDetailVoWrapper implements Wrapper<TrolleyDetailVo> {

	public TrolleyDetailVo getObject(ResultSet rs) {
		TrolleyDetailVo tdv =new TrolleyDetailVo();
		try {
			tdv.setTrollyDetailID(rs.getInt("trollyDetailID"));
			tdv.setTrollyID(rs.getInt("trollyID"));
			tdv.setGoodsID(rs.getInt("GoodsID"));
			tdv.setGoodsName(rs.getString("GoodsName"));
			tdv.setGoodsPrice(rs.getFloat("GoodsPrice"));
			tdv.setGoodsCoun(rs.getFloat("GoodsCoun"));
			tdv.setGoodsbuyed(rs.getInt("Goodsbuyed"));
			tdv.setCreateDate(rs.getString("createDate"));
			tdv.setElse2(rs.getString("else2"));
			tdv.setElse3(rs.getString("else3"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tdv;
	}

}
