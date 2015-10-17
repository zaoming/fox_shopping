package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.MyTrolleyPo;
import com.fox.sp.vo.MyTrolleyVo;

public interface MyTrolleyService {
	public List<MyTrolleyVo> checkTrolly(int trolleyID);
	public boolean deleteTrolly(int trolleyID);
	public boolean updateTrolley(MyTrolleyPo mtp,int trolleyID);
	public boolean insertTrolley(MyTrolleyPo mtp);
	public List<MyTrolleyVo> getTrolleyID(int memberID);
}
