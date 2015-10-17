package com.fox.sp.wrapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.fox.sp.util.Wrapper;
import com.fox.sp.vo.MyTrolleyVo;
/**
 * 
 * @author ldt
 *2012年9月22日14:40:41
 */
public class TrolleyVoWrapper implements Wrapper<MyTrolleyVo> {

	public MyTrolleyVo getObject(ResultSet rs) {
		MyTrolleyVo mtv = new MyTrolleyVo();
		try {
			mtv.setTrolleyID(rs.getInt("trolleyID"));
			mtv.setGoodsID(rs.getInt("goodsID"));
			mtv.setMemberID(rs.getInt("memberID"));
			mtv.setElse1(rs.getString("else1"));
			mtv.setElse2(rs.getString("else2"));
			mtv.setElse3(rs.getString("else3"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mtv;
	}

}
