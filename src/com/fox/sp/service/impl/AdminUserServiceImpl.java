package com.fox.sp.service.impl;

import java.util.List;

import com.fox.sp.dao.AdminUserDao;
import com.fox.sp.dao.impl.AdminUserDaoImpl;
import com.fox.sp.po.AdminUserVo;
import com.fox.sp.service.AdminUserService;

public class AdminUserServiceImpl implements AdminUserService {

	public List<AdminUserVo> LoginCheck(String userName, String userPassword) {
		AdminUserDao aud = new AdminUserDaoImpl();
		return aud.LoginCheck(userName, userPassword);
	}

}
