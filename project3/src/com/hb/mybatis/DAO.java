package com.hb.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import javafx.geometry.VPos;

// DB관련된 처리하는 클래스
public class DAO {
	private static SqlSession ss;

	private synchronized static SqlSession getSql(){
		if(ss==null){
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	
	public static int getTotalCount(){
		return getSql().selectOne("totalCount");
	}
	public static int getinsert(VO vo){
		int res = getSql().insert("insert",vo);
		ss.commit();
		return res;
	}
	public static String getlogin(VO vo){
		VO vo2 =  getSql().selectOne("login", vo);
		
		String res = "yes";
		if(vo2 == null || vo2.getId().equals("")){
			res = "no";
		}
		return res;
	}
	
	public static String getchk(String id){
		List<VO> one = getSql().selectList("chk", id);
		String res = "사용가능";
		
		if(one.size()>0){
			res = "사용 불가능";
		}
		return res;
	}
	
	public static List<IVO> getItemlist(){
		return getSql().selectList("itemlist");
	}

	public static IVO getoneItem(String idx){
		return getSql().selectOne("oneitem", idx);
		 
	}
	
	public static List<BVO> getBrandlist(){
		return getSql().selectList("brandlist");
	}
	public static List<CVO> getCostomlist(Map<String, Integer> map){
		return getSql().selectList("costomlist", map);
	}
	
	public static CVO getOnecostomList(String c_idx){
			return getSql().selectOne("onecostomlist",c_idx);
	}
	public static int getUpdate(CVO cvo){
		int result  = getSql().update("update",cvo);
		ss.commit();
		return result;
	}
	public static void getInsert(CVO cvo){
		getSql().insert("insert01",cvo);
		ss.commit();
	}
	
}


















