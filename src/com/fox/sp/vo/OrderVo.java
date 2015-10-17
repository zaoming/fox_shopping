package com.fox.sp.vo;

import java.util.Date;

public class OrderVo {
	private int OrderID; 							/*订单ID	*/
	private int MemberID;							/*会员ID*/
	private String MemberTrueName;					/*收货人*/
	private String MemberAddress;					/*收货地址*/
	private String MemberProvince;					/*所在省份*/					
	private String MemberCity;						/*所在城市*/
	
	private String MemberPostcode;						/*邮政编码*/
	private String MemberTelephone;					/*联系电话*/
	private double OrderAmount;						/*订单总金额*/
	private int OrderPay;							/*付款方式*/
	private int isOrderInvoice;						/*是否开具发票 0代表不开，1代表开*/
	private int OrderCarry;							/*送货方式*/
	private String OrderRemark;						/*订单备注*/
	private int OrderStatus1;						/*订单付款状态 0代表未付款，1代表付款*/
	private int OrderStatus2;						/*订单发货状态 0代表未发货，1代表发货*/
	private int OrderStatus3;						/*订单收货状态 0代表未收货，1代表已收货*/
	private Date CreateDate;						/*创建时间*/
	private Date UpdateDate;						/*修改时间*/
	private int row;							/*未定义1*/
	private String else2;							/*未定义2*/
	
	
	

	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public String getElse2() {
		return else2;
	}
	public void setElse2(String else2) {
		this.else2 = else2;
	}
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
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
	public String getMemberPostcode() {
		return MemberPostcode;
	}
	public void setMemberPostcode(String memberPostcode) {
		MemberPostcode = memberPostcode;
	}

	public String getMemberTelephone() {
		return MemberTelephone;
	}
	public void setMemberTelephone(String memberTelephone) {
		MemberTelephone = memberTelephone;
	}
	public double getOrderAmount() {
		return OrderAmount;
	}
	public void setOrderAmount(double orderAmount) {
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
	
	
}
