package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.NoticePo;
import com.fox.sp.vo.NoticeVo;

public interface NoticeService {
	public List<NoticeVo> checkNotice(int placardID);
	public List<NoticeVo> checkNoAll();
	public boolean deleteNo(int placardID);
	public boolean updateNo(NoticePo np, int placardID);
	public boolean insertNo(NoticePo np);
}
