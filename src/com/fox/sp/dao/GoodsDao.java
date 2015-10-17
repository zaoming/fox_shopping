package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.GoodsPo;
import com.fox.sp.vo.GoodsVo;

public interface GoodsDao {
	public List<GoodsVo> checkGoods(int goodsID);
	public boolean deleteGoods(int goodsID);
	public boolean updateGoods(GoodsPo mtp,int goodsID);
	public boolean insertGoods(GoodsPo mtp);
}
