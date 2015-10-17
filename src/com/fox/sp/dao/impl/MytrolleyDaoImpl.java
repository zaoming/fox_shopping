package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.MyTrolleyDao;
import com.fox.sp.po.MyTrolleyPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.vo.MyTrolleyVo;
import com.fox.sp.wrapper.TrolleyVoWrapper;
/**
 * 购物车的dao实现
 * @author ldt
 *2012年9月22日14:23:44
 */
public class MytrolleyDaoImpl implements MyTrolleyDao {
	DbUtil<MyTrolleyVo> db = new DbUtil<MyTrolleyVo>();
	TrolleyVoWrapper tvw = new TrolleyVoWrapper();
	
	public List<MyTrolleyVo> checkTrolly(int trolleyID) {
		String sql = "select * from fox_trolley where trolleyID=?";
		List<MyTrolleyVo> list = db.Query(tvw, sql, trolleyID);
		db.close();
		return list;
	}

	public boolean deleteTrolly(int trolleyID) {
		String sql = "delete from fox_trolley where trolleyID=?";
		boolean de = db.update(sql, trolleyID);
		db.close();
		return de;
	}

	public boolean insertTrolley(MyTrolleyPo mtp) {
		String sql = "insert into fox_trolley (trolleyID,memberID) values(seq_fox_trolley.nextval,?)";
		boolean in = db.update(sql, mtp.getMemberID());
		db.close();
		return in;
	}

	public boolean updateTrolley(MyTrolleyPo mtp,int trolleyID) {
		String sql = "update fox_trolley set MemberID=?,GoodsID=?,else1=?,else2=?,else3=? where trolleyID=?";
		boolean up = db.update(sql, mtp.getMemberID(),mtp.getGoodsID(),mtp.getElse1(),mtp.getElse2(),mtp.getElse3(),trolleyID);
		db.close();
		return up;
	}

	public List<MyTrolleyVo> getTrolleyID(int memberID) {
		String sql = "select * from fox_trolley where memberID="+memberID;
		List<MyTrolleyVo> list = db.Query(tvw, sql);
		System.out.println(sql);
		return list;
	}

}
