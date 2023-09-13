package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.movie.DAO.MovieDAO;
import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.Movie;
import com.fssa.movie.model.MovieCertificate;
import com.fssa.movie.model.MovieFormat;
import com.fssa.movie.model.MovieGenre;
import com.fssa.movie.model.MovieLanguage;
import com.fssa.movie.model.MovieStatus;
import com.fssa.movie.service.MovieService;
import com.fssa.movie.validatorException.MovieValidateException;
/**
 * Servlet implementation class AddMovieServlet
 */
@WebServlet("/AddMovieServlet")
public class AddMovieServlet extends HttpServlet {
	    
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	// Retrieve form data
	        String movieName = request.getParameter("movieName");
	        String languageStr = request.getParameter("language");
	        String formatStr = request.getParameter("format");
	        String certificateStr = request.getParameter("certificate");
	        String genreStr = request.getParameter("genre");
	        int durationHours = Integer.parseInt(request.getParameter("durationHours"));
	        int durationMinutes = Integer.parseInt(request.getParameter("durationMinutes"));
	        int durationSeconds = Integer.parseInt(request.getParameter("durationSeconds"));
	        String description = request.getParameter("description");
	        LocalDate releaseDate = LocalDate.parse(request.getParameter("releaseDate"));
	        String movieImage = request.getParameter("movieImage");
	        String movieBanner = request.getParameter("movieBanner");
	        String statusStr = request.getParameter("status");

	        // Convert String values to Enum types
	        MovieLanguage language = MovieLanguage.valueOf(languageStr);
	        MovieFormat format = MovieFormat.valueOf(formatStr);
	        MovieCertificate certificate = MovieCertificate.valueOf(certificateStr);
	        MovieGenre genre = MovieGenre.valueOf(genreStr);
	        MovieStatus status = MovieStatus.valueOf(statusStr);

	        // Create a Movie object
	        Movie movie = new Movie(movieName, language, format, certificate, genre,
	                durationHours, durationMinutes, durationSeconds, description, releaseDate,
	                movieImage, movieBanner, status);

	        try {
	            // Call the createMovie method from your DAO
	            boolean success = MovieService.addMovie(movie);
	            if (success){
	                // Redirect to a home page 
	                response.sendRedirect("MovieServlet");
	            } else {
	                // Redirect to an error page or display an error message
	                response.sendRedirect("addmovie.jsp");
	            }
	        }
	            catch (MovieValidateException | DAOExceptions e) {
					e.printStackTrace();
				}

	            
	    }
	    
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	doGet(req, resp);
	    }
	}

