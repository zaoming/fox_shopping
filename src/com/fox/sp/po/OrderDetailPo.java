package com.fox.sp.po;

public class OrderDetailPo {
	private int OrderID;
	private int GoodsID;
	private String GoodsName;
	private float GoodsPrice;
	private float GoodsCoun;
	private int GoodsEvaluation;
	private String goodsPicture;
	private String else2;
	private String else3;
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	public int getGoodsID() {
		return GoodsID;
	}
	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}
	public String getGoodsName() {
		return GoodsName;
	}
	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}
	public float getGoodsPrice() {
		return GoodsPrice;
	}
	public void setGoodsPrice(float goodsPrice) {
		GoodsPrice = goodsPrice;
	}
	public float getGoodsCoun() {
		return GoodsCoun;
	}
	public void setGoodsCoun(float goodsCoun) {
		GoodsCoun = goodsCoun;
	}
	public int getGoodsEvaluation() {
		return GoodsEvaluation;
	}
	public void setGoodsEvaluation(int goodsEvaluation) {
		GoodsEvaluation = goodsEvaluation;
	}
	public String getGoodsPicture() {
		return goodsPicture;
	}
	public void setGoodsPicture(String goodsPicture) {
		this.goodsPicture = goodsPicture;
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
