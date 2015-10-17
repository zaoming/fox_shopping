package com.fox.sp.vo;

import java.util.Date;

public class PicAdVo {
	private int adsID;
	private String adsPicture;
	private Date IssueDate;
	private Date ExpireDate;
	private String Creater;
	private Date CreateDate;
	private String Updater;
	private Date UpdateDate;
	private String address;
	private String else2;
	private String else3;
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getElse2() {
		return else2;
	}
	public void setElse2(String else2) {
		this.else2 = else2;
	}
	public String getElse3() {
		return else3;
	}
	public void setElse3(String else3) {
		this.else3 = else3;
	}
	public int getAdsID() {
		return adsID;
	}
	public void setAdsID(int adsID) {
		this.adsID = adsID;
	}
	public String getAdsPicture() {
		return adsPicture;
	}
	public void setAdsPicture(String adsPicture) {
		this.adsPicture = adsPicture;
	}
	public Date getIssueDate() {
		return IssueDate;
	}
	public void setIssueDate(Date issueDate) {
		IssueDate = issueDate;
	}
	public Date getExpireDate() {
		return ExpireDate;
	}
	public void setExpireDate(Date expireDate) {
		ExpireDate = expireDate;
	}
	public String getCreater() {
		return Creater;
	}
	public void setCreater(String creater) {
		Creater = creater;
	}
	public Date getCreateDate() {
		return CreateDate;
	}
	public void setCreateDate(Date createDate) {
		CreateDate = createDate;
	}
	public String getUpdater() {
		return Updater;
	}
	public void setUpdater(String updater) {
		Updater = updater;
	}
	public Date getUpdateDate() {
		return UpdateDate;
	}
	public void setUpdateDate(Date updateDate) {
		UpdateDate = updateDate;
	}
	
}
