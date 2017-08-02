package com.hb.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.PVO;

public class ItemPage implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		PVO pvo = new PVO();
		pvo.setP_item(request.getParameter("p_item"));
		pvo.setP_color(request.getParameter("p_color"));
		pvo.setP_yd(request.getParameter("p_yd"));
		pvo.setP_delivery(request.getParameter("p_delivery"));
		pvo.setP_tran_way(request.getParameter("p_tran_way"));
		
		System.out.println(pvo.toString());
		List<PVO> list = new ArrayList<>();
		if(session.getAttribute("list") != null){
			list = (List<PVO>)session.getAttribute("list");
		}
		list.add(pvo);		
		
		session.removeAttribute("list");
		session.setAttribute("list", list);
		
		return "";
	}
	
}
