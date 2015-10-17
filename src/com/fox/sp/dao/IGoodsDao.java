package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTopPo;
import com.fox.sp.vo.GoodsVo;

/**
 * 商品的dao接口
 * @author lyp
 *2012年9月23日16:29:51
 */
public interface IGoodsDao {
	public List<GoodsPo> serchMenu(int typeID,int rPage,int cPage,String sorts,Object...objects); 
																			//从菜单栏进行搜索
	public List<GoodsPo> serchSerch(String inputString,int rPage,int cPage,String sort,Object...objects);		
																			//从搜索栏进行搜索
	public List<GoodsPo> sortPrice(Object...objects);						//按价格排序
	public List<GoodsPo> sortOrderGoods(Object...objects);					//按成交量排序
	public List<GoodsPo> goodsView(int goodsID);							//查看单个商品
	public int Count1(int typeID);											//查询总数1
	public int Count2(String inputString);									//查询总数2
	public List<GoodsPo> goodsRebatePirce();								//查找特价商品列表
	public List<GoodsPo> goodsHot();										//猜您喜欢商品
	public List<GoodsPo> goodsNew();										//新品上架
	public List<GoodsTopPo> goodsTop();										//一周销量排行
	public List<GoodsVo> checkGoods(int goodsID);
}
