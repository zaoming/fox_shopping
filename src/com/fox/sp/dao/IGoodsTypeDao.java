package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.GoodsTypePo;
/**
 * 前天显示商品类型的dao接口
 * @author lyp
 * 2012年9月20日17:53:56
 *
 */
public interface IGoodsTypeDao {
	public List<GoodsTypePo> goodsType(List<GoodsTypePo> bigList,int typeID);
	public List<GoodsTypePo> goodsTypeName(int typeID);
}
