package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.MyTrolleyPo;
import com.fox.sp.vo.MyTrolleyVo;

/**
 * 购物车的dao
 * @author ldt
 *2012年9月22日13:29:58
 */
public interface MyTrolleyDao {
	public List<MyTrolleyVo> checkTrolly(int trolleyID);
	public boolean deleteTrolly(int trolleyID);
	public boolean updateTrolley(MyTrolleyPo mtp,int trolleyID);
	public boolean insertTrolley(MyTrolleyPo mtp);
	public List<MyTrolleyVo> getTrolleyID(int memberID);
	
}
