package com.fox.sp.dao.impl;

import java.util.List;

import com.fox.sp.dao.NoticeDao;
import com.fox.sp.po.NoticePo;
import com.fox.sp.util.DbUtil;
import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.NoticeVo;
import com.fox.sp.wrapper.NoticeWriper;

public class NoticeImpl implements NoticeDao {
	DbUtil<NoticeVo> db = new DbUtil<NoticeVo>();
	Wrapper<NoticeVo> wp = new NoticeWriper();
	
	public List<NoticeVo> checkNoAll() {
		String sql = "select * from fox_notice order by UpdateDate desc";
		List<NoticeVo> list = db.Query(wp, sql);
		db.close();
		return list;
	}

	public List<NoticeVo> checkNotice(int placardID) {
		String sql = "select * from fox_notice where PlacardID=?";
		List<NoticeVo> list = db.Query(wp, sql, placardID);
		db.close();
		return list;
	}

	public boolean deleteNo(int placardID) {
		String sql = "delete from fox_notice where PlacardID=?";
		boolean de = db.update(sql, placardID);
		db.close();
		return de;
	}

	public boolean insertNo(NoticePo np) {
		String sql = "insert into fox_notice values(seq_fox_notice.nextval,?,?,to_date(?,'yyyy-mm-dd'),to_date(?,'yyyy-mm-dd'),?,sysdate,?,sysdate,?,?,?)";
		boolean in = 
			db.update(sql, np.getPlacardTitle(),np.getPlacardContent(),np.getiSsueDate(),np.getExpireDate(),np.getCreater(),np.getUpdater(),np.getElse1(),np.getElse2(),np.getElse3());
		db.close();
		return in;
	}

	public boolean updateNo(NoticePo np, int placardID) {
		String sql = 
			"update fox_notice(PlacardTitle,PlacardContent,ExpireDate,Updater,UpdateDate) set PlacardTitle=?,PlacardContent=?,ExpireDate=?,Updater=?,UpdateDate=sysdate where placardID=?";
		boolean up = 
			db.update(sql, np.getPlacardTitle(),np.getPlacardContent(),np.getExpireDate(),np.getUpdater(),placardID);
		db.close();
		return up;
	}

}
