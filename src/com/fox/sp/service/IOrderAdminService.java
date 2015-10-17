package com.fox.sp.service;

import java.util.List;

import com.fox.sp.vo.OrderVo;

public interface IOrderAdminService {
	public boolean insertAdminOrder(Object...args);
	public boolean deleteAdminOrder(int orderID);
	public boolean updateAdminOrder(int orderID);
	public boolean updateAdminOrderRemark(String orderRemark,int orderID);
	public List<OrderVo> queryAdminOne(int orderID);
	public List<OrderVo> queryAdminAll();
	
	public List queryAdminPage(int sizei,int sizej);
	
	public int queryAdminCount();
}
