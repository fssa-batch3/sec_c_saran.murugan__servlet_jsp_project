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

import com.fssa.movie.model.Movie;
import com.fssa.movie.service.MovieService;

/**
 * Servlet implementation class AdminHomePage
 */
@WebServlet("/AdminHomePage")
public class AdminHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		  try {
		        List<Movie> movieList =  MovieService.readMovies();
		         request.setAttribute("movieList", movieList);
		        
		        }
		    catch (SQLException  e) {
		       
		        request.setAttribute("errorMessage", e.getMessage());
		        System.out.println(e.getMessage());
		        e.printStackTrace();
		    }
		    finally {
		    	RequestDispatcher dis = request.getRequestDispatcher("/Pages/admin/adminHome.jsp");
				 dis.forward(request, response);
		    }

	}

	
}
