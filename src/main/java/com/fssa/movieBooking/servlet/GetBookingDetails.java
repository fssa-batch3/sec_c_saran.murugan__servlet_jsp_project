package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import com.fssa.movie.service.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.Booking;
import com.fssa.movie.service.MovieShowService;

/**
 * Servlet implementation class GetBookingDetails
 */
@WebServlet("/GetBookingDetails")
public class GetBookingDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBookingDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter out=response.getWriter();
    			BookingService details = new BookingService();
    			try {
    				List<Booking> showList = details.getBookingDetails();
    				JSONArray showDetailsList = new JSONArray(showList);
    				out.write(showDetailsList.toString());
    				
    			} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    			
    		}



}
