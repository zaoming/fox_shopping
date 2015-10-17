package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.IOrderDao;
import com.fox.sp.dao.impl.OrderDaoImpl;
import com.fox.sp.service.IOrderService;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.OrderVo;

public class OrderServiceImpl implements IOrderService {
	IOrderDao iod = new OrderDaoImpl();
	
	public boolean insertOrder(Object... args) {
		// TODO Auto-generated method stub
		return iod.insertOrder(args);
	}
	
	public boolean deleteOrder(int OrderID) {
		// TODO Auto-generated method stub
		return iod.deleteOrder(OrderID);
	}
	
	public boolean updateOrder(Object... args) {
		// TODO Auto-generated method stub
		return iod.updateOrder(args);
	}


	public List<OrderVo> queryAll(int memberID) {
		// TODO Auto-generated method stub
		return iod.queryAll(memberID);
	}

	public List<OrderVo> queryone(int orderID) {
		// TODO Auto-generated method stub
		return iod.queryone(orderID);
	}


	
	public int queryCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List queryPage(int sizei, int sizej) {
		// TODO Auto-generated method stub
		return null;
	}

}
