package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.AdminUserVo;
import com.fox.sp.po.MemberPo;
/**
 * 后台管理员
 * Dao接口
 * @author lyp
 * 2012年9月17日17:52:19
 *
 */
public interface AdminUserDao {
	public List<AdminUserVo> LoginCheck(String userName,String userPassword);//登陆
	public List<MemberPo> QueryAll();						//查询所有用户
	public MemberPo QueryOne(int userID);					//查询单个用户
	public List<MemberPo> Query(Object...objects);			//带条件查询
	public boolean DongJie(Integer...integers);							//冻结用户
	public boolean JieDong(Integer...integers);							//给用户解冻
}
