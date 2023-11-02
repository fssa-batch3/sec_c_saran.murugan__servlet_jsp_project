package com.fssa.movieBooking.servlet;
import com.fssa.movie.DAO.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Servlet implementation class BookingHistory
 */
@WebServlet("/BookingHistory")
public class BookingHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookingHistory() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the request body as an input stream
        BufferedReader reader = request.getReader();
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            stringBuilder.append(line);
        }

        // Parse the JSON data from the request body
        JSONObject jsonObject = new JSONObject(stringBuilder.toString());
        String bookingId = jsonObject.getString("booking_id");
        
         String email =	jsonObject.getString("email");
		int seatCount = jsonObject.getInt("seat_count");
		
		JSONArray seatNamesArray = jsonObject.getJSONArray("seat_names");
		//String[] seatNames = new String[seatNamesArray.length()];
		String seatNames = "";
		for (int i = 0; i < seatNamesArray.length(); i++) {
			seatNames += seatNamesArray.getString(i)+",";
		}

		String seatPrice = jsonObject.getString("seat_price");
		String showDate = jsonObject.getString("show_date");
		String showDay = jsonObject.getString("show_day");
		String showMonth = jsonObject.getString("show_month");
		String showTime = jsonObject.getString("show_time");
		String theaterName = jsonObject.getString("theatre_name");
		String movieImage = jsonObject.getString("movie_main_image");
		String movieBanner = jsonObject.getString("movie_banner_image");
		String movieTitle = jsonObject.getString("movie_title");
		String language = jsonObject.getString("language");
		String format = jsonObject.getString("format");
		String genre = jsonObject.getString("genre");
		String  certificate= jsonObject.getString("certificate");
		String description = jsonObject.getString("description");

		
				

		 try {
			 BookingHistoryDAO.storeBookingDetails(bookingId, email, seatCount, seatNames,
			 seatPrice, showDate, showDay, showMonth, showTime, theaterName,movieImage,movieBanner,movieTitle,language,format,genre,certificate,description); } 
		 catch(SQLException e) {
			 e.printStackTrace();
			 }
			 
			 response.setContentType("text/html"); 
			 PrintWriter out = response.getWriter();
			 out.println("Booking details stored successfully!"); 
			 }
			
		
	}
	
	


