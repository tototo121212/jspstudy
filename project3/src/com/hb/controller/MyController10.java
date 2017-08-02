package com.hb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.command.Command;
import com.hb.command.Update_okCommand;

@WebServlet("/MyController10")
public class MyController10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyController10() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		System.out.println(11111);
		Command comm = new Update_okCommand();
		System.out.println(22222);
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
