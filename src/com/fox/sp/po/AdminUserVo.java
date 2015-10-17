package com.fox.sp.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 管理员Vo
 * @author lyp
 *2012年9月17日17:31:12
 */
public class AdminUserVo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6408737646373844985L;
	private int userID;				//管理员ID
	private int userProperty;		//管理员级别 0代表一般管理员，1代表超级管理员
	private String userName;		//管理员名
	private String userPassword;	//管理员密码
	private String userTrueName;	//管理员真实姓名
	private int isValid;			//是否有效 0代表无效，1代表有效
	private Date createDate;		//创建时间
	private Date updateDate;		//修改时间
	private String else1;
	private String else2;
	
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getUserProperty() {
		return userProperty;
	}
	public void setUserProperty(int userProperty) {
		this.userProperty = userProperty;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserTrueName() {
		return userTrueName;
	}
	public void setUserTrueName(String userTrueName) {
		this.userTrueName = userTrueName;
	}
	public int getIsValid() {
		return isValid;
	}
	public void setIsValid(int isValid) {
		this.isValid = isValid;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getElse1() {
		return else1;
	}
	public void setElse1(String else1) {
		this.else1 = else1;
	}
	public String getElse2() {
		return else2;
	}
	public void setElse2(String else2) {
		this.else2 = else2;
	}
	
}
