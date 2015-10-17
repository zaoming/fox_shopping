package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTopPo;

/**
 * 后台对商品管理的dao接口
 * @author lyp
 * 2012年9月23日20:27:46
 *
 */
public interface IAdminGoodsDao {
	public boolean goodsAdd(Object...objects);						//添加商品
	public  List<GoodsPo> goodsQueryAll(int rpage,int cpage);		//查询所有商品
	public List<GoodsPo> goodsQueryOne(int goodsID);				//查询单条商品
	public  List<GoodsPo> goodsQuerys(String goodsName,int typeID,int rPage,int cPage);
																	//查询符合条件的商品
	public boolean goodsDelete(int goodsID);						//删除商品，即使商品失效，商品下架
	public boolean goodsValid(int goodsID);							//使商品重新有效
	public boolean goodsUpdate(int goodsID,Object...objects);		//修改商品信息
	public boolean goodsNSale(int goodsID);							//设置商品非特价
	public boolean goodsSale(int goodsID);							//设置商品特价
	public int goodsCount(String name);								//商品总数
	public int goodsCount1(int typeID);								//商品总数
	public List<GoodsTopPo> goodsTop();								//商品销量
	
}
