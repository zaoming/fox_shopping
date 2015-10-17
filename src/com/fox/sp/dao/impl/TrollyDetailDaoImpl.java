package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.TrollyDetailDao;
import com.fox.sp.po.TrollyDetailPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.vo.TrolleyDetailVo;
import com.fox.sp.wrapper.TrollyDetailVoWrapper;

public class TrollyDetailDaoImpl implements TrollyDetailDao {
	DbUtil<TrolleyDetailVo> db = new DbUtil<TrolleyDetailVo>();
	TrollyDetailVoWrapper tdvw = new TrollyDetailVoWrapper();
	
	public List<TrolleyDetailVo> checkTroDetail(int trolleyID) {
		String sql = "select * from fox_trolleyDetail where trollyID=?";
		List<TrolleyDetailVo> list = db.Query(tdvw, sql, trolleyID);
		db.close();
		return list;
	}

	public boolean deletetroGoods(int trolleyID,int GoodsID) {
		String sql = "delete from fox_trolleyDetail where trollyID=? and goodsID=?";
		boolean de = db.update(sql, trolleyID,GoodsID);
		db.close();
		return de;
	}

	public boolean insertTroGoods(TrollyDetailPo tdp) {
		String sql = "insert into fox_trolleyDetail values(seq_fox_trollyDetail.nextval,?,?,?,?,?,?,sysdate,?,?)";
		boolean in = db.update(sql, tdp.getTrollyID(),tdp.getGoodsID(),tdp.getGoodsName(),tdp.getGoodsPrice(),tdp.getGoodsCoun(),tdp.getGoodsbuyed(),tdp.getElse2(),tdp.getElse3());
		System.out.println(sql);;
		db.close();
		return in;
	}

	public boolean updatTroGoods(TrollyDetailPo tdp, int trollyDetailID) {
		String sql = "update fox_trolleyDetail set trollyID=?,GoodsID=?,GoodsName=?,GoodsPrice=?,GoodsCoun=?,Goodsbuyed=?,createDate=?,else2=?,else3=? where trollyDetailID=?";
		boolean up = db.update(sql,tdp,trollyDetailID);
		db.close();
		return up;
	}

	public boolean deletetroall(int trolleyid) {
		String sql = "delete from fox_trolleyDetail where trollyID=?";
		boolean deall = db.update(sql, trolleyid);
		db.close();
		return deall;
	}

	public List<Double> totle(int trollyID) {
		String sql = "select GoodsPrice,GoodsCoun from fox_trolleyDetail where trollyID=?";
		List<Double> list= db.doPrice(sql, trollyID);
		db.close();
		return list;
	}

	public List<TrolleyDetailVo> checktroDetailLast(int trolleyID) {
		String sql = "SELECT * FROM (" +
					"SELECT A.*, rownum r FROM (select * from fox_trolleyDetail where trollyID=? order by createDate desc) A " +
					" WHERE rownum <= 1" + 
				") B WHERE r > 0";
		List<TrolleyDetailVo> list = db.Query(tdvw, sql, trolleyID);
		System.out.println(sql);
		db.close();
		return list;
	}

	public List<TrolleyDetailVo> iStroDetail(int trolleyID, int goodsID) {
		String sql = "select * from fox_trolleyDetail where trollyID=? and goodsID=?";
		List<TrolleyDetailVo> list = db.Query(tdvw, sql, trolleyID,goodsID);
		System.out.println(sql);
		
		db.close();
		return list;
	}

	public boolean updatTroGoodsNum(double goodsCoun, int trollyID, int goodsID) {
		String sql = "update fox_trolleyDetail set GoodsCoun=?,Goodsbuyed=?,createDate=sysdate where trollyID=? and goodsID=?";
		boolean up = db.update(sql,goodsCoun,0,trollyID,goodsID);
		db.close();
		return up;
	}
}
