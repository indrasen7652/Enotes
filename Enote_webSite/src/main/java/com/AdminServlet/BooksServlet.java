package com.AdminServlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.bookDAOImpl;
import com.Database.DBconnection;
import com.entity.BookDtls;

@WebServlet("/adminAddBookServlet")
@MultipartConfig
public class BooksServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			 String bookname=req.getParameter("bookname");
			 String authorname=req.getParameter("authorname");
			 String bookprice=req.getParameter("bookprice");
			 String booktype=req.getParameter("booktype");
			 String bookstatus=req.getParameter("bookstatus");
			 Part part=req.getPart("bookimg");
			 String fileName=part.getSubmittedFileName();
			 BookDtls b=new BookDtls(bookname,authorname,bookprice,booktype,bookstatus,fileName,"Admin");
			 //System.out.println(b);
			 bookDAOImpl bookimpl=new bookDAOImpl(DBconnection.getConnection());

			 boolean i=bookimpl.addBook(b);
			 HttpSession session=req.getSession();
			 if(i) {
				 String strpath=getServletContext().getRealPath("")+"image";
				 File f=new File(strpath);
				 part.write(strpath+File.separator+fileName);
				 session.setAttribute("Msg", "Book Add SucessFully");
				 resp.sendRedirect("Admin/add_book.jsp");
			 }else {
				 session.setAttribute("FailMsg", "Something worg on server");
				 resp.sendRedirect("Admin/add_book.jsp");
			 }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
