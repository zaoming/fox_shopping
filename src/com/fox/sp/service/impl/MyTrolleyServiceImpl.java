package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.MyTrolleyDao;
import com.fox.sp.dao.impl.MytrolleyDaoImpl;
import com.fox.sp.po.MyTrolleyPo;
import com.fox.sp.service.MyTrolleyService;
import com.fox.sp.vo.MyTrolleyVo;
/**
 * 购物车service实现
 * @author ldt
 *2012年9月22日16:24:14
 */
public class MyTrolleyServiceImpl implements MyTrolleyService{
	MyTrolleyDao mtd = new MytrolleyDaoImpl();
	public List<MyTrolleyVo> checkTrolly(int trolleyID) {
		return mtd.checkTrolly(trolleyID);
	}

	public boolean deleteTrolly(int trolleyID) {
		return mtd.deleteTrolly(trolleyID);
	}

	public boolean insertTrolley(MyTrolleyPo mtp) {
		return mtd.insertTrolley(mtp);
	}

	public boolean updateTrolley(MyTrolleyPo mtp, int trolleyID) {
		return mtd.updateTrolley(mtp, trolleyID);
	}

	public List<MyTrolleyVo> getTrolleyID(int memberID) {
		// TODO Auto-generated method stub
		return mtd.getTrolleyID(memberID);
	}

}
