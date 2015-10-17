package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.OrderPo;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;

public interface IOrderDao {
	public boolean insertOrder(Object...args);
	public boolean deleteOrder(int orderID);
	public boolean updateOrder(Object...args);
	public List<OrderVo> queryone(int orderID);
	public List<OrderVo> queryAll(int memberID);
	public List<OrderVo> queryTheLast(int memberID);
	public List queryPage(int sizei,int sizej);
	public int queryCount();
	public boolean updateToPayStatus(int orderID);
	public boolean updateToQueRen(int orderID);
}
