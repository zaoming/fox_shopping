package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderDetailVo;

public class OrderDetailVoWrapper implements Wrapper<OrderDetailVo> {

	public OrderDetailVo getObject(ResultSet rs) {
		OrderDetailVo odv = new OrderDetailVo();
		try {
			odv.setOrderDetailID(rs.getInt("orderDetailID"));
			odv.setOrderID(rs.getInt("orderID"));
			odv.setGoodsID(rs.getInt("goodsID"));
			odv.setGoodsName(rs.getString("goodsName"));
			odv.setGoodsPrice(rs.getFloat("goodsPrice"));
			odv.setGoodsCoun(rs.getFloat("goodsCoun"));
			odv.setGoodsEvaluation(rs.getInt("goodsEvaluation"));
			odv.setGoodsPicture(rs.getString("goodsPicture"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return odv;
	}

}
