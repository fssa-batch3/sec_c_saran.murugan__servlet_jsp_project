<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.fssa.movie.model.Movie" %>
<%@ page import="com.fssa.movie.model.MovieStatus" %>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="adminHomePage.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>



.show-button {
    display: flex;
    margin-left: 40px;
}

.show-button button {
    margin-top: 40px;
    width: 150px;
    height: 40px;
    font-size: 15px;
    color: black;
    margin-left: 20px;
    background-color: #edde3b;
    border-radius: 10px;
    padding: 10px;
}

.show-button h2 {
    font-size: 25px;
    margin-left: 40px;
    margin-top: 45px;
    color: white;

}


.movie-list-container1{
    padding: 0 20px;
    width: 82%;
    margin-left: 1120px;
}

.movie-list-container2 {
    padding: 0 20px;
    width: 85%;
    margin-left: 115px;
}

.movie-list-container3 {
    padding: 0 20px;
    margin-left: 40px;
    width: 100%;
}

.movie-list {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    width: 1300px;
    margin-top: 40px;
    transform: translateX(0);
    transition: all 1s ease-in-out;

}

.movie-list-wrapper {
    gap: 10px;
    /* position: relative;
    overflow: hidden; */
}

.movie-list-item {
    margin-right: 30px;
    position: relative;

}

.movie-list-item:hover .movie-list-item-img {
    transform: scale(1.2);
    margin: 0 20px;
    opacity: 0.5;
}

.movie-list-item:hover .movie-list-item-title,
.movie-list-item:hover .movie-list-item-desc,
.movie-list-item:hover .movie-list-item-button {
    opacity: 1;
}

.movie-list-item-img {
    width: 270px;
    border-radius: 20px;
    height: 420px;
    object-fit: cover;
    transition: all 1s ease-in-out;

}

.movie-list-item-title {
    background-color: #ffffff1A;
    color: white;
    padding: 0 10px;
    font-size: 27px;
    font-weight: bold;
    position: absolute;
    top: 30%;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-desc {
    background-color: #ffffff1A;
    color: white;
    padding: 10px;
    font-size: 14px;
    position: absolute;
    top: 45%;
    left: 50px;
    width: 230px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-button {
    background-color: #edde3b;
    color: white;
    padding: 10px;
    border-radius: 10px;
    outline: none;
    border: none;
    cursor: pointer;
    position: absolute;
    bottom: 70px;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-button a {
    text-decoration: none;
    color: black;

}


.movie-list2 {
    display: flex;
    flex-wrap: wrap;
    margin-top: 50px;
    align-items: center;
    height: 500px;
    transform: translateX(0);
    transition: all 1s ease-in-out;

}

.movie-list-wrapper2 {
    gap: 10px;
    position: relative;
    overflow: hidden;
}

.movie-list-item2 {
    margin-right: 30px;
    position: relative;

}

.movie-list-item2:hover .movie-list-item-img2 {
    transform: scale(1.2);
    margin: 0 20px;
    opacity: 0.5;
}


.movie-list-item2:hover .movie-list-item-title2,
.movie-list-item2:hover .movie-list-item-desc2,
.movie-list-item2:hover .movie-list-item-button2 {
    opacity: 1;
}

.movie-list-item-img2 {
    width: 270px;
    border-radius: 20px;
    height: 420px;
    object-fit: cover;
    transition: all 1s ease-in-out;

}

.movie-list-item-title2 {
    background-color: #ffffff1A;
    color: white;
    padding: 0 10px;
    font-size: 28px;
    font-weight: bold;
    position: absolute;
    top: 30%;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-desc2 {
    background-color: #ffffff1A;
    color: white;
    padding: 10px;
    font-size: 14px;
    position: absolute;
    top: 45%;
    left: 50px;
    width: 210px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-button2 {
    background-color: #edde3b;
    color: white;
    padding: 10px;
    border-radius: 10px;
    outline: none;
    border: none;
    cursor: pointer;
    position: absolute;
    bottom: 60px;
    left: 50px;
    opacity: 0;
    transition: 1s all ease-in-out;
}

.movie-list-item-button2 a {
    text-decoration: none;
    color: black
}




</style>
</head>
<body>



      <div class="main">

                <div id="home_div" style="display: block;">

                    <h1 style="color: white; margin-left:50px;">Hello admin ! Welcome to our LetsShow admin page</h1>
                    
                    
                            
      <div class="show-button">
        <h2> Released Movies </h2>
        <button>Now showing</button>
      </div>
      
                    
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
        <button class="movie-list-item-button">Update</button>
        
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
                    

                </div>


                      
        <div class="sidebar">
            <!--profile image & text-->

            <div class="profile">
                <img src="https://1.bp.blogspot.com/-vhmWFWO2r8U/YLjr2A57toI/AAAAAAAACO4/0GBonlEZPmAiQW4uvkCTm5LvlJVd_-l_wCNcBGAsYHQ/s16000/team-1-2.jpg"
                    alt="profile_picture">
                <h3>Admin</h3>
                <!-- <p>Designer</p> -->
            </div>
            <!--menu item-->
            <!-- class="active" -->

            <ul>
                <li>
                    <a href="#" id="home">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="addmovie.jsp" id="add_movies">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item" >Add movies</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    
        <script>

        var hamburger = document.querySelector(".hamburger");
        hamburger.addEventListener("click", function () {
            document.querySelector("body").classList.toggle("active");
        })



        let home = document.getElementById("home");
        let home_div = document.getElementById("home_div");


        let add_movies = document.getElementById("add_movies");
        let add_movies_div = document.getElementById("add_movies_div");

        let update_movies = document.getElementById("update_movies");
        let update_movies_div = document.querySelector(".update_movies_div")

        home.addEventListener("click", function () {
            home_div.style.display = "block";
            add_movies_div.style.display = "none"
            update_movies_div.style.display = "none"
        })

        add_movies.addEventListener("click", function () {
            add_movies_div.style.display = "block";
            home_div.style.display = "none";
            update_movies_div.style.display = "none"
        });

        update_movies.addEventListener("click", function () {
            add_movies_div.style.display = "none";
            home_div.style.display = "none";
            update_movies_div.style.display = "block"
        })
        
        </script>

</body>
</html>