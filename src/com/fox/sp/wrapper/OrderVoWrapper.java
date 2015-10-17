package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;

public class OrderVoWrapper implements Wrapper<OrderVo> {

	public OrderVo getObject(ResultSet rs) {
		OrderVo ov = new OrderVo();
		try {
			ov.setOrderID(rs.getInt("orderID"));
			ov.setMemberID(rs.getInt("memberID"));
			ov.setMemberTrueName(rs.getString("memberTrueName"));
			ov.setMemberAddress(rs.getString("memberAddress"));
			ov.setMemberProvince(rs.getString("memberProvince"));
			ov.setMemberCity(rs.getString("memberCity"));
			ov.setMemberPostcode(rs.getString("memberPostcode"));
			ov.setMemberTelephone(rs.getString("memberTelephone"));
			ov.setOrderAmount(rs.getInt("orderAmount"));
			ov.setOrderPay(rs.getInt("orderPay"));
			ov.setIsOrderInvoice(rs.getInt("isOrderInvoice"));
			ov.setOrderCarry(rs.getInt("orderCarry"));
			ov.setOrderRemark(rs.getString("orderRemark"));
			ov.setOrderStatus1(rs.getInt("orderStatus1"));
			ov.setOrderStatus2(rs.getInt("orderStatus2"));
			ov.setOrderStatus3(rs.getInt("orderStatus3"));
			ov.setCreateDate(rs.getTimestamp("createDate"));
			ov.setCreateDate(rs.getTimestamp("updateDate"));
			ov.setRow(rs.getRow());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return ov;
	}

}
