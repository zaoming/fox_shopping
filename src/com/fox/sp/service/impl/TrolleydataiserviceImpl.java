package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.TrollyDetailDao;
import com.fox.sp.dao.impl.TrollyDetailDaoImpl;
import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.service.Trolleydetaiservice;
import com.fox.sp.vo.TrolleyDetailVo;

public class TrolleydataiserviceImpl implements Trolleydetaiservice {
	TrollyDetailDao tdd = new TrollyDetailDaoImpl();
	public List<TrolleyDetailVo> checkTroDetail(int trolleyID) {
		return tdd.checkTroDetail(trolleyID);
	}
	public List<Double> totle(int trollyID) {
		
		return tdd.totle(trollyID);
	}
	public boolean deletetroGoods(int trolleyID,int GoodsID) {
		return tdd.deletetroGoods(trolleyID,GoodsID);
	}

	public boolean insertTroGoods(TrollyDetailPo tdp) {
		return tdd.insertTroGoods(tdp);
	}

	public boolean updatTroGoods(TrollyDetailPo tdp, int trollyDetailID) {
		return tdd.updatTroGoods(tdp, trollyDetailID);
	}

	public boolean deletetroall(int trolleyid) {
		return tdd.deletetroall(trolleyid);
	}
	public List<TrolleyDetailVo> checktroDetailLast(int trolleyID) {
		
		return tdd.checktroDetailLast(trolleyID);
	}
	public List<TrolleyDetailVo> iStroDetail(int trolleyID, int goodsID) {
		
		return tdd.iStroDetail(trolleyID, goodsID);
	}
	public boolean updatTroGoodsNum(double goodsCoun, int trollyID, int goodsID) {
		
		return tdd.updatTroGoodsNum(goodsCoun, trollyID, goodsID);
	}

}
