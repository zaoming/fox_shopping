package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.NoticeDao;
import com.fox.sp.dao.impl.NoticeImpl;
import com.fox.sp.po.NoticePo;
import com.fox.sp.service.NoticeService;
import com.fox.sp.vo.NoticeVo;


public class NoticeServiceImpl implements NoticeService {
	NoticeDao nd = new NoticeImpl();
	public List<NoticeVo> checkNoAll() {
		
		return nd.checkNoAll();
	}

	public List<NoticeVo> checkNotice(int placardID) {
		
		return nd.checkNotice(placardID);
	}

	public boolean deleteNo(int placardID) {
		
		return nd.deleteNo(placardID);
	}

	public boolean insertNo(NoticePo np) {
		
		return nd.insertNo(np);
	}

	public boolean updateNo(NoticePo np, int placardID) {
		
		return nd.updateNo(np, placardID);
	}

}
