package com.hb.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.DAO;
import com.hb.mybatis.IVO;

public class ItemsCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<IVO> list = DAO.getItemlist();
		request.getSession().setAttribute("list", list);
		return "page02.jsp";		 
	}	
}
