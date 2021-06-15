package com.dev.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.service.*;
import com.dev.vo.*;

public class OrderListController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service s = Service.getInstance();
		ArrayList<OrderVO> list = s.orderList();
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/orderListOutput.jsp");
		}
		
	}

