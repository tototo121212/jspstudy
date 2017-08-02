package com.hb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

public class NeuCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setName(request.getParameter("name"));
		vo.setCompany(request.getParameter("company"));
		vo.setPone(request.getParameter("pone"));	
		System.out.println(vo);
		
		String chk = DAO.getchk(vo.getId());
		if(chk.equals("사용가능")){
			int res =DAO.getinsert(vo);
			if(res>0){
				request.setAttribute("result2",vo.getId());
			}	
		}
		
		return "neu_ok.jsp";
	}
}	
