package com.hb.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.BVO;
import com.hb.mybatis.DAO;

public class BrandCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<BVO> list = DAO.getBrandlist();
		request.getSession().setAttribute("brand", list);
		System.out.println(list);
		return "page03.jsp";
	}

}
