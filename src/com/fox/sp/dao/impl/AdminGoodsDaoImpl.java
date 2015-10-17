package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.IAdminGoodsDao;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTopPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.wrapper.GoodsPoWrapper;
import com.fox.sp.wrapper.GoodsTopPoWrapper;

/**
 *后台管理的dao的实现类 
 * @author 银座数码
 * lyp
 * 2012年10月4日0:01:26
 *
 */
public class AdminGoodsDaoImpl implements IAdminGoodsDao {

	public boolean goodsAdd(Object... objects) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "insert into fox_goods (goodsId,goodsName,goodsIntroduce,goodsNormalPrice,goodsMemberPrice,goodsRebate,typeID,goodsNumber,isSale,isValid,goodsPicture1,creater,createDate,updater,updateDate)" +
				" values(seq_fox_goods.nextval,?,?,?,?,?,?,?,?,1,?,?,?,?,?)";
		
		boolean b = db.update(sql, objects);
		db.close();
		return b;
	}

	public boolean goodsDelete(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "update fox_goods set isValid=0 where goodsID = "+goodsID;
		boolean b = db.update(sql);
		
		db.close();
		return b;
	}

	public  List<GoodsPo> goodsQueryAll(int rpage,int cpage) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		Wrapper<GoodsPo> wrapper = new GoodsPoWrapper();
		String sql = "SELECT * FROM" +
				"(SELECT A.*, rownum r FROM (SELECT * FROM fox_goods) A WHERE rownum <=" +cpage+
				") B " +
				"WHERE r >"+rpage;
		System.out.println(sql);
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	public  List<GoodsPo> goodsQueryOne(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select * from fox_goods where goodsID="+goodsID;
		Wrapper<GoodsPo> wrapper = new GoodsPoWrapper();
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		
		db.close();
		return list;
	}

	public  List<GoodsPo> goodsQuerys(String goodsName,int typeID,int cPage,int rPage) {
		Wrapper<GoodsPo> wrapper = new GoodsPoWrapper();
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "SELECT * FROM" +
		"(SELECT A.*, rownum r FROM (SELECT * FROM fox_goods where lower(goodsName) like '%"+goodsName+"%' " +
		"or upper(goodsName) like '%"+goodsName+"%'"+		
		"or typeID="+typeID+") A WHERE rownum <="+cPage +
		") B " +
		"WHERE r >"+rPage;
		System.out.println(sql);
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	public boolean goodsUpdate(int goodsID,Object...objects) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "update fox_goods set goodsName=?,goodsIntroduce=?,goodsNormalPrice=?,goodsMemberPrice=?," +
				"goodsRebate=?,typeID=?,goodsNumber=?,goodsPicture1=?,updater=?,updateDate=? where goodsId="+goodsID;
		boolean b = db.update(sql, objects);
		
		db.close();
		return b;
	}

	public boolean goodsNSale(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "update fox_goods set isSale=0 where goodsID = "+goodsID;
		boolean b = db.update(sql);
		db.close();
		return b;
	}

	public boolean goodsSale(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "update fox_goods set isSale=1 where goodsID = "+goodsID;
		boolean b = db.update(sql);
		
		db.close();
		return b;
	}

	public boolean goodsValid(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "update fox_goods set isValid=1 where goodsID = "+goodsID;
		boolean b = db.update(sql);
		db.close();
		return b;
	}

	public int goodsCount(String name) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select count(*) from fox_goods where upper(goodsName) like '%"+name+"%'" +
				" or lower(goodsName) like '%"+name+"%'";
		int count = db.queryCount(sql);
		db.close();
		return count;
	}

	public int goodsCount1(int typeID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select count(*) from fox_goods where typeID="+typeID;
		int count = db.queryCount(sql);
		db.close();
		return count;
	}
	public List<GoodsTopPo> goodsTop() {
		DbUtil<GoodsTopPo> db = new DbUtil<GoodsTopPo>();
		GoodsTopPoWrapper wrapper = new GoodsTopPoWrapper();
		String sql="SELECT * FROM(SELECT A.*, rownum r FROM " +
				"(select aa.goodsid, aa.goodsmemberprice,aa.goodsname,aa.goodspicture1,aa.goodsintroduce,aa.typeID,t.num "+
				" from fox_goods aa inner join (select goodsid, sum(goodscoun) num from fox_orderdetail  group by goodsid ) t on aa.goodsid=t.goodsid order by num desc) A " +
				" WHERE rownum <= 8) B WHERE r >=1";
		List<GoodsTopPo> list = db.Query(wrapper, sql);
		return list;
	}
	

}
