package com.hb.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Ajax_LibCommand;
import com.hb.model.Command;

@WebServlet("/MyController07")
public class MyController07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyController07() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = response.getWriter();

		String result = null;
		Command comm  = new Ajax_LibCommand();
		result = comm.exec(request, response);
		out.println(result);
		
	}
}
