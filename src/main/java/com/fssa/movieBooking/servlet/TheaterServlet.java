package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.movie.model.*;
import com.fssa.movie.model.Movie;
import com.fssa.movie.service.MovieService;
import com.fssa.movie.service.TheaterService;

/**
 * Servlet implementation class TheaterServlet
 */
@WebServlet("/TheaterServlet")
public class TheaterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TheaterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	private static final String HOME_PAGE = "/Pages/cinema_page.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 
		    try {
		        List<Theater> theaterList = TheaterService.readTheaters();
		         request.setAttribute("theaterList", theaterList);
		        
		        }
		    catch (SQLException  e) {
		       
		        request.setAttribute("errorMessage", e.getMessage());
		        System.out.println(e.getMessage());
		        e.printStackTrace();
		    }
		    finally {
		    	RequestDispatcher dis = request.getRequestDispatcher(HOME_PAGE);
				 dis.forward(request, response);
		    }
		   
		}



}
