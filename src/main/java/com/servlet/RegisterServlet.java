package com.servlet;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
   public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
   {
	   String name=request.getParameter("name");
	   String email=request.getParameter("email");
	   String password=request.getParameter("password");
	   
	   
	   User u=new User(name,email,password);
	   UserDAO dao=new UserDAO(DbConnect.getConn());
	   boolean f=dao.userRegister(u);
	   HttpSession session = request.getSession();
	   if(f)
	   {
	   session.setAttribute("sucssMsg", "User Register successfully");
	   response.sendRedirect("register.jsp");
//		   System.out.println("user register successfully");
	   }
	   else
	   {
	   session.setAttribute("errorMsg", "something wrong on server");
		   response.sendRedirect("register.jsp");
//		   System.out.println("something wrong on server");		   
	   }
   }
}
