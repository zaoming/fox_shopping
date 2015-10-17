package com.fox.sp.util;

public class fenye {
	private int page;			//当前页
	private int count;			//总条数
	private int pCount;			//每页的条数
	private int beginPage;		//开始页
	private int endPage;		//结束页
	private int nextPage;		//下一页
	private int lastPage;		//上一页	
	private int allCount;		//总页数
	
	public fenye(int pCount,int count,int currentPage){
								//count:总条数      currentPage:当前页	pCount:每页的条数
		this.pCount = pCount;
		this.count = count;
		this.page = currentPage;	
	}
	
	/*
	 * 得到最后一页,同时也是总页数
	 */
	public int getEndPage(){
		if(count < pCount){
			endPage = 1;
		}else{
			endPage = count%pCount == 0?count/pCount:(count/pCount)+1;
		}
		return endPage;
	}
	
	
	/*
	 * 得到下一页
	 */
	public int getNextPage(){
		if(page == getEndPage()){				//如果当前页是最后一页，则下一页也是最后一页
			nextPage = getEndPage();
			
		}else{
			nextPage = page+1;
		}
		return nextPage;
	}
	
	
	/*
	 * 得到上一页
	 */
	public int getLastPage(){					//如果当前页是第一页，则上一页也是第一页
		if(page == 1){
			lastPage = 1;
		}else{
			lastPage = page-1;
		}
		return lastPage;
	}
}
