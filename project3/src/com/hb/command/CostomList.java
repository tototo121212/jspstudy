package com.hb.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.CVO;
import com.hb.mybatis.DAO;
import com.hb.mybatis.pageing;

public class CostomList implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		pageing pvo = new pageing();
			pvo.setTotalRecord(DAO.getTotalCount());
			pvo.setTotalPage();
			
			String cPage =request.getParameter("cPage");
			if(cPage !=null){
				pvo.setNowPage(Integer.parseInt(cPage));
			}
			
			pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
			pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
			
			Map<String, Integer> map = new HashMap<>();
			map.put("begin", pvo.getBegin());
			map.put("end", pvo.getEnd());
			
			pvo.setBeginPage((int)(((pvo.getNowPage()-1)/(pvo.getPagePerBlock())*pvo.getPagePerBlock()+1)));
			pvo.setEndPage(pvo.getBeginPage()+pvo.getPagePerBlock()-1);
		
			if(pvo.getEndPage() > pvo.getTotalPage())
				pvo.setEndPage(pvo.getTotalPage());
			
			List<CVO> c_list = DAO.getCostomlist(map);
			
			request.getSession().setAttribute("c_list",c_list);
			request.getSession().setAttribute("pvo", pvo);
			request.getSession().setAttribute("cPage", cPage);
			System.out.println(c_list);
			return "page04.jsp";
	}
 
}
