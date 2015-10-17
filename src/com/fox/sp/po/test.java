package com.fox.sp.po;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.fox.sp.util.DbUtil;
import com.fox.sp.wrapper.GoodsTypePoWrapper;

public class test {
	public static void main(String[] args) {
		test t = new test();
		List<GoodsTypePo>list = new ArrayList<GoodsTypePo>();
		List<GoodsTypePo> bigList = t.goodTypeCascade(list, 0);
		Iterator<GoodsTypePo> it = bigList.iterator();
		while(it.hasNext()){
			GoodsTypePo goodtypepo = it.next();
			System.out.println(goodtypepo.getTypeName()+"--1级--->");
			
			List<GoodsTypePo> list1 = goodtypepo.getList();
			Iterator<GoodsTypePo> it1 = list1.iterator();
			while(it1.hasNext()){
				GoodsTypePo g = it1.next();
				System.out.println(g.getTypeName()+"--2级-->");
				
				List<GoodsTypePo> list2 = g.getList();
				Iterator<GoodsTypePo> it2 = list2.iterator();
				while(it2.hasNext()){
					GoodsTypePo g1 = it2.next();
					System.out.println(g1.getTypeName()+"---3->");
					
					
				}
				
			}
		}
		
		
	}
	
	
	public List<GoodsTypePo> goodTypeCascade(List<GoodsTypePo> bigList,int typeID) {
		DbUtil<GoodsTypePo> db = new DbUtil<GoodsTypePo>();
		GoodsTypePoWrapper gtpw = new GoodsTypePoWrapper();
		String sql = "select * from fox_GoodsType where parentID = "+typeID;
		bigList = db.Query(gtpw, sql);
		List<GoodsTypePo> li = new ArrayList<GoodsTypePo>();
		try {
			for (GoodsTypePo goodsTypePo : bigList) {
//				System.out.println(goodsTypePo.getTypeID()+"---"+goodsTypePo.getTypeName());
				List<GoodsTypePo> goodsType = new ArrayList<GoodsTypePo>();
				goodsTypePo.setList(goodTypeCascade(goodsType,goodsTypePo.getTypeID()));
				li.add(goodsTypePo);
			}
//			while(it.hasNext()){
//				GoodsTypePo goodtypepo = it.next();
////				List<GoodsTypePo> goodsType = new ArrayList<GoodsTypePo>();
//				System.out.println(goodtypepo.getTypeName()+"---"+goodtypepo.getTypeID());
////				goodtypepo.setList(goodTypeCascade(goodsType,goodtypepo.getTypeID()));
//			//上面这个就是能产生递归的作用使得所有的数据都能得到
//				bigList.add(goodtypepo);
//			}
		} catch (Exception e) {
		}finally{
			db.close();
		}
		return li;
		
	}

}
