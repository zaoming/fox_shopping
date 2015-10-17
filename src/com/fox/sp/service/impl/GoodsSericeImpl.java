package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.GoodsDao;
import com.fox.sp.dao.IGoodsDao;
import com.fox.sp.dao.impl.GoodsDaoImpl;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.service.GoodsService;
import com.fox.sp.vo.GoodsVo;

public class GoodsSericeImpl implements GoodsService {
	IGoodsDao gd = new GoodsDaoImpl();
	public List<GoodsVo> checkGoods(int goodsID) {
		return gd.checkGoods(goodsID);
	}

}
