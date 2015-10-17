package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.PicAdDao;
import com.fox.sp.po.PicAdPo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.vo.PicAdVo;
import com.fox.sp.wrapper.PicAdVoWrapper;

public class PicAdDaoImpl implements PicAdDao {
	DbUtil<PicAdVo> db = new DbUtil<PicAdVo>();
	PicAdVoWrapper paw= new PicAdVoWrapper();
	
	public List<PicAdVo> checkAd(int adsID) {
		String sql = "select * from fox_ads where adsID=?";
		List<PicAdVo> list = db.Query(paw, sql, adsID);
		db.close();
		return list;
	}

	public boolean deleteAd(int adsID) {
		String sql = "delete from fox_ads where adsID=?";
		boolean de = db.update(sql, adsID);
		db.close();
		return de;
	}

	public boolean insertAd(PicAdPo pap) {
		String sql = "insert into fox_ads values(seq_fox_ads.nextval,?,to_date(?,'yyyy-mm-dd'),to_date(?,'yyyy-mm-dd'),?,sysdate,?,sysdate,?,?,?)";
		boolean in = 
			db.update(sql, pap.getAdsPicture(),pap.getIssueDate(),pap.getExpireDate(),pap.getCreater(),pap.getUpdater(),pap.getAddress(),pap.getElse2(),pap.getElse3());
		db.close();
		return in;
	}

	public boolean updateAd(int adsID,PicAdPo pap) {
		String sql = 
			"update fox_ads set " +
			" issueDate=to_date(?,'yyyy-mm-dd'),expireDate=to_date(?,'yyyy-mm-dd'),updater=?,updatedate=sysdate where adsID=?";
		boolean up = 
			db.update(sql,pap.getIssueDate(),pap.getExpireDate(),pap.getUpdater(),adsID);
		db.close();
		return up;
	}

	public List<PicAdVo> checkAdAll() {

		String sql = "select * from fox_ads order by UpdateDate desc";
		List<PicAdVo> list = db.Query(paw, sql);
		
		for (PicAdVo li : list) {
			System.out.println(li.getAdsPicture());
		}
		
		db.close();
		return list;
	}

	public List<PicAdVo> checkAdPro() {
		String sql = "select * from fox_ads where expireDate >= sysdate order by UpdateDate desc";
		List<PicAdVo> list = db.Query(paw, sql);
		
		for (PicAdVo li : list) {
			System.out.println(li.getAdsPicture());
		}
		
		db.close();
		return list;
	}

}
