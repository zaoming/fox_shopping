package com.fox.sp.po;

import java.util.Date;

public class OrderPo {
	private int MemberID;
	private String MemberTrueName;
	private String MemberAddress;
	private String MemberProvince;
	private String MemberCity;
	private String MemberArea;
	private String MemberPostcode;
	private String MemberTelephone;
	private float OrderAmount;
	private int OrderPay;
	private int isOrderInvoice;
	private int OrderCarry;
	private String OrderRemark;
	private int OrderStatus1;
	private int OrderStatus2;
	private int OrderStatus3;
	private Date CreateDate;
	private Date UpdateDate;
	private String else1;
	private String else2;
	private String else3;
	
	public String getMemberTelephone() {
		return MemberTelephone;
	}
	public void setMemberTelephone(String memberTelephone) {
		MemberTelephone = memberTelephone;
	}
	public int getMemberID() {
		return MemberID;
	}
	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	public String getMemberTrueName() {
		return MemberTrueName;
	}
	public void setMemberTrueName(String memberTrueName) {
		MemberTrueName = memberTrueName;
	}
	public String getMemberAddress() {
		return MemberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		MemberAddress = memberAddress;
	}
	public String getMemberProvince() {
		return MemberProvince;
	}
	public void setMemberProvince(String memberProvince) {
		MemberProvince = memberProvince;
	}
	public String getMemberCity() {
		return MemberCity;
	}
	public void setMemberCity(String memberCity) {
		MemberCity = memberCity;
	}
	public String getMemberArea() {
		return MemberArea;
	}
	public void setMemberArea(String memberArea) {
		MemberArea = memberArea;
	}
	public String getMemberPostcode() {
		return MemberPostcode;
	}
	public void setMemberPostcode(String memberPostcode) {
		MemberPostcode = memberPostcode;
	}
	public float getOrderAmount() {
		return OrderAmount;
	}
	public void setOrderAmount(float orderAmount) {
		OrderAmount = orderAmount;
	}
	public int getOrderPay() {
		return OrderPay;
	}
	public void setOrderPay(int orderPay) {
		OrderPay = orderPay;
	}
	public int getIsOrderInvoice() {
		return isOrderInvoice;
	}
	public void setIsOrderInvoice(int isOrderInvoice) {
		this.isOrderInvoice = isOrderInvoice;
	}
	public int getOrderCarry() {
		return OrderCarry;
	}
	public void setOrderCarry(int orderCarry) {
		OrderCarry = orderCarry;
	}
	public String getOrderRemark() {
		return OrderRemark;
	}
	public void setOrderRemark(String orderRemark) {
		OrderRemark = orderRemark;
	}
	public int getOrderStatus1() {
		return OrderStatus1;
	}
	public void setOrderStatus1(int orderStatus1) {
		OrderStatus1 = orderStatus1;
	}
	public int getOrderStatus2() {
		return OrderStatus2;
	}
	public void setOrderStatus2(int orderStatus2) {
		OrderStatus2 = orderStatus2;
	}
	public int getOrderStatus3() {
		return OrderStatus3;
	}
	public void setOrderStatus3(int orderStatus3) {
		OrderStatus3 = orderStatus3;
	}
	public Date getCreateDate() {
		return CreateDate;
	}
	public void setCreateDate(Date createDate) {
		CreateDate = createDate;
	}
	public Date getUpdateDate() {
		return UpdateDate;
	}
	public void setUpdateDate(Date updateDate) {
		UpdateDate = updateDate;
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
	public String getElse3() {
		return else3;
	}
	public void setElse3(String else3) {
		this.else3 = else3;
	}
}
