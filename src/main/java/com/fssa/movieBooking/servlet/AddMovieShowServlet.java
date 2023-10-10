package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.*;
import com.fssa.movie.service.*;
import com.fssa.movie.validatorException.MovieShowValidateException;

/**
 * Servlet implementation class AddMovieShowServlet
 */
@WebServlet("/AddMovieShowServlet")
public class AddMovieShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMovieShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the form
        int movieId = Integer.parseInt(request.getParameter("movieId"));
        int theaterId = Integer.parseInt(request.getParameter("theaterId"));
        LocalTime showTime = LocalTime.parse(request.getParameter("showTime"));
        LocalDate showDate = LocalDate.parse(request.getParameter("showDate"));

        // Create a MovieShow object with the retrieved data
        MovieShow movieShow = new MovieShow(movieId, theaterId, showTime, showDate);

        try {
            // Call the addShow method from your service layer
            boolean success = MovieShowService.createShowTime(movieShow);
            if (success) {
                // Redirect to a success page
                response.sendRedirect("MovieServlet");
            } else {
                // Redirect to an error page or display an error message
                response.sendRedirect("addMovieShow.jsp");
            }
        } catch (MovieShowValidateException | DAOExceptions e) {
            e.printStackTrace(); // Handle this exception properly in your application
            // Redirect to an error page or display an error message
            response.sendRedirect("errorPage.jsp");
        }
    }
}
