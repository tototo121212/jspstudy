package com.hb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.CVO;
import com.hb.mybatis.DAO;

public class OnecostomListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String c_idx = request.getParameter("c_idx");
		String cPage = request.getParameter("cPage");
		
		CVO cvo = DAO.getOnecostomList(request.getParameter("c_idx"));
		
		request.getSession().setAttribute("cvo",cvo);
		request.getSession().setAttribute("cPage", cPage);
		
		return "page05.jsp";
	}

}
