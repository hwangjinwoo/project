package com.dev.service;

import java.util.*;

import com.dev.dao.*;
import com.dev.vo.*;

public class Service {
	private static Service service = new Service();
	   public DAO dao = DAO.getInstance();
	   private Service() {}
	   
   public static Service getInstance()
   {
      return service;
   }

   public boolean join(VO member) {
      return dao.join(member);
   }

   public boolean deleteId(String id, String pwd, String name) {
      return dao.deleteId(id, pwd, name);
   }

	public void olist(OrderVO order) {
		dao.olist(order);
		
	}
	public ArrayList<OrderVO> orderList() {
		ArrayList<OrderVO> list = dao.orderList();
		return list;
	}

	   
}
