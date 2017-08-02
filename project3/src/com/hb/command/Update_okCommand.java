package com.hb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.CVO;
import com.hb.mybatis.DAO;

public class Update_okCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CVO cvo = new CVO();
		cvo.setC_idx(request.getParameter("c_idx"));
		cvo.setC_subject(request.getParameter("c_subject"));
		cvo.setC_brand(request.getParameter("c_brand"));
		cvo.setC_employee(request.getParameter("c_employee"));
		cvo.setC_content(request.getParameter("c_content"));
		cvo.setC_data(request.getParameter("c_data"));
		
		
		DAO.getUpdate(cvo);
		System.out.println(cvo.toString());
		return "MyController08?c_idx="+cvo.getC_idx();
	}
	
}
