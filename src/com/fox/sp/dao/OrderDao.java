package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.OrderPo;
import com.fox.sp.vo.OrderVo;

/**
 * 订单主表
 * @author ldt
 *2012年10月7日15:09:49
 */
public interface OrderDao {
	public List<OrderVo> selsectOrder(int OrderID);
	public boolean insertOrder(OrderPo op);
}
