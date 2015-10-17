package com.fox.sp.po;

import java.io.Serializable;
import java.util.Date;
/**
 * 
 * 商品Po
 * @author lyp
 *2012年9月22日16:56:43
 */
public class GoodsPo implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8946295088066301576L;
	private int goodsID;                    //商品ID 主键
    private String goodsName;               //商品名称
    private String goodsIntroduce;          //商品简介 
    private float goodsNormalPrice;         //市场价格
    private float goodsMemberPrice;         //商城价格
    private float goodsRebate;              //折扣率
    private int typeID;   					//所属类别(指到二级子类)
    private int goodsNumber;                //商品余量
    private int isSale;                     //是否特价 0表示非特价 1表示特价
    private int isValid;                    //是否有效 0表示非有效 1表示有效
    private String goodsPicture1;           //商品图片地址1  
    private String goodsPicture2;           //商品图片地址2 
    private String goodsPicture3;           //商品图片地址3 
    private String goodsPicture4;           //商品图片地址4 
    private String creater;                 //创建人
    private Date createDate;                //创建时间
    private String updater;                 //修改人
    private Date updateDate;           		//修改时间
    private String else1;
    private String else2;
	public int getGoodsID() {
		return goodsID;
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
	public float getGoodsNormalPrice() {
		return goodsNormalPrice;
	}
	public void setGoodsNormalPrice(float goodsNormalPrice) {
		this.goodsNormalPrice = goodsNormalPrice;
	}
	public float getGoodsMemberPrice() {
		return goodsMemberPrice;
	}
	public void setGoodsMemberPrice(float goodsMemberPrice) {
		this.goodsMemberPrice = goodsMemberPrice;
	}
	public float getGoodsRebate() {
		return goodsRebate;
	}
	public void setGoodsRebate(float goodsRebate) {
		this.goodsRebate = goodsRebate;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public int getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public int getIsSale() {
		return isSale;
	}
	public void setIsSale(int isSale) {
		this.isSale = isSale;
	}
	public int getIsValid() {
		return isValid;
	}
	public void setIsValid(int isValid) {
		this.isValid = isValid;
	}
	public String getGoodsPicture1() {
		return goodsPicture1;
	}
	public void setGoodsPicture1(String goodsPicture1) {
		this.goodsPicture1 = goodsPicture1;
	}
	public String getGoodsPicture2() {
		return goodsPicture2;
	}
	public void setGoodsPicture2(String goodsPicture2) {
		this.goodsPicture2 = goodsPicture2;
	}
	public String getGoodsPicture3() {
		return goodsPicture3;
	}
	public void setGoodsPicture3(String goodsPicture3) {
		this.goodsPicture3 = goodsPicture3;
	}
	public String getGoodsPicture4() {
		return goodsPicture4;
	}
	public void setGoodsPicture4(String goodsPicture4) {
		this.goodsPicture4 = goodsPicture4;
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
