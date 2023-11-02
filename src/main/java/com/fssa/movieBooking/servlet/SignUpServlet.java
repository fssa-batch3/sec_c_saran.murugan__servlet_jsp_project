package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import com.fssa.movie.model.*;
import com.fssa.movie.service.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("UserName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String conPassword = request.getParameter("ConPassword");

        PrintWriter out = response.getWriter();
        

        User user = new User(name, email, password, phoneNumber);

        if (password.trim().equals(conPassword.trim())) {
            try {
                if (UserService.registerUser(user)) {
                    out.println("User Successfully Registered!");
                    response.sendRedirect(request.getContextPath() + "/Pages/log.jsp");
                } else {
                    out.println("Invalid Email And Password");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            out.println("Password and Confirm Password Doesn't Match");
        }
    }
}

