package com.fox.sp.dao;

import java.util.List;

import com.fox.sp.po.MemberPo;

public interface IMemberDao {
	public boolean regedit(Object...objects);								//注册
	public List<MemberPo> login(String memberName,String memberPwd);		//登陆
	public boolean update(int memberID,Object...objects);					//修改个人信息
	public boolean updatePwd(int memberID,String newPwd);		//修改密码
	public boolean forgetPwd(String question,String answer,int memberID);	//密码找回
	public boolean chongZhi(int memberID,double money);						//充值
	public boolean updateToPayPwd (int memberID,String newPwd);//修改支付密码
	public double getMemberAmount(int memberID);							//查询余额
	public boolean toPay(int memberID,String toPayPwd,double money);			//支付
	public int getMemberIntegration(int memberID);							//查询积分
	public boolean addMemberIntegration(int memberID,int integration);		//增加积分,添加积分的同时更新等级
	public int getMemberGrade(int memberID);								//查询等级
	public List<String> getMemberNameAll();									//查询已有的用户名
	public List<String> getMemberNiChengAll();								//查询已有的昵称
	public List<String> getMemberEmail();									//查询已有的邮箱
	public List<MemberPo> queryPersonal(int memberID);						//查询个人信息
	
}
