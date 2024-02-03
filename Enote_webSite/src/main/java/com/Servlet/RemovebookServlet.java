package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAOImpl;
import com.Database.DBconnection;

@WebServlet("/removebookServlet")
public class RemovebookServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bookId=Integer.parseInt(req.getParameter("bookId"));
		int uId=Integer.parseInt(req.getParameter("uId"));
		//System.out.println(bookId);
		cartDAOImpl dao=new cartDAOImpl(DBconnection.getConnection());
		boolean t=dao.deleteCartItem(bookId,uId);
		HttpSession session=req.getSession();
		if(t) {
			session.setAttribute("successfull", "Rmove Item");
			resp.sendRedirect("cart.jsp");
		}else {
			session.setAttribute("failed", "Server Error");
			resp.sendRedirect("cart.jsp");
		}
	}	
}
