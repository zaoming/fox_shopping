package com.fox.sp.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.fox.sp.dao.IAdminGoodsTypeDao;
import com.fox.sp.po.GoodsTypePo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.wrapper.GoodsTypePoWrapper;

/**
 * 后台管理商品类型的dao的实现类
 * @author lyp
 *2012年9月18日17:41:51
 */
public class AdminGoodsTypeImpl implements IAdminGoodsTypeDao {

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
				System.out.println("AdminGoodsTypeImpl失败");
			}
			finally{
					db.close();
			}
		return li;
	}
 
	public boolean goodsTypeAdd(Object...objects) {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		String sql = "insert into fox_goodstype (typeid,typename,typedesc,isleaf,parentid,typelevel,creater,createdate,updater,updateDate) " +
				"values(seq_fox_goodstype.nextval,?,?,?,?,?,?,?,?,?)";
		return db.update(sql, objects);
	}

	public List<GoodsTypePo> goodsTypes() {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper wrapper = new GoodsTypePoWrapper();
		String sql = "select * from fox_goodstype where typeLevel=3";
		List<GoodsTypePo> list = db.Query(wrapper, sql);
		return list;
	}

	public List<GoodsTypePo> goodsTypeOne(int typeID) {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper wrapper = new GoodsTypePoWrapper();
		String sql = "select * from fox_goodstype where typeId="+typeID;
		List<GoodsTypePo> list = db.Query(wrapper, sql);
		return list;
	}
	
	public List<GoodsTypePo> goodsTypeOne1(int typeID){
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper wrapper = new GoodsTypePoWrapper();
		String sql = "select * from fox_goodstype where parentID="+typeID;
		List<GoodsTypePo> list = db.Query(wrapper, sql);
		return list;
	}

}
