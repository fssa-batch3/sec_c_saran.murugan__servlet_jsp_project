package com.fssa.movieBooking.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.letzshow.util.CustomLogger;
import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.User;
import com.fssa.movie.service.UserService;
import com.fssa.movie.validatorException.UserValidateException;

/**
 * Servlet implementation class LoginUserServlet
 */
@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserService userService = new UserService();

		try {
			User user = userService.LoginUser(email, password);
			int userid = user.getUserid();

			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("currentUser", user);
				session.setAttribute("email", email);
				session.setAttribute("userid", userid);
				System.out.println(userid);
				System.out.println(email);
				CustomLogger.info(user.toString());
				request.setAttribute("successMsg", "Logged in successfully");
				response.sendRedirect(request.getContextPath() + "/Pages/profile.jsp");
				CustomLogger.info("logged in successfully");
			} else {
				request.setAttribute("errorMsg", "Incorrect username or password");
				RequestDispatcher rd = request.getRequestDispatcher("/Pages/log.jsp");
				rd.forward(request, response);
				CustomLogger.info("User doesn't exist");
			}
		} catch (DAOExceptions e) {
			request.setAttribute("errorMsg", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("/Pages/log.jsp");
			rd.forward(request, response);
			CustomLogger.info(e.getMessage());
			e.printStackTrace();
		} catch (UserValidateException e) {
			// Handle UserValidateException
			e.printStackTrace();
		}
	}

}
