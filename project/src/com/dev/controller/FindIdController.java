package com.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.dao.*;

public class FindIdController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String name = request.getParameter("name");
	      String email = request.getParameter("email");
	      
	      DAO dao = new DAO();
	      String id = dao.findId(name, email);
	      response.setContentType("text/html;charset=UTF-8");
	      request.setAttribute("id", id);
	      PrintWriter out = response.getWriter();
	      
	      if(id == null) {
	         out.println("<script>alert('아이디가 존재하지 않습니다!'); location.href='findId.jsp';</script>");
	         out.flush();
	      }
	      HttpUtil.forward(request, response, "/result/findIdOutput.jsp");
	   }
	}