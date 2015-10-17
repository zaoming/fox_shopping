package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.GoodsPo;
import com.fox.sp.vo.GoodsVo;

public interface GoodsService {
	public List<GoodsVo> checkGoods(int goodsID);
}
