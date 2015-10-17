package com.fox.sp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;


public class DbUtil<T> {
	private String driver;			//驱动路径
	private String url;				
	private String user;			//用户名
	private String pass;			//密码
	private Connection con = null;	//Connection对象
	private PreparedStatement pstat = null;		
	
	public DbUtil(){
		ResourceBundle rb = ResourceBundle.getBundle("db");//绑定名为db的properties文件
		driver = rb.getString("driver");
		url = rb.getString("url");
		user = rb.getString("user");
		pass = rb.getString("pass");
	}
	
	public Connection getConnection(){	//获得Connection对象
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public PreparedStatement getPreparedStatement(String sql){	//获得PreparedStatement对象
		try {
			pstat = getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstat;
	}
	
	public List<T> Query(Wrapper<T> wrapper,String sql,Object...args){
														//查询，用到泛型T
		ResultSet rs = null;
		List<T> list = new ArrayList<T>();
		try {
			pstat = getPreparedStatement(sql);
			for (int i = 0; i < args.length; i++) {
				pstat.setObject(i+1, args[i]);
			}
			rs = pstat.executeQuery();
			while(rs.next()){
				T t = wrapper.getObject(rs);
				list.add(t);
			}
		} catch (SQLException e) {
			System.out.println("///失败");
		}
		
		
		return list;
	}
	
	
	public boolean update(String sql,Object...args){	//增删改操作
		int res = 0;
		con = getConnection();
		if(con != null){
			try {
				pstat = getPreparedStatement(sql);
				for (int i = 0; i < args.length; i++) {
					pstat.setObject(i+1, args[i]);
					//System.out.println("db-------"+args[i]);
				}
				
				res = pstat.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(res != 0){
			return true;
		}
		return false;
	}
	
	public void close(){				//关闭连接
		try {
			if(pstat != null){
				pstat.close();
			}
			if(con != null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/*
	 * lyp的DB开始
	 * 
	 * 
	 */
	public int queryCount(String sql,Object...objects){
		ResultSet rs = null;
		int count = 0;
		con = getConnection();
		if(con != null){
			
			try {
				pstat = getPreparedStatement(sql);
				for (int i = 0; i < objects.length; i++) {
					System.out.println((i+1)+"-----------"+objects[i]);
					pstat.setObject(i+1, objects[i]);
					
				}
				rs = pstat.executeQuery();
				while(rs.next()){
					count = rs.getInt(1);
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return count;
	}
	
	/*
	 * 查询已存在的数据
	 */
	public List<String> querys(String sql,String leixing){
		ResultSet rs = null;
		con = getConnection();
		List<String> list = new ArrayList<String>();
		if(con != null){
			try {
				pstat = getPreparedStatement(sql);
				
				rs = pstat.executeQuery();
				while(rs.next()){
					String member = rs.getString(leixing);
					list.add(member);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	public List<Double> queryd(String sql,String leixing){
		ResultSet rs = null;
		con = getConnection();
		List<Double> list = new ArrayList<Double>();
		if(con != null){
			try {
				pstat = getPreparedStatement(sql);
				
				rs = pstat.executeQuery();
				while(rs.next()){
					Double member = rs.getDouble(leixing);
					list.add(member);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	/**
	 * 李德涛加
	 */
	
	public List<Double> doPrice(String sql,Object...args){
		ResultSet rs = null;
		List<Double> list = new ArrayList<Double>();
		try {
			pstat = getPreparedStatement(sql);
			for (int i = 0; i < args.length; i++) {
				pstat.setObject(i+1, args[i]);
			}
			rs = pstat.executeQuery();
			while(rs.next()){
				double goodsPrice = rs.getDouble("GoodsPrice");
				double goodsCoun = rs.getDouble("GoodsCoun");
				list.add(goodsPrice*goodsCoun);
			}
		} catch (SQLException e) {
			System.out.println("///失败");
		}
		
		
		return list;
	}
}
