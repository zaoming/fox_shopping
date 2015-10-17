package com.fox.sp.service;

import java.util.List;

import com.fox.sp.po.AdminUserVo;

public interface AdminUserService {
	public List<AdminUserVo> LoginCheck(String userName, String userPassword);
}
