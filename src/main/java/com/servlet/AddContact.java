package com.servlet;

import java.io.IOException;

import com.conn.DbConnect;
import com.dao.ContactDAO;
//import com.dao.ContactDAO;
import com.entity.Contact;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addContact")
public class AddContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userId=Integer.parseInt(req.getParameter("userid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String about=req.getParameter("about");
		Contact c=new Contact(name,email,phno,about,userId);
		ContactDAO dao=new ContactDAO(DbConnect.getConn());
		HttpSession session=req.getSession();
		boolean f=dao.saveContact(c);
		if(f)
		{
			session.setAttribute("succMsg", "Your contact saved");
			resp.sendRedirect("addContact.jsp");
		}
		else
		{
			session.setAttribute("failedMsg", "Something wrong");
			resp.sendRedirect("addContact.jsp");
		}
//		System.out.println(userId+" "+name+" "+phno+" "+about);
	}

}
