package com.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.service.*;
import com.dev.vo.*;

public class OrderController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pname = request.getParameter("pname");
		String id = request.getParameter("id");
		int amount = Integer.parseInt(request.getParameter("amount"));
		
		OrderVO order = new OrderVO();
		order.setPname(pname);
		order.setId(id);
		order.setAmount(amount);
		
		Service s = Service.getInstance();
		s.olist(order);
		
		HttpUtil.forward(request, response, "/title.jsp");
		
		
	}

}
