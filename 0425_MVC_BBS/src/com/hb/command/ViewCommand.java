package com.hb.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.BVO;
import com.hb.mybatis.CVO;
import com.hb.mybatis.DAO;

public class ViewCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		
		   BVO bvo = DAO.getOneList(request.getParameter("b_idx"));
		   
		   // 히트수
		   int hit = Integer.parseInt(bvo.getHit())+1;
		   bvo.setHit(String.valueOf(hit));
		   
		   // 히트 업데이트
		   DAO.getHit(bvo);
		   
		   // 댓글 가져오기
		   List<CVO> c_list = DAO.getAns_List(request.getParameter("b_idx"));
		   request.setAttribute("c_list", c_list);
		   request.setAttribute("cPage", cPage);
		   
		   // 수정, 삭제를 위해서 bvo 저장
		   HttpSession session = request.getSession();
		   session.setAttribute("bvo", bvo);
		return "view.jsp";
	}
}
