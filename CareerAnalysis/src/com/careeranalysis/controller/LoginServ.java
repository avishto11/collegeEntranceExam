package com.careeranalysis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careeranalysis.dao.UserDao;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int[] arr = UserDao.loginUser(email, password);
		HttpSession session = request.getSession();
		if(arr[0] == 1) {
			if(arr[1] == 1) {
				session.setAttribute("uname", email);
				RequestDispatcher rd = request.getRequestDispatcher("UserPage.jsp");
				rd.forward(request, response);
			}
			if(arr[1] == 2) {
				
				RequestDispatcher rd = request.getRequestDispatcher("AdminPage.jsp");
				rd.forward(request, response);
			}
		}else {
			session.invalidate();
			request.setAttribute("error_msg", "Login Credentials Given Wrong");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
