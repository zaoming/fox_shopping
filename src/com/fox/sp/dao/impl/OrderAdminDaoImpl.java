package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.IOrderAdminDao;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;
import com.fox.sp.wrapper.OrderVoWrapper;

public class OrderAdminDaoImpl implements IOrderAdminDao {
	DbUtil db = new DbUtil();
	
	
	public boolean deleteAdminOrder(int orderID) {
		String sql = "delete from fox_order where orderID=?";
		boolean res = db.update(sql, orderID);
		return res;
	}

	public boolean insertAdminOrder(Object... args) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean updateAdminOrder(int orderID) {
		String sql = "update fox_order set OrderStatus2=1 where OrderID=?";
		boolean res = db.update(sql,orderID);
		return res;
	}
	
	public boolean updateAdminOrderRemark(String orderRemark,int orderID) {
		String sql = "update fox_order set OrderRemark=? where OrderID=?";
		boolean res = db.update(sql,orderRemark,orderID);
		return res;
	}
	

	public List<OrderVo> queryAdminAll() {
		OrderVoWrapper ovw = new OrderVoWrapper();
		String sql = "select * from fox_order";
		List<OrderVo> list = db.Query(ovw, sql);
		return list;
	}

	public List<OrderVo> queryAdminOne(int orderID) {
		// TODO Auto-generated method stub
		return null;
	}

	public List queryAdminPage(int sizei, int sizej) {
		OrderVoWrapper ovw = new OrderVoWrapper();
		String sql = "SELECT b.* FROM " +
		"(SELECT rownum r,a.* FROM(SELECT e.* FROM fox_order e ORDER BY aid DESC ) a)b" +
		" WHERE b.r>=? and b.r<=?";
		List<OrderVo> list = db.Query(ovw, sql);
		return list;
	}
	public int queryAdminCount() {
		String sql = "select count(*) from fox_order";
		OrderVoWrapper ovw = new OrderVoWrapper();
		List<OrderVo> list = db.Query(ovw, sql);
		int count = list.size();
		System.out.println(count);
		return count;
	}
}
