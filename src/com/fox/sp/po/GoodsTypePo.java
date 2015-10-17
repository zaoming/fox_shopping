package com.fox.sp.po;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 
 * 商品类型Po
 * @author lyp
 *2012年9月18日13:43:48
 */
public class GoodsTypePo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6088253828213941404L;
	private int typeID;								//类别ID 主键
	private String typeName;						//类型名称
	private String typeDesc;						//类型描述
	private int isLeaf;                             //0 表示是叶子节点 1表示非叶子节点
    private int  parentID;                          //父节点ID
    private int  typeLevel;                         //所处级别
    private String  creater;                        //创建人
    private Date createDate;                        //创建时间
    private String  updater;                      	//修改人        
    private Date updateDate;                      	//修改时间    
    private String  else1;
    private String  else2;
    private List<GoodsTypePo> list;					//设置List，为了递归使用 
	public List<GoodsTypePo> getList() {
		return list;
	}
	public void setList(List<GoodsTypePo> list) {
		this.list = list;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getTypeDesc() {
		return typeDesc;
	}
	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}
	public int getIsLeaf() {
		return isLeaf;
	}
	public void setIsLeaf(int isLeaf) {
		this.isLeaf = isLeaf;
	}
	public int getParentID() {
		return parentID;
	}
	public void setParentID(int parentID) {
		this.parentID = parentID;
	}
	public int getTypeLevel() {
		return typeLevel;
	}
	public void setTypeLevel(int typeLevel) {
		this.typeLevel = typeLevel;
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
