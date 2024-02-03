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

@WebServlet("/ragisrater")
public class RagisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//resp.setContentType("text/html");
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String password=req.getParameter("password");
		String check=req.getParameter("check");
		
		User u=new User();
		u.setName(name);
		u.setEmailid(email);
		u.setPhoneno(phone);
		u.setPassword(password);
		HttpSession session=req.getSession();
		if(check!=null) {
		UserDAOImpl userDAO=new UserDAOImpl(DBconnection.getConnection());
		boolean i=userDAO.userRagistraction(u);	
		if(i) {
							//System.out.println("User Succesfull");
				session.setAttribute("succesfull", "User Ragistration Sucefully");
				resp.sendRedirect("ragistration.jsp");
			}else{
				
				//System.out.println("NO");
				session.setAttribute("failed", "User Not Ragistrated");
				resp.sendRedirect("ragistration.jsp");
			}
		}else {
			//System.out.println("Please Data Accept the all Conditation");
			session.setAttribute("accept", "Please Data Accept the all Conditation");
			resp.sendRedirect("ragistration.jsp");
		}
		//System.out.println(name+" "+email+" "+phone+" "+password+" "+check);
	}
	
}
