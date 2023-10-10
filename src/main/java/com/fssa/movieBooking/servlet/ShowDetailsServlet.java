package com.fssa.movieBooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.movie.daoException.DAOExceptions;
import com.fssa.movie.model.MovieShow;
import com.fssa.movie.service.MovieShowService;

/**
 * Servlet implementation class ShowDetailsServlet
 */
@WebServlet("/ShowDetailsServlet")
public class ShowDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter out=response.getWriter();
    			MovieShowService sd = new MovieShowService();
    			try {
    				List<Map<String, String>> showList = sd.getMovieShowDetails();
    				//request.setAttribute("SparePartsDetails", partList );
    				JSONArray showDetailsList = new JSONArray(showList);
    				out.write(showDetailsList.toString());
    				
    			} catch (DAOExceptions e) {
    				e.printStackTrace();
    			}
    		}


    		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    			doGet(request, response);
    		}

    	}







