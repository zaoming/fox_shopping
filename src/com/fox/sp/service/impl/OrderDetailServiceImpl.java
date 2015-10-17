package com.fox.sp.service.impl;


import com.fox.sp.dao.IOrderDetailDao;
import com.fox.sp.dao.OrderDetailDao;
import com.fox.sp.dao.impl.OrderDetailDaoImpl;
import com.fox.sp.po.OrderDetailPo;
import com.fox.sp.service.OrderDetailService;

public class OrderDetailServiceImpl implements OrderDetailService {
	IOrderDetailDao odd = new OrderDetailDaoImpl();
	public boolean insertOrder(OrderDetailPo odp) {
		//return odd.insertOrder(odp);
		return false;
	}


}
