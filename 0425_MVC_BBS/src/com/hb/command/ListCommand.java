package com.hb.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.BVO;
import com.hb.mybatis.DAO;
import com.hb.mybatis.Pageing;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		Pageing pvo = new Pageing();     
	      // 1. 전체 게시물의 수 구하기
	       pvo.setTotalRecord(DAO.getTotalCount()) ;
	       pvo.setTotalPage();
	       
	      // 3. 현재 페이지 구하기
	      // list.jsp는 처음 빼고 무조건 cPage를 받자
	      // cPage는 현재 페이지를 뜻한다.
	      // cPage가 null이면 그냥 nowPage = 1를 사용하다.
	        String cPage = request.getParameter("cPage");
	        if(cPage != null){
	        	pvo.setNowPage(Integer.parseInt(cPage));
	        }
	        
	        // 4. 현재 페이지에 따른 시작 번호와 끝번호를 구하자
	        pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
	        pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());

	        // 5. Map 만들어서 DB 처리하기
	        Map<String,Integer> map = new HashMap<>();
	        map.put("begin", pvo.getBegin());
	        map.put("end", pvo.getEnd());
	        
	        // 6. 현재 페이지를 이용한 블록의 시작번호와 끝번호
			 pvo.setBeginPage((int)(((pvo.getNowPage()-1)/(pvo.getPagePerBlock())*pvo.getPagePerBlock()+1)));
	    	 pvo.setEndPage(pvo.getBeginPage()+pvo.getPagePerBlock()-1);		   	 	      
	    	
	    	 // 주의사항 : endPage가 totalPage보다 클수가 있다.
		 	  if(pvo.getEndPage() > pvo.getTotalPage())
		 		  pvo.setEndPage(pvo.getTotalPage())  ;
	    	 
	    	 List<BVO> list = DAO.getList(map);
	    	 
	         request.setAttribute("list", list);
	         request.setAttribute("pvo", pvo);
	         request.setAttribute("cPage", cPage);
		return "list.jsp";
	}

}
