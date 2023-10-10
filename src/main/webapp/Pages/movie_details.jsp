<%@ page import="com.fssa.movie.service.MovieService"%>
<%@ page import="com.fssa.movie.model.*"%>
<%@ page import="com.fssa.movie.DAO.MovieDAO.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Details</title>
    <link rel="stylesheet" href="../Assets/css/movie_pages.css">
</head>

<body>

    <header>
        <img src="../../Assets/images/logo/logo.png" alt="Error image">
        <input type="search" id="search bar" placeholder="Search your movie">
        <a href="Pages/profile.html">
            <img src="../Assets/images/logo/Menu logo.png" alt="menu" id="menu">
        </a>
    </header>
     <%  
     int movieId = Integer.parseInt(request.getParameter("movie_id"));
     MovieService movieService = new MovieService();
     Movie movie = movieService.getMovieById(movieId);

      String imagePath = movie.getMovieBanner(); // Assuming movieId is available
      String divStyle = "background-image: url('" + imagePath + "');";
    %>
     

    <div class="mainimg"  style="<%= divStyle %>">
        <%
            try {
            	
                 movieService = new MovieService();
                Movie movie2 = movieService.getMovieById(movieId);

                // Check if the movie is found
                if (movie != null) {
                    // Use the properties of the Movie object as needed
                    String title = movie.getMovieName();
                    String language = movie.getLanguage().getValue();
                    String format = movie.getFormat().getValue();
                    String genre = movie.getGenre().getValue();
                    String certificate = movie.getCertificate().getValue();
                    String description = movie.getDescription();
                    int minute  = movie.getDurationMinutes();
                    // Add more properties as needed
                       int hours = minute / 60;
                       int minutes = minute % 60;
                          
 
        %>
                    <div class="time">

                        <h2><%= title %></h2>
                        <div class="lan">
                            <h3><%= language %></h3>
                            <h3><%= format %></h3>
                        </div>
                        <div class="time_date">
                            <p></p>
                            <p><%= certificate %></p>
                            <p><%=hours+"h "+minutes+"m" %></p>
                        </div>
                        <h4><%= genre %></h4>
                        
                        
                        <a class="button_a">
                        <button                           
                         onclick="location.href='movie_show_time.jsp?movie_id=<%=MovieService.getMovieIdByName(title)%>'">
                        Book now</button>
                        </a>
                    </div>
    </div>

    <div class="content">
        <div class="aboutmovie">
            <h2>About movie</h2>
            <p><%=description %></p>
        </div>
    </div>

        <%
                } else {
        %>
                    <p>Movie not found</p>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

  
    
</body>

</html>
