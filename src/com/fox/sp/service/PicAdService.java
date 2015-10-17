package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.PicAdPo;
import com.fox.sp.vo.PicAdVo;

public interface PicAdService {
	public List<PicAdVo> checkAd(int adsID);
	public List<PicAdVo> checkAdAll();
	public List<PicAdVo> checkAdPro();
	public boolean deleteAd(int adsID);
	public boolean updateAd(int adsID,PicAdPo pap);
	public boolean insertAd(PicAdPo pap);
}
