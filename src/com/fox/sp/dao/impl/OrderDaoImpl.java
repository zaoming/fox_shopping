package com.fox.sp.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.fox.sp.dao.IOrderDao;
import com.fox.sp.po.OrderPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;
import com.fox.sp.wrapper.OrderVoWrapper;

public class OrderDaoImpl implements IOrderDao {
	DbUtil<OrderVo> db = new DbUtil<OrderVo>();
	
	public boolean insertOrder(Object...args) {
		String sql = "insert into fox_order values(seq_fox_order.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		boolean res = db.update(sql, args);
		return res;
	}
	
	public boolean deleteOrder(int orderID) {
		String sql = "delete from fox_order where orderID=?";
		boolean res = db.update(sql, orderID);
		return res;
	}

	public boolean updateOrder(Object...args) {
		String sql = "update fox_order set  memberTrueName=?,memberProvince=?,memberCity=?,memberAddress=?,memberPostcode=?,memberTelephone=? where OrderID=?";
		boolean res = db.update(sql, args);
		return res;
	}
	
	public List<OrderVo> queryone(int orderID) {
		Wrapper<OrderVo> wrapper = new OrderVoWrapper();
		String sql = "select * from fox_order where orderID="+orderID;
		List<OrderVo> list = db.Query(wrapper, sql);
		return list;
	}

	public List<OrderVo> queryAll(int memberID) {
		Wrapper<OrderVo> ovw = new OrderVoWrapper();
		String sql = "select * from fox_order where memberID="+memberID+" order by createDate desc";
		List<OrderVo> list = db.Query(ovw, sql);
		return list;
	}

	public int queryCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List queryPage(int sizei, int sizej) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<OrderVo> queryTheLast(int memberID) {
		Wrapper<OrderVo> wrapper = new OrderVoWrapper();
		String sql = "SELECT * FROM(SELECT A.*, rownum r FROM (" +
				"SELECT * FROM fox_order where memberID="+memberID +
				" order by createDate desc ) A WHERE rownum <= 1) B WHERE r >=0";
		List<OrderVo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	public boolean updateToPayStatus(int orderID) {
		String sql = "update fox_order set OrderStatus1=1 where orderID="+orderID;
		boolean b = db.update(sql);
		
		db.close();
		return b;
	}

	public boolean updateToQueRen(int orderID) {
		String sql = "update fox_order set OrderStatus3=1 where orderID="+orderID;
		System.out.println(sql);
		boolean b = db.update(sql);
		
		db.close();
		return b;
	}
}
