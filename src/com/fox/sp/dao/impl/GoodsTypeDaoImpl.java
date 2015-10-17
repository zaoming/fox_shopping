package com.fox.sp.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.fox.sp.dao.IGoodsTypeDao;
import com.fox.sp.po.GoodsTypePo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.wrapper.GoodsTypePoWrapper;



/**
 * 前台显示商品类型的dao的实现类
 * @author lyp
 *2012年9月18日17:41:51
 */
public class GoodsTypeDaoImpl implements IGoodsTypeDao {

	/*
	 * 查询数据库中当前商品类型
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IAdminGoodsTypeDao#goodsType()
	 */
	public List<GoodsTypePo> goodsType(List<GoodsTypePo> bigList,int typeID) {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper gtpw = new GoodsTypePoWrapper();
		String sql = "select * from fox_goodstype where parentid="+typeID;
		bigList = db.Query(gtpw, sql);
		List<GoodsTypePo> li = new ArrayList<GoodsTypePo>();
		try {
			for (GoodsTypePo goodsTypePo : bigList) {
				List<GoodsTypePo> goodsType = new ArrayList<GoodsTypePo>();
				goodsTypePo.setList(goodsType(goodsType,goodsTypePo.getTypeID()));
				li.add(goodsTypePo);
			}
			}catch(Exception e){
				System.out.println("a---");
			}
			finally{
					db.close();
			}
		return li;
	}

	public List<GoodsTypePo> goodsTypeName(int typeID) {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper gtpw = new GoodsTypePoWrapper();
		String sql = "select * from fox_goodstype where typeID="+typeID;
		List<GoodsTypePo> list = db.Query(gtpw, sql);
		return list;
	}

}
