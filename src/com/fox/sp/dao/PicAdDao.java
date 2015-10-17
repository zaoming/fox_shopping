package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.PicAdPo;
import com.fox.sp.vo.PicAdVo;

/**
 * 图片上传
 * @author ldt
 *
 */
public interface PicAdDao {
	public List<PicAdVo> checkAd(int adsID);
	public List<PicAdVo> checkAdAll();
	public List<PicAdVo> checkAdPro();
	public boolean deleteAd(int adsID);
	public boolean updateAd(int adsID,PicAdPo pap);
	public boolean insertAd(PicAdPo pap);
}
