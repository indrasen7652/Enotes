package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.Database.DBconnection;
import com.entity.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImpl userDAO=new UserDAOImpl(DBconnection.getConnection());
			HttpSession session=req.getSession();	
		String email=req.getParameter("email");
		String password=req.getParameter("password");
			if(email.equals("indrasensingh7652@gmail.com")&&password.equals("indrasen@7652")) {
				User us=new User();
				us.setName("Admin");
				session.setAttribute("user", us);
				resp.sendRedirect("Admin/home.jsp");
			}else {
				User us=userDAO.userLogin(email, password);
				//System.out.println(us);
				if(us!=null){
					session.setAttribute("user", us);
					//System.out.println(session.getAttribute("user"));
					resp.sendRedirect("index.jsp");
				}else {
					session.setAttribute("failed", "User Not Ragistration");
					resp.sendRedirect("login.jsp");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
