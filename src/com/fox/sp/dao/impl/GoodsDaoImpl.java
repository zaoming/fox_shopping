package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.IGoodsDao;
import com.fox.sp.po.GoodsPo;
import com.fox.sp.po.GoodsTopPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.vo.GoodsVo;
import com.fox.sp.wrapper.GoodsPoWrapper;
import com.fox.sp.wrapper.GoodsTopPoWrapper;
import com.fox.sp.wrapper.GoodsVoWrapper;

/**
 * 商品dao的实现类
 * @author lyp
 *2012年9月23日16:39:03
 */
public class GoodsDaoImpl implements IGoodsDao {

	public List<GoodsPo> goodsView(int goodsID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		GoodsPoWrapper gpw = new GoodsPoWrapper();
		String sql = "select * from fox_goods where goodsID="+goodsID+" and isvalid=1";
		List<GoodsPo> list = db.Query(gpw, sql);
		db.close();
		return list;
	}

	public List<GoodsPo> serchMenu(int typeID,int rPage,int cPage,String sorts,Object... objects) {
		// TODO Auto-generated method stub
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		GoodsPoWrapper gpw = new GoodsPoWrapper();
		String sql1 = " order by createDate desc";
		if(sorts != null){
			String s[] = sorts.split("0");
			if(s[1].equals("1")){
				sql1 = "order by "+ s[0]+ " desc";
			}else if(s[1].equals("2")){
				sql1 = "order by "+ s[0]+ " asc";
			}
			
		}
		String sql= "SELECT * FROM( SELECT A.*, rownum r FROM ( " +
				"SELECT * FROM fox_goods where typeID=" +typeID+" and isvalid=1" + " "+sql1+
				" )A WHERE rownum <= " +
				cPage+")B WHERE r >"+rPage;
		System.out.println(sql);
		//String sql = "select * from fox_goods where typeID="+typeID;
		List<GoodsPo> list = db.Query(gpw, sql, objects);
		
		db.close();
		return list;
	}

	public List<GoodsPo> serchSerch(String inputString,int rPage,int cPage,String sort,Object...objects) {
		// TODO Auto-generated method stub
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		GoodsPoWrapper gpw = new GoodsPoWrapper();
		String sql1 = "  order by createDate desc";
		if(sort != null){
			String s[] = sort.split("0");
			if(s[1].equals("1")){
				sql1 = "order by "+ s[0]+ " desc";
			}else if(s[1].equals("2")){
				sql1 = "order by "+ s[0]+ " asc";
			}
			
		}
		
		String sql= "SELECT * FROM( SELECT A.*, rownum r FROM ( " +
		"SELECT * FROM fox_goods where isvalid=1 and (upper(goodsName) like '%"+inputString +"%'"+
		" or upper(goodsIntroduce) like '%"+inputString+"%'"+
		" or lower(goodsName) like '%"+inputString +"%'"+
		" or lower(goodsIntroduce) like '%"+inputString+"%' "+") "+
		sql1+" )A WHERE rownum <= " +
		cPage+")B WHERE r >"+rPage;
		System.out.println(sql);
		List<GoodsPo> list = db.Query(gpw, sql+sql1, objects);
		db.close();
		return list;
	}

	/*
	 *商品按价格排序
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IGoodsDao#sort(java.lang.Object[])
	 */
	public List<GoodsPo> sortPrice(Object... objects) {
		// TODO Auto-generated method stub
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select * from ";
		
		
		db.close();
		return null;
	}

	/*
	 * 商品按成交量排序
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IGoodsDao#sortOrderGoods(java.lang.Object[])
	 */
	public List<GoodsPo> sortOrderGoods(Object... objects) {
		// TODO Auto-generated method stub
		return null;
	}

	public int Count1(int typeID) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select count(*) from fox_goods where typeID="+typeID+" and isvalid=1";
		int count = db.queryCount(sql);
		db.close();
		return count;
	}

	public int Count2(String inputString) {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select count(*) from fox_goods where isvalid=1 and (upper(goodsName) like '%"+inputString +"%'"
					+" or upper(goodsIntroduce) like '%"+inputString+"%'"+" or lower(goodsIntroduce) like '%"+inputString
					+"%'"+" or lower(goodsName) like '%"+inputString+"%'"+" )";
		System.out.println("count--->"+sql);
		int count = db.queryCount(sql);
		db.close();
		return count;
	}
	
	public List<GoodsPo> goodsRebatePirce() {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		String sql = "select * from fox_goods where GoodsRebate >0 "+" and isvalid=1";
		GoodsPoWrapper wrapper = new GoodsPoWrapper();
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}
	
	/*
	 * 猜您喜欢的商品，就是随机取出五件商品
	 * (non-Javadoc)
	 * @see com.fox.sp.dao.IGoodsDao#goodsHot()
	 */
	public List<GoodsPo> goodsHot() {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		GoodsPoWrapper wrapper = new GoodsPoWrapper();
		String sql = "SELECT * FROM(" +
				"SELECT A.*, rownum r FROM (select * from fox_goods  where isvalid=1 order  by dbms_random.random ) A WHERE rownum <= 5" +
				") B WHERE r >=1";
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	public List<GoodsPo> goodsNew() {
		DbUtil<GoodsPo> db = new DbUtil<GoodsPo>();
		GoodsPoWrapper wrapper = new GoodsPoWrapper();
		String sql = "SELECT * FROM(" +
				"SELECT A.*, rownum r FROM (SELECT * FROM fox_goods where isvalid=1 order by createDate desc) A WHERE rownum <= 5" +
				") B WHERE r >=1";
		List<GoodsPo> list = db.Query(wrapper, sql);
		
		db.close();
		return list;
	}

	public List<GoodsTopPo> goodsTop() {
		DbUtil<GoodsTopPo> db = new DbUtil<GoodsTopPo>();
		GoodsTopPoWrapper wrapper = new GoodsTopPoWrapper();
//		String sql="SELECT * FROM(SELECT A.*, rownum r FROM " +
//				"(select aa.goodsid,aa.goodsName,aa.goodsmemberprice,aa.goodsintroduce,aa.goodspicture1,aa.typeid from fox_goods aa,fox_orderdetail bb  where aa.goodsid=bb.goodsid and bb.goodsevaluation = 0 order by bb.goodsCoun desc) A " +
//				"WHERE rownum <= 8) B WHERE r >=1";
		
		String sql="SELECT * FROM(SELECT A.*, rownum r FROM " +
		"(select aa.goodsid, aa.goodsmemberprice,aa.goodsname,aa.goodspicture1,aa.goodsintroduce,aa.typeID,t.num "+
		" from fox_goods aa inner join (select goodsid, sum(goodscoun) num from fox_orderdetail  group by goodsid ) t on aa.goodsid=t.goodsid and aa.isvalid=1 order by num desc) A " +
		" WHERE rownum <= 8) B WHERE r >=1 ";
		
		List<GoodsTopPo> list = db.Query(wrapper, sql);
		return list;
	}
	
	public List<GoodsVo> checkGoods(int goodsID) {
		DbUtil<GoodsVo> db = new DbUtil<GoodsVo>();
		GoodsVoWrapper gvw = new GoodsVoWrapper();
		String sql = "select * from fox_goods where GoodsID=?";
		List<GoodsVo> list = db.Query(gvw, sql, goodsID);
		db.close();
		return list;
	}

}
