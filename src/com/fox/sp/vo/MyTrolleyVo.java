package com.fox.sp.vo;
/**
 * 购物车的vo
 * @author ldt
 *2012年9月22日13:38:47
 */
public class MyTrolleyVo {
	private int trolleyID;
	private int MemberID;
	private int GoodsID;
	private String else1;
	private String else2;
	private String else3;
	
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
	public int getTrolleyID() {
		return trolleyID;
	}
	public void setTrolleyID(int trolleyID) {
		this.trolleyID = trolleyID;
	}
	public int getMemberID() {
		return MemberID;
	}
	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	public int getGoodsID() {
		return GoodsID;
	}
	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}
	
}
