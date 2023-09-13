package com.fssa.movieBooking.servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.movie.model.Movie;
import com.fssa.movie.service.MovieService;
import com.fssa.movie.validatorException.MovieValidateException;

/**
 * Servlet implementation class SearchByName
 */
@WebServlet("/SearchByName")
public class SearchByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchByName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	    
		String search = request.getParameter("search");
		MovieService movies = new MovieService();
		
	    
		try {
			 List<Movie> movie = movies.showMovieByName(search);
				request.setAttribute("movieList", movie);

		} catch (MovieValidateException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	 } 
	
	    

	
}
