package com.hb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.DAO;
import com.hb.mybatis.IVO;
import com.hb.mybatis.VO;

public class oneItemCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		
		System.out.println(idx);
		IVO ivo = DAO.getoneItem(idx);
		System.out.println(ivo);
		HttpSession session = request.getSession();
		session.setAttribute("ivo", ivo);
			
		return "";
	}

}
