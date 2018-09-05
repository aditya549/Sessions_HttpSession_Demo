package com.Cubic.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Cubic.Dao.UserDAO;
import com.Cubic.userbean.UserBean;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserBean user=new UserBean();
		user.setName(req.getParameter("uname"));
		user.setPassword(req.getParameter("password"));
		UserDAO.login(user);
		boolean status=user.getIsvalid();
		if(status) {
			HttpSession session=req.getSession(true);
			session.setAttribute("usersession", user);
			resp.sendRedirect("profile1.jsp");
		}else
			resp.getWriter().println("Details are Invalid");
			//resp.sendRedirect("login.jsp");
	}
}
