package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.po.AdminUserVo;
import com.fox.sp.util.Wrapper;


/**
 * 用泛型，继承Wrapper接口，重写getObject方法，
 * 用于封装得到AdminUser表里的数据，通过AdminUserVo的
 * set方法来设置从数据库里得到的值
 * @author lyp
 *
 * @param <T>
 */
public class AdminUserWrapper implements Wrapper<AdminUserVo>{

	/*
	 * 实现接口中的getObject方法
	 * (non-Javadoc)
	 * @see com.fox.sp.util.Wrapper#getObject(java.sql.ResultSet)
	 */
	public AdminUserVo getObject(ResultSet rs) {
		AdminUserVo auv = new AdminUserVo();
		try {
			auv.setUserName(rs.getString("username"));
			auv.setUserPassword(rs.getString("userPassword"));
			auv.setUserID(rs.getInt("userID"));
			auv.setUserProperty(rs.getInt("userProperty"));
			auv.setUserTrueName(rs.getString("usertruename"));
			auv.setIsValid(rs.getInt("isvalid"));
			auv.setCreateDate(rs.getTimestamp("createdate"));
			auv.setUpdateDate(rs.getTimestamp("updatedate"));
			auv.setElse1(rs.getString("else1"));
			auv.setElse2(rs.getString("else2"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return auv;
	}

}
