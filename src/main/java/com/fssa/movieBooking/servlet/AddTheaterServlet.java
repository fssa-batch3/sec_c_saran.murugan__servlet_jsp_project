package com.fssa.movieBooking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.Theater;
import com.fssa.movie.service.TheaterService;
import com.fssa.movie.validatorException.TheaterValidateException;

/**
 * Servlet implementation class AddTheaterServlet
*/
@WebServlet("/AddTheaterServlet")
public class AddTheaterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTheaterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the form
    	
        String theaterName = request.getParameter("theaterName");
        String location = request.getParameter("location");
        String address = request.getParameter("address");
        int numSeats = Integer.parseInt(request.getParameter("numSeats"));
        int seatCost = Integer.parseInt(request.getParameter("seatCost"));

        // Create a Theater object with the retrieved data
        Theater theater = new Theater(theaterName, location, address, numSeats, seatCost);

        try {
            // Call the addTheater method from your service layer
            boolean success = TheaterService.addTheater(theater);
            if (success) {
                // Redirect to a success page
                response.sendRedirect("MovieServlet");
            } else {
                // Redirect to an error page or display an error message
                response.sendRedirect("addMovieShow.jsp");
            }
        } catch (TheaterValidateException | DAOExceptions e) {
            e.printStackTrace(); // Handle this exception properly in your application
            // Redirect to an error page or display an error message
            response.sendRedirect("errorPage.jsp");
        }
    }    
}
