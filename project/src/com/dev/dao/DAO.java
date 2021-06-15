package com.dev.dao;

import java.sql.*;
import java.util.*;

import com.dev.vo.*;

public class DAO {
	private static DAO dao = new DAO();
	   public DAO() {}
	   public static DAO getInstance() {
	      return dao;
	   }
	   public Connection connect()
	   {
	      Connection conn = null;
	      try
	      {
	         Class.forName("com.mysql.cj.jdbc.Driver");
	         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "jin0428");
	      }catch(Exception e){
	         System.out.println("MDAO : connect" + e);
	      }
	      return conn;
	   }
	   public void close(Connection conn, PreparedStatement pstmt)
	   {
	      if(pstmt != null)
	      {
	         try {
	            pstmt.close();
	         }catch(Exception e) {
	            System.out.println("Pstmt close error"+e);
	         }
	      }
	      if(conn != null)
	      {
	         try {
	            conn.close();
	         }catch(Exception e)
	         {
	            System.out.println("Conn close error"+e);
	         }
	      }
	   }
	   public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	   {
	      if(rs != null)
	      {
	         try {
	            rs.close();
	         }catch(Exception e) {
	            System.out.println("rs close error" + e);
	         }
	      }
	      close(conn, pstmt);
	   }
	   public String login(String id, String pwd) {
	      String name = null;
	      Connection conn = null;
	       PreparedStatement pstmt = null;
	       ResultSet rs = null;
	       
	       try {
	          conn = connect();
	          pstmt = conn.prepareStatement("select * from 회원 where id = ? and pwd = ?;");
	         pstmt.setString(1, id);
	         pstmt.setString(2, pwd);
	         rs = pstmt.executeQuery();
	         
	         if(rs.next()) {
	            name = rs.getString("name");
	         }
	         }catch(Exception e) {
	            System.out.println("login error" + e);
	         }finally {
	            close(conn, pstmt, rs);
	         }
	          return name;
	       }
	   public boolean join(VO member) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      int succ = 0;
	      try
	      {
	         conn = connect();
	         pstmt = conn.prepareStatement("insert into 회원 values(?,?,?,?,?);");
	         pstmt.setString(1, member.getId());
	         pstmt.setString(2, member.getPwd());
	         pstmt.setString(3, member.getName());
	         pstmt.setString(4, member.getEmail());
	         pstmt.setString(5, member.getPhone());
	         succ = pstmt.executeUpdate();
	         
	         if(succ != 0) {
	            return true;
	         }
	      }catch(Exception e)
	      {
	         System.out.println("DAO : join" + e);
	      }finally {
	         close(conn, pstmt);
	      }
	      return false;
	   }
	   public int confirmID(VO member) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      int result = -1;

	      String sql = "select pwd from 회원 where id=?;";

	      try {
	         conn = connect(); // DB 연결 시도
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, member.getId());

	         rs = pstmt.executeQuery();

	         if (rs.next()) { // 조회 결과가 있으면 id가 존재한다는 의미
	            result = 1;
	         } else {
	            // 조회한 결과가 값이 없으므로 id가 존재하지 않음.
	            result = -1;
	         }

	      } catch(Exception e)
	      {
	         System.out.println("DAO : confirm" + e);
	      }finally {
	         close(conn, pstmt, rs);
	      }
	      return result;
	   }
	   public String findId(String name, String email) {
	      String id = null;
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String sql = "select id from 회원 where name = ? and email = ?;";
	      try {
	         conn = connect(); // DB 연결 시도
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, name);
	         pstmt.setString(2, email);

	         rs = pstmt.executeQuery();
	         
	         if(rs.next())
	            id = rs.getString("member.id");
	      }catch(Exception e)
	      {
	         System.out.println("DAO : findId" + e);
	      }finally {
	         close(conn, pstmt, rs);
	      }
	      return id;
	   }
	   public String findPwd(String id, String name, String email) {
	      String pwd = null;
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String sql = "select pwd from 회원 where id = ? and name = ? and email = ?;";
	      try {
	         conn = connect(); // DB 연결 시도
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, id);
	         pstmt.setString(2, name);
	         pstmt.setString(3, email);

	         rs = pstmt.executeQuery();
	         
	         if(rs.next())
	            pwd = rs.getString("member.pwd");
	      }catch(Exception e)
	      {
	         System.out.println("DAO : findPwd" + e);
	      }finally {
	         close(conn, pstmt, rs);
	      }
	      return pwd;
	   }
	   public boolean deleteId(String id, String pwd, String name) {
	      boolean result = false;
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try
	      {
	         conn = connect();
	         pstmt = conn.prepareStatement("delete from 회원 where id = ? and pwd = ? and name = ?;");
	         pstmt.setString(1, id);
	         pstmt.setString(2, pwd);
	         pstmt.setString(3, name);
	         int re = pstmt.executeUpdate();
	         if(re>0) result = true;
	      }catch(Exception e)
	      {
	         System.out.println("DAO : deleteId" + e);
	      }finally
	      {
	         close(conn, pstmt, rs);
	      }
	      return result;
	   }
	public void olist(OrderVO order) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into 주문(pname, id, amount) values(?, ?, ?);");
			pstmt.setString(1, order.getPname());
			pstmt.setString(2, order.getId());
			pstmt.setInt(3, order.getAmount());
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			 System.out.println("DAO : order" + e);
		} finally
	    {
	         close(conn, pstmt);
	    }
		
		
	}
	public ArrayList<OrderVO> orderList() {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		OrderVO order = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from 주문;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				order = new OrderVO();
				order.setOnum(rs.getInt(1));
				order.setPname(rs.getString(2));
				order.setId(rs.getString(3));
				order.setAmount(rs.getInt(4));
				order.setOdate(rs.getTimestamp(5));
				list.add(order);
			}
		} catch (Exception ex) {
			System.out.print("오류 발생 : " + ex);
		} finally {
			close(conn, pstmt, rs);
		}
		return list;
	}

}

