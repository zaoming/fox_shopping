package com.fox.sp.po;

import java.io.Serializable;

public class GoodsTopPo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2304658158341550953L;
	
	private int goodsID;
	private String goodsName;
	private String goodsIntroduce;
	private int goodsMemberPrice;
	private int typeID;
	private int num;
	private String goodsPicture1;
	private int rownum;
	
	
	public int getGoodsID() {
		return goodsID;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsIntroduce() {
		return goodsIntroduce;
	}
	public void setGoodsIntroduce(String goodsIntroduce) {
		this.goodsIntroduce = goodsIntroduce;
	}
	public int getGoodsMemberPrice() {
		return goodsMemberPrice;
	}
	public void setGoodsMemberPrice(int goodsMemberPrice) {
		this.goodsMemberPrice = goodsMemberPrice;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getGoodsPicture1() {
		return goodsPicture1;
	}
	public void setGoodsPicture1(String goodsPicture1) {
		this.goodsPicture1 = goodsPicture1;
	}
}
