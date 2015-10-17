package com.fox.sp.po;

import java.util.Date;

public class MemberPo {
	private int memberID;                     //会员ID 主键
    private String memberName;                //会员登陆名称
    private String memberNiCheng;             //会员昵称
    private String memberRealName;            //会员真实姓名
    private String memberPassword;            //会员密码
    private String memberToPayPassword;       //会员支付密码
    private String memberEmail;               //会员邮箱
    private String memberTelePhone;		      //会员电话
    private String memberBirthday;            //会员生日
    private int memberSex;           		  //会员性别
    private String memberShenFen;             //会员身份
    private String memberShouRu;              //会员收入
    private int memberIntegration;            //会员积分，每消费一元得到一个积分(四舍五入)  
    private int memberGrade;         		  //会员等级，用积分判断等级，每200分为一级(不可四舍五入)
    private int memberAmount;                 //余额
    private int memberStatus;                 //会员状态 0代表冻结，1代表未冻结
    private Date createDate;                  //创建时间 
    private Date updteDate;                   //修改时间
    private String else1;
    private String else2;
    private String else3;
    
    
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNiCheng() {
		return memberNiCheng;
	}
	public void setMemberNiCheng(String memberNiCheng) {
		this.memberNiCheng = memberNiCheng;
	}
	public String getMemberRealName() {
		return memberRealName;
	}
	public void setMemberRealName(String memberRealName) {
		this.memberRealName = memberRealName;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberToPayPassword() {
		return memberToPayPassword;
	}
	public void setMemberToPayPassword(String memberToPayPassword) {
		this.memberToPayPassword = memberToPayPassword;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberTelePhone() {
		return memberTelePhone;
	}
	public void setMemberTelePhone(String memberTelePhone) {
		this.memberTelePhone = memberTelePhone;
	}
	public String getMemberBirthday() {
		return memberBirthday;
	}
	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}
	public int getMemberSex() {
		return memberSex;
	}
	public void setMemberSex(int memberSex) {
		this.memberSex = memberSex;
	}
	public String getMemberShenFen() {
		return memberShenFen;
	}
	public void setMemberShenFen(String memberShenFen) {
		this.memberShenFen = memberShenFen;
	}
	public String getMemberShouRu() {
		return memberShouRu;
	}
	public void setMemberShouRu(String memberShouRu) {
		this.memberShouRu = memberShouRu;
	}
	public int getMemberIntegration() {
		return memberIntegration;
	}
	public void setMemberIntegration(int memberIntegration) {
		this.memberIntegration = memberIntegration;
	}
	public int getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}
	public int getMemberAmount() {
		return memberAmount;
	}
	public void setMemberAmount(int memberAmount) {
		this.memberAmount = memberAmount;
	}
	public int getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(int memberStatus) {
		this.memberStatus = memberStatus;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdteDate() {
		return updteDate;
	}
	public void setUpdteDate(Date updteDate) {
		this.updteDate = updteDate;
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
