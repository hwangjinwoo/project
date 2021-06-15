package com.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class LogOutServlet implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      response.setContentType("text/html;charset=UTF-8");

	      PrintWriter out = response.getWriter();
	      HttpSession session = request.getSession(false);
	      if(session != null && session.getAttribute("id") != null) {
	         session.invalidate();
	         out.println("<script>alert('로그아웃 되었습니다.'); location.href='title.jsp';</script>");
	      }
	      else {
	         session.invalidate();
	         out.print("로그인 상태가 아닙니다.");
	      }
	      out.close();
	   }
	}
