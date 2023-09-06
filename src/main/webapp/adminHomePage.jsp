<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="adminHomePage.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="wrapper">
        <!--Top menu -->

        <div class="section">
            <div class="top_navbar">
                <div class="hamburger">
                    <a href="#">
                        <i class="fas fa-bars"></i>
                    </a>
                </div>

                <div>
                    <h2 style="color: #edde3b; margin-left: 20px;"> LetsShow Admin page</h2>
                </div>
            </div>

      <div class="main">

                <div id="home_div" style="display: block;">

                    <h1 style="color: white;">Hello admin... welcome to our LetsShow admin page</h1>
                    
                    
                    
                    
                    
                    

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
                    <a href="#" id="add_movies">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">Add movies</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="update_movies">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">update movies</span>
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