package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import com.DAO.UserDAOImpl;
import com.DAO.bookDAOImpl;
import com.DAO.cartDAOImpl;
import com.Database.DBconnection;
import com.entity.BookDtls;
import com.entity.Cart;

@WebServlet("/cartServlet1")
public class cartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//System.out.println(req.getParameter("bookId"));
		//System.out.println(req.getParameter("uId"));
		int bookId=Integer.parseInt(req.getParameter("bookId"));
		int uId=Integer.parseInt(req.getParameter("uId"));
		bookDAOImpl userDAO=new bookDAOImpl(DBconnection.getConnection());
		BookDtls book=userDAO.getBookById(bookId);
		
		Cart c=new Cart();
		c.setBookId(bookId);
		c.setuId(uId);
		c.setBookname(book.getBookname());
		c.setAuthorname(book.getAuthorname());
		c.setBookprice(Double.parseDouble(book.getBookprice()));
		c.setTotalprice(Double.parseDouble(book.getBookprice()));
		
		HttpSession session=req.getSession();
		
		
		cartDAOImpl cb=new cartDAOImpl(DBconnection.getConnection());
		boolean b=cb.addCart(c);
		if(b) {
			session.setAttribute("massage", "Book Add to Card");
			resp.sendRedirect("All_New_Book.jsp");
		}else{
			session.setAttribute("faliedmassage", "Book not Add to Card");
			resp.sendRedirect("All_New_Book.jsp");
		}
	}

}
