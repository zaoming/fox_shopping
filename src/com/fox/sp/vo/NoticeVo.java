package com.fox.sp.vo;

import java.sql.Date;

public class NoticeVo {
	private int placardID;
	private String placardTitle;
	private String placardContent;
	private Date iSsueDate;
	private Date expireDate;
	private String creater;
	private Date createDate;
	private String updater;
	private Date updateDate;
	public int getPlacardID() {
		return placardID;
	}
	public void setPlacardID(int placardID) {
		this.placardID = placardID;
	}
	public String getPlacardTitle() {
		return placardTitle;
	}
	public void setPlacardTitle(String placardTitle) {
		this.placardTitle = placardTitle;
	}
	public String getPlacardContent() {
		return placardContent;
	}
	public void setPlacardContent(String placardContent) {
		this.placardContent = placardContent;
	}
	public Date getiSsueDate() {
		return iSsueDate;
	}
	public void setiSsueDate(Date iSsueDate) {
		this.iSsueDate = iSsueDate;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUpdater() {
		return updater;
	}
	public void setUpdater(String updater) {
		this.updater = updater;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
