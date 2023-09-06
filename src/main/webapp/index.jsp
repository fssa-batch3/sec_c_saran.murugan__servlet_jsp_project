<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.fssa.movie.model.Movie" %>
<%@ page import="com.fssa.movie.model.MovieStatus" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

<link rel="stylesheet" type="text/css" href="index.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Lets show website</title>
</head>

<body>
  <!-- Heading content -->

  <main>
    <div class="all-content">
      <header>

        <img src="https://i.ibb.co/LPg6ns5/logo.png" alt="logo5">


        <input type="search" id="search" placeholder="Search your movie">

        <p style="font-size: 18px;">Chennai</p>

        <div class="buttons">
          <a href="Pages/log.html">
            <button id="log-in-button">Log in </button>
          </a>
          <br>


        </div>


        <button class="burger" onclick="toggleMenu()"></button>          


        <div class="background"></div>
        <div class="menu">

          <nav class="profile-a">
                      <a id="a-menu">Admin</a>
            <a id="a-menu">Cinemas</a>
            <a id="a-menu">About us </a>
            <a id="a-menu">Help and support</a>
          </nav>
        </div>

      </header>

      <!--  --> website banner -->
      <div class="image-slider">
        <figure>
          <img src="https://s01.sgp1.cdn.digitaloceanspaces.com/article/192648-vyonqxexux-1690533039.jpeg" alt="image not found" id="banner1">
          <img
            src="https://www.wallsnapy.com/img_gallery/leo-movie-thalapathi-dance-wallpaper-hd-1080p-5693021.jpg"
            alt="image not found">
          <img src="https://www.hindustantimes.com/ht-img/img/2023/08/19/550x309/jailer_box_office_tamil_nadu_1692416829885_1692416841022.jpg" alt="image not found">
          <img src="https://assets.telegraphindia.com/telegraph/2023/Jul/1688186295_dhanush.jpg" alt="image not found" id="banner1">
        </figure>

      </div> 

      <!-- upcoming movie /review anchor tag -->
      <div class="various" style="display: none;">
        <!-- <a href="Pages/upcomingmovies.html">Upcoming movies</a> -->
        <a href="Pages/OTT/ottindex.html">OTT</a>
        <a href="Pages/movie_reviews.html">Movie reviews</a>
      </div>

        
      <div class="show-button">
        <h2> Released Movies </h2>
        <button>Now showing</button>
      </div>
      
       <%
        String errorMessage = request.getParameter("errorMessage");
        if (errorMessage != null) {
        %>
        <h3><%=errorMessage%></h3>
        <%
        }
        %>
         
         
      
 
    <div class="movie-list-container">
  <div class="movie-list-wrapper">
    <%
    Movie movie=new Movie();
    
    List<Movie> movieList = (List<Movie>) request.getAttribute("movieList");
    if (movieList != null && !movieList.isEmpty() ) {
    %>
    <div class="movie-list">
      <%
      for (Movie ans : movieList) {
    	  if(ans.getStatus().equals(MovieStatus.CURRENTLY_RUNNING)){
    	  %>
      <div class="movie-list-item">
        <img class="movie-list-item-img" src="<%= ans.getMovieImage() %>" alt="<%= ans.getMovieName() %>">
        <span class="movie-list-item-title"><%=ans.getMovieName()%></span>
        <p class="movie-list-item-desc"><%= ans.getDescription() %></p>
        <button class="movie-list-item-button">Book now</button>
      </div>%
      <%
    	  }
      }
      %>
    </div>
    <%
    }
    
    else{
    	 %>
    	
    	<h1>empty</h1>
    	 <%
    }
    %>
  </div>
</div>
        
        <div class="show-button">
        <h2>Upcoming movies</h2>
        <button>Soon</button>
      </div>
        
       <div class="movie-list-container2">
  <div class="movie-list-wrapper2">
    <%
 
    if (movieList != null && !movieList.isEmpty() ) {
    %>
    <div class="movie-list2">
      <%
      for (Movie ans : movieList) {
    	  if(ans.getStatus().equals(MovieStatus.UPCOMING)){
    	  %>
      <div class="movie-list-item2">
        <img class="movie-list-item-img" src="<%= ans.getMovieImage() %>" alt="<%= ans.getMovieName() %>">
      </div>
      <%
    	  }
      }
      %>
    </div>
    <%
    }
    
    else{
    	 %>
    	
    	<h1>empty</h1>
    	 <%
    }
    %>
  </div>
</div>
        
        
  



      <footer>
        <!-- footer of my page -->
        <img src="Assets/images/logo/logo.png" alt="logo6" id="logo1">
        <div class="logos">
          <a href="https://www.facebook.com/">
            <img src="https://cdn-icons-png.flaticon.com/512/2168/2168281.png" alt="logo1" id="logo2"></a>
          <a href="https://www.instagram.com/">
            <img src="https://cdn-icons-png.flaticon.com/512/3670/3670274.png" alt="logo2" id="logo2">
          </a>
          <a href="https://twitter.com/i/flow/login">
            <img src="https://cdn-icons-png.flaticon.com/512/1384/1384017.png" alt="logo3" id="logo2"></a>
          <a href="https://www.linkedin.com/">
            <img src="https://cdn-icons-png.flaticon.com/512/1384/1384014.png" alt="logo4" id="logo2"></a>
        </div>

        <div class="about_copy_right">
          <p>Copyright 2023 @google images and banner.All rights reserved.
            The content and images used on this site are copy right protected and copyrights vests with the respestive
            owners. The usage of the content and images on this website is intended to promote the works and no
            endorsement
            of the artist shall be implied. Unauthorized use is prohibited and punishable by law
          </p>
        </div>
      </footer>

    </div>


  </main>


<script>

  const toggleMenu = () =>
  document.body.classList.toggle("open");

</script>

  </body>

</html>