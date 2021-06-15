package com.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.dao.*;
import com.dev.vo.*;

public class JoinController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      String id = request.getParameter("id");
	      String pwd = request.getParameter("pwd");
	      String name = request.getParameter("name");
	      String email = request.getParameter("email");
	      String phone = request.getParameter("phone");
	      
	      VO member = new VO();
	      member.setId(id);
	      member.setPwd(pwd);
	      member.setName(name);
	      member.setEmail(email);
	      member.setPhone(phone);

	      
	      DAO dao = new DAO();
	      boolean result = dao.join(member);
	      
	      //service
	      //Service service = Service.getInstance();
	      //service.join(member);
	      
	      response.setContentType("text/html; charset=UTF-8");
	      //String msg = null;
	      PrintWriter out = response.getWriter();
	      
	      if(result == false) {
	         out.println("<script>alert('이미 존재하는 아이디입니다!'); location.href='join.jsp';</script>");
	         out.flush();
	      }else {
	         out.println("<script>alert('회원가입에 성공하셨습니다!'); location.href='login.jsp';</script>");
	         out.flush();
	      }
	      //out.println("<script>alert('X'); location.href='join.jsp';</script>");
	      //out.flush();
	      
	      request.setAttribute("id", id);
	      //HttpUtil.forward(request, response, "login.jsp");
	   }
	}