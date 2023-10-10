package com.fssa.movieBooking.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.movie.service.*;
import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.*;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(false);
		User users = (User) session.getAttribute("currentuser");
		int userid = users.getUserid();
		System.out.print(users);
		UserService userService = new UserService();

		User userdata = null;
		try {
			userdata = userService.getUserById(userid);
		} catch (DAOExceptions e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("userData", userdata);

		System.out.println("logged in pasra" + userdata.toString());
		//response.sendRedirect("/bikerzzoneproject/Pages/Account/profile.jsp");
		 RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath()+"/Pages/profile.jsp");
		 dispatcher.forward(request, response);

	}}
