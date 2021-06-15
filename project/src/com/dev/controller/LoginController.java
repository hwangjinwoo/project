package com.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.dao.*;

public class LoginController implements Controller{
	String aId = "admin";
	String aPwd = "1234";
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
	      DAO dao = new DAO();
	      String name = dao.login(id, pwd);
	      String path = null;
	      String msg = null;
	      HttpSession session = request.getSession();
	      
	      if(id.equals(aId) && pwd.equals(aPwd))
	      {
	         session.setAttribute("id", id);
	         path = "/admin.jsp";
	      }
	      else if(name != null)
	      {
	         session.setAttribute("id", id);
	         path = "/title.jsp";
	      }
	      else
	      {
	         path = "login.jsp";
	         msg = "no id";
	      }
	      request.setAttribute("msg", msg);
	      HttpUtil.forward(request, response, path);
	   }
	}