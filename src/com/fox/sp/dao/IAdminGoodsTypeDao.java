package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.GoodsTypePo;

/**
 * 后台管理商品类型的dao接口
 * @author lyp
 *2012年9月18日17:40:20
 */
public interface IAdminGoodsTypeDao {
	public List<GoodsTypePo> goodsType(List<GoodsTypePo> bigList,int typeID);
	public boolean goodsTypeAdd(Object...objects);
	public List<GoodsTypePo> goodsTypes();
	public List<GoodsTypePo> goodsTypeOne(int typeID);
	public List<GoodsTypePo> goodsTypeOne1(int typeID);
}
