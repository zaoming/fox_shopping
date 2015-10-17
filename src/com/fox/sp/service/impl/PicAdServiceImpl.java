package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.PicAdDao;
import com.fox.sp.dao.impl.PicAdDaoImpl;
import com.fox.sp.po.PicAdPo;
import com.fox.sp.service.PicAdService;
import com.fox.sp.vo.PicAdVo;

public class PicAdServiceImpl implements PicAdService {
	PicAdDao pad = new PicAdDaoImpl();
	
	public List<PicAdVo> checkAd(int adsID) {
		
		return pad.checkAd(adsID);
	}

	public boolean deleteAd(int adsID) {
		
		return pad.deleteAd(adsID);
	}

	public boolean insertAd(PicAdPo pap) {
		
		return pad.insertAd(pap);
	}

	public boolean updateAd(int adsID,PicAdPo pap) {
		
		return pad.updateAd(adsID, pap);
	}

	public List<PicAdVo> checkAdAll() {
		
		return pad.checkAdAll();
	}

	public List<PicAdVo> checkAdPro() {
		return pad.checkAdPro();
	}

}
