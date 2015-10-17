package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.vo.TrolleyDetailVo;

public interface Trolleydetaiservice {
	public List<TrolleyDetailVo> checkTroDetail(int trolleyID);
	public List<TrolleyDetailVo> iStroDetail(int trolleyID,int goodsID);
	public List<TrolleyDetailVo> checktroDetailLast(int trolleyID);
	public boolean deletetroGoods(int trolleyID,int GoodsID);
	public boolean deletetroall(int trolleyid);
	public boolean updatTroGoods(TrollyDetailPo tdp,int trollyDetailID);
	public boolean updatTroGoodsNum(double goodsCoun,int trollyID,int goodsID);
	public boolean insertTroGoods(TrollyDetailPo tdp);
	public List<Double> totle(int trollyID);
}
