package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.IOrderAdminDao;
import com.fox.sp.dao.impl.OrderAdminDaoImpl;
import com.fox.sp.service.IOrderAdminService;
import com.fox.sp.vo.OrderVo;

public class OrderAdminServiceImpl implements IOrderAdminService {
	IOrderAdminDao ioda = new OrderAdminDaoImpl();
	
	public boolean deleteAdminOrder(int orderID) {
		// TODO Auto-generated method stub
		return ioda.deleteAdminOrder(orderID);
	}

	public boolean insertAdminOrder(Object... args) {
		// TODO Auto-generated method stub
		return ioda.insertAdminOrder(args);
	}
	
	public boolean updateAdminOrder(int orderID) {
		// TODO Auto-generated method stub
		return ioda.updateAdminOrder(orderID);
	}
	
	public boolean updateAdminOrderRemark(String orderRemark,int orderID) {
		return ioda.updateAdminOrderRemark(orderRemark, orderID);
	}

	public List<OrderVo> queryAdminAll() {
		// TODO Auto-generated method stub
		return ioda.queryAdminAll();
	}
	
	public List<OrderVo> queryAdminOne(int orderID) {
		// TODO Auto-generated method stub
		return ioda.queryAdminOne(orderID);
	}

	public int queryAdminCount() {
		// TODO Auto-generated method stub
		return ioda.queryAdminCount();
	}
	public List queryAdminPage(int sizei, int sizej) {
		// TODO Auto-generated method stub
		return ioda.queryAdminPage(sizei, sizej);
	}
}
