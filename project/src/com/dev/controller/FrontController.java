package com.dev.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class FrontController extends HttpServlet{
	HashMap<String, Controller> map = null;
	@Override
	public void init() throws ServletException {
		map = new HashMap<String, Controller>();
		map.put("/join.do", new JoinController());
		map.put("/login.do", new LoginController());
		map.put("/findId.do", new FindIdController());
		map.put("/findPwd.do", new FindPasswordController());
		map.put("/deleteId.do", new DeleteIdController());
		map.put("/logOut.do", new LogOutServlet());
		map.put("/order.do", new OrderController());
		map.put("/orderList.do", new OrderListController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	     String contextP = req.getContextPath();
	     String url = req.getRequestURI();
	     String path = url.substring(contextP.length());
	     Controller subController = map.get(path);
	     subController.execute(req, resp);

	}
}
