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
import com.fssa.movie.validatorException.MovieValidateException;

/**
 * Servlet implementation class MovieServlet
 */
@WebServlet("/MovieServlet")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String HOME_PAGE = "index.jsp";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 
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
		    	RequestDispatcher dis = request.getRequestDispatcher(HOME_PAGE);
				 dis.forward(request, response);
		    }
		   
		}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		
		
	}

}
