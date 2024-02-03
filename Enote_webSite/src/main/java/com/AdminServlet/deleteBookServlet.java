package com.AdminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.bookDAOImpl;
import com.Database.DBconnection;


@WebServlet("/deleteBookServlet")
public class deleteBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bookId=Integer.parseInt(req.getParameter("bookId"));
			//System.out.println(bookId);
			HttpSession session=req.getSession();
			bookDAOImpl dao=new bookDAOImpl(DBconnection.getConnection());
			boolean t=dao.deleteBook(bookId);
			if(t) {
				session.setAttribute("Success", "Books delete Successfully");
				resp.sendRedirect("Admin/all_book.jsp");
			}else {
				session.setAttribute("worg", "Something worg on server");
				resp.sendRedirect("Admin/all_book.jsp");
			}
		}catch(Exception e) {
			
		}
	}


}
