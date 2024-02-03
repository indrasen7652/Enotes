package com.AdminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.bookDAOImpl;
import com.Database.DBconnection;
import com.entity.BookDtls;

@WebServlet("/adminEditBookServlet")
public class EditBooksServlet extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {	
			int bookId=Integer.parseInt(req.getParameter("bookId"));
			//System.out.println(req.getParameter("bookId"));
			String bookname=req.getParameter("bookname");
			//System.out.println(bookname);
			String authorname=req.getParameter("authorname");
			//System.out.println(authorname);
			String bookprice=req.getParameter("bookprice");
			//System.out.println(bookprice);
			String bookstatus=req.getParameter("bookstatus");
			//System.out.println(bookstatus);
		
			BookDtls book=new BookDtls();
			book.setBookId(bookId);
			book.setBookname(bookname);
			book.setAuthorname(authorname);
			book.setBookprice(bookprice);
			book.setBookstatus(bookstatus);
			//System.out.println(book);
			HttpSession session=req.getSession();
			bookDAOImpl b=new bookDAOImpl(DBconnection.getConnection());
			boolean t=b.updateBook(book);
			if(t) {
				session.setAttribute("Success", "Books Update Successfully");
				resp.sendRedirect("Admin/all_book.jsp");
			}else {
				session.setAttribute("worg", "Something worg on server");
				resp.sendRedirect("Admin/all_book.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
