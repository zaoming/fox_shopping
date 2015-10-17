package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.OrderPo;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;

public interface IOrderService {
	public boolean insertOrder(Object...args);
	public boolean deleteOrder(int OrderID);
	public boolean updateOrder(Object...args);
	public List<OrderVo> queryone(int orderID);
	public List<OrderVo> queryAll(int memberID);
	
	
	public List queryPage(int sizei,int sizej);
	public int queryCount();
}
