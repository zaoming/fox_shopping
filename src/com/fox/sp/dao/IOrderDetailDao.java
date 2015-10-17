package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.OrderDetailPo;
import com.fox.sp.vo.OrderDetailVo;


public interface IOrderDetailDao {
	public boolean insertOrderDetail(OrderDetailPo odp);
	public boolean deleteOrderDetail(int orderID);
	public boolean updateOrderDetail(Object...args);
	public List<OrderDetailVo> queryone(int orderID);
	public List<OrderDetailVo> queryAll();
	public boolean updateEvalution(int orderID);
}
