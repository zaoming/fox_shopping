package com.fox.sp.dao.impl;


import java.util.List;

import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.po.OrderDetailPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.vo.OrderDetailVo;
import com.fox.sp.wrapper.OrderDetailVoWrapper;

public class OrderDetailDaoImpl implements IOrderDetailDao {
	DbUtil<OrderDetailVo> db = new DbUtil<OrderDetailVo>();
	OrderDetailVoWrapper odw = new OrderDetailVoWrapper();
	
	public boolean insertOrderDetail(OrderDetailPo odp) {
		String sql = "insert into fox_orderDetail values(seq_fox_orderDetail.nextval,?,?,?,?,?,?,?)";
		System.out.println("insertOrderDetail+++"+sql);
		boolean in = db.update(sql,odp.getOrderID(),odp.getGoodsID(),odp.getGoodsName(),odp.getGoodsPrice(),odp.getGoodsCoun(),0,odp.getGoodsPicture());
		
		db.close();
		return in;
	}

	public boolean deleteOrderDetail(int orderID) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<OrderDetailVo> queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<OrderDetailVo> queryone(int orderID) {
		String sql = "select * from fox_orderdetail where orderID="+orderID;
		OrderDetailVoWrapper wrapper = new OrderDetailVoWrapper();
		List<OrderDetailVo> list = db.Query(wrapper, sql);
		return list;
	}

	public boolean updateOrderDetail(Object... args) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateEvalution(int orderID) {
		String sql = "update fox_orderDetail set GoodsEvaluation=1 where orderID="+orderID;
		return false;
	}


}
