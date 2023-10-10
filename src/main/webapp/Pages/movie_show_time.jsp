<%@ page import="com.fssa.movie.service.MovieService"%>
<%@ page import="com.fssa.movie.model.*"%>
<%@ page import="com.fssa.movie.DAO.MovieDAO.*"%>

<!DOCTYPE html>

<head lan="eng">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>show timings</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../Assets/css/timings.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
.banner {
	/* background-image:url(../../Assets/images/Vaathi/vaathi-about.jpg); */
	background-size: 100%;
	height: 500px;
}

@import
	url('https://fonts.googleapis.com/css2?family=Barlow&display=swap');

* {
	margin: 0px;
	padding: 0px;
}

body {
	background-color: black;
}

html {
	font-family: 'Barlow', sans-serif;
}

header {
	background-color: #edde3b;
	width: 100%;
	height: 80px;
	display: flex;
	align-items: center;
	padding: 0px;
}

header img {
	width: 110px;
	margin-bottom: 20px;
	bottom: 20px;
	height: 110px;
	margin-left: 70px;
}

.banner {
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
	padding-left: 30px;
	padding-bottom: 20px;
}

.banner h1 {
	color: #edde3b;
	font-size: 50px;
}

.banner h3 {
	color: white;
	font-size: 30px;
}

.banner h4 {
	color: white;
	font-size: 25px;
}

.timeandcast  h4 {
	color: white;
	text-decoration: none;
}

.timeandcast {
	display: flex;
	align-items: center;
	gap: 10px;
}

.main {
	background-color: black;
	height: 100%;
	padding-top: px;
}

.show_date {
	background-color: black;
	display: flex;
	margin-left: 25%;
}

.sunday_show {
	padding: 30px;
	border: 1px solid;
	display: flex;
	flex-direction: column;
	cursor: pointer;
}

.sunday_show:hover {
	background-color: #202020;
}

.a_day {
	color: black;
	text-decoration: none;
}

.a_day:focus {
	background-color: #333333;
}

.sunday_show h2 {
	color: white;
}

.theatre_show1 {
	padding-top: 20px;
}

.theatre_show2 {
	padding-top: 20px;
}

.theatre_show3 {
	padding-top: 20px;
}

.theatre_show4 {
	padding-top: 20px;
}

.theatre_show5 {
	padding-top: 20px;
}

.theatre_show6 {
	padding-top: 20px;
}

.theatre_show7 {
	padding-top: 20px;
}

#day1_shows {
	display: block;
}

#day2_shows {
	display: none;
}

#day3_shows {
	display: none;
}

#day4_shows {
	display: none;
}

#day5_shows {
	display: none;
}

#day6_shows {
	display: none;
}

#day7_shows {
	display: none;
}

.show_times {
	background-color: black;
}

.theatre_name {
	color: white;
	margin-left: 50px;
}

#theatre_showtime {
	display: flex;
	gap: 20px;
	margin-left: 50px;
	margin-top: 30px;
}

#theatre_showtime a, p {
	text-decoration: none;
	color: #edd605;
	background-color: rgba(21, 19, 10, 255);
	border: 1px solid rgba(21, 19, 10, 255);
	padding: 8px;
	border-radius: 10px;
	cursor: pointer;
}

hr {
	border: 1px solid white;
	width: 95%;
	margin-left: 3%;
	margin-top: 40px;
}
</style>
</head>

<body>

	<header>
		<img src="https://i.ibb.co/LPg6ns5/logo.png" alt="logo">
	</header>
	<% 
     int movieId = Integer.parseInt(request.getParameter("movie_id"));
     MovieService movieService = new MovieService();
     Movie movie = movieService.getMovieById(movieId);

     String imagePath = movie.getMovieBanner(); 
     String divStyle = "background-image: url('" + imagePath + "');";
     
    %>




	<div class="banner" style="<%=divStyle%>">
		<%
		
		   String title;
            try {
            	
                 movieService = new MovieService();
                 Movie movie2 = movieService.getMovieById(movieId);

                // Check if the movie is found
                if (movie2 != null) {
                // Use the properties of the Movie object as needed
                     title = movie2.getMovieName();
                    String language = movie2.getLanguage().getValue();
                    String format = movie2.getFormat().getValue();
                    String genre = movie2.getGenre().getValue();
                    String certificate = movie2.getCertificate().getValue();
                    String description = movie2.getDescription();
        %>
		<h1 id="movie_name"><%=title%></h1>

		<div class="timeandcast">
			<h4><%= genre%></h4>
			<h4></h4>
			<h4><%=format%></h4>
			<h4></h4>
			<h4><%=language%></h4>
			<h4></h4>
			<h4></h4>
			<h4></h4>
			<h4></h4>

		</div>
	</div>

	<% 
	String email = (String) session.getAttribute("email");
	%>
	
	<input type="hidden" value="<%=email%>" id="currentUserEmail">

	<div class="main">
	
	

		<h3 id="IndiaTime"
			style="color: white; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"></h3>

		<div class="show_date">

			<a class="a_day" href="#">
				<div class="sunday_show" autoclick id="show_day1">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day2">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day3">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day4">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day5">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day6">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a> <a class="a_day" href="#">
				<div class="sunday_show" id="show_day7">
					<h2>
						<span id="day"></span> <br> <span id="date"></span> <br>
						<span id="month"></span>
					</h2>
				</div>
			</a>

		</div>




		<div class="theatres_lists">

			<div class="theatre_show1" id="day1_shows"></div>

			<div class="theatre_show2" id="day2_shows"></div>

			<div class="theatre_show3" id="day3_shows"></div>

			<div class="theatre_show4" id="day4_shows"></div>

			<div class="theatre_show5" id="day5_shows"></div>

			<div class="theatre_show6" id="day6_shows"></div>

			<div class="theatre_show7" id="day7_shows"></div>

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
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script>
	
	let curUserEmail = document.getElementById("currentUserEmail").value;
	console.log(curUserEmail);
	
    swal("Please select the show date !");

    const urlParams = new URLSearchParams(window.location.search);
    let movie_id = urlParams.get('movie_id');
    
    console.log(movie_id)
    
    //THEATRE SECTION STARTS//

    const day = "";
    const month = "";
    const date = "";
    const day_div = document.querySelectorAll("#day");
    const month_div = document.querySelectorAll("#month")
    const date_div = document.querySelectorAll("#date")
    const show_sunday = document.querySelectorAll(".sunday_show");

    const span = date_div[0].innerText

    let curr_day;
    let curr_month;
    let curr_date;
    
    

    const today = new Date();
    let cnt = 0;

    for (let i = 0; i < date_div.length; i++) {

      // for (i = 0; i < 6; i++) {

      const firstDay = new Date(today.setDate(today.getDate() + cnt));
      curr_day = firstDay.toDateString().slice(0, 3);
      curr_date = firstDay.toDateString().slice(8, 10);
      curr_month = firstDay.toDateString().slice(4, 7);


      day_div[i].append(curr_day);
      month_div[i].append(curr_month)
      date_div[i].append(curr_date);

      const span = date_div[0].innerText
      
      cnt = 1

    }
      
      
      let filtered = [];
      
      const url1 = "http://localhost:8080/movieBooking-web/ShowDetailsServlet";
              axios.get(url1)
                .then(function (response) {
                  console.log(response.data)  
                  

          filtered = response.data;
          
        productCard(filtered);
      
                })
                .catch(function (error) {
                  // handle error
                  console.log(error);
                })

              

      

      function productCard(array=[]) {
                	
      

    array.forEach((theatre_list) => {
    	
    	
    	
    	function formatTime(timeString) {
    	    let hours = parseInt(timeString.split(':')[0]);
    	    let minutes = timeString.split(':')[1];
    	    let period = (hours >= 12) ? 'PM' : 'AM';

    	    if (hours > 12) {
    	        hours -= 12;
    	    }

    	    return hours + ':' + minutes + ' ' + period;
    	}

    	let formattedTime = formatTime(theatre_list.show_time);
    	console.log(formattedTime); 

    	
     
    	
    	
    	function formatDate(dateString) {
    	    const options = { weekday: 'long', month: 'long', day: 'numeric' };
    	    const date = new Date(dateString);
    	    const formattedDate = new Intl.DateTimeFormat('en-US', options).format(date);
    	    const [dayOfWeek, monthAndDay] = formattedDate.split(', ');
    	    const [month, day] = monthAndDay.split(' ');
    	    
    	    return { dayOfWeek, month, formattedDate };
    	}

    	let formattedDate = formatDate(theatre_list.show_date);
         
    	const week = formattedDate.dayOfWeek.slice(0, 3);
    	const month = formattedDate.month.slice(0, 3); 
	    const date = formattedDate.formattedDate.slice(21, 23);


    	 if (movie_id == theatre_list.movie_id) {


        const theatre_show1 = document.querySelector(".theatre_show1");
   
        const theatre_det = document.createElement("div");
        theatre_det.setAttribute("class", "theatre_det")
        theatre_show1.append(theatre_det);


        const title = document.createElement("h2");
        title.setAttribute("class", "theatre_name")
        title.innerText = theatre_list.theater_name;
        theatre_det.append(title);


        const showtime = document.createElement("div");
        showtime.setAttribute("class", "show_time1");
        showtime.setAttribute("id", "theatre_showtime");
        theatre_det.append(showtime);

        
        const name1 = document.getElementById("movie_name").innerText;
        console.log(movie_id+"data");

         const a = document.createElement("a");
         a.innerText =formattedTime;
         a.setAttribute("class", "show_times1");
         a.setAttribute("href", "movie_seats.jsp?movie_id="+movie_id);
         showtime.append(a);




        const hr = document.createElement("hr");
        theatre_det.append(hr);

    	 }
    	 
    	 const para2 = document.querySelectorAll(".show_time1 a")
         const theatre_dev = document.querySelectorAll(".theatre_det");

         // const users = JSON.parse(localStorage.getItem("profile_details"));

         para2.forEach((e) => {
           e.addEventListener("click", (el) => {
             // console.log(el.target.children[0].children[0].innerText + el.target.children[0].children[1].innerText + el.target.children[0].children[2].innerText);
             const show_time = el.target.innerText;

             const theatre_name = el.target.parentElement.parentElement.children[0].innerText;

             const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
             if (JSON.parse(localStorage.getItem("user_booking"))) {
               user_booking.find(e => {
            	   
               
                 if (e.curUserEmail == e.email) {
                   e.theatre_name = theatre_name
                   e.show_time = show_time
                   localStorage.setItem("user_booking", JSON.stringify(user_booking))
                 }
                 else {
                   const booking_data = {
                     "email": users.booking,
                     "show_day": day,
                     "show_date": date,
                     "show_month": month,
                   }
                   user_booking.push(booking_data)

                   users.push(booking_data)
                   localStorage.setItem("user_booking", JSON.stringify(user_booking))
                 }
               })
             }

           })
         });

    });

    
    }
    // const day1_shows = document.getElementById("day1_shows");
    // const day2_shows = document.getElementById("day2_shows");
     //const day3_shows = document.getElementById("day3_shows");
    // const day4_shows = document.getElementById("day4_shows");
     //const day5_shows = document.getElementById("day5_shows");
    // const day6_shows = document.getElementById("day6_shows");
    // const day7_shows = document.getElementById("day7_shows");

    const show_day1 = document.querySelectorAll(".sunday_show");

    const show_day_div1 = document.getElementById("show_day1")
    const day1_shows = document.getElementById("day1_shows");

    const show_day_div2 = document.getElementById("show_day2");
    const day2_shows = document.getElementById("day2_shows");

    const show_day_div3 = document.getElementById("show_day3");
    const day3_shows = document.getElementById("day3_shows");

    const show_day_div4 = document.getElementById("show_day4");
    const day4_shows = document.getElementById("day4_shows");

    const show_day_div5 = document.getElementById("show_day5");
    const day5_shows = document.getElementById("day5_shows");

    const show_day_div6 = document.getElementById("show_day6");
    const day6_shows = document.getElementById("day6_shows");

    const show_day_div7 = document.getElementById("show_day7");
    const day7_shows = document.getElementById("day7_shows");

    
    show_day1.forEach((e) => {
      e.addEventListener("click", (el) => {
        // day1_shows.style.display = "block";
        // day2_shows.style.display = "none";
        // day3_shows.style.display = "none";
        // day4_shows.style.display = "none";
        // day5_shows.style.display = "none";
        // day6_shows.style.display = "none";
        // day7_shows.style.display = "none";
        // console.log(el.target.children[0].children[2].innerText)

        const users = JSON.parse(localStorage.getItem("profile_details"));

        console.log(el.target.children[0].children[0].innerText);
        //const day = el.target.children[0].children[0].innerText;
        const date = el.target.children[0].children[2].innerText;
        const month = el.target.children[0].children[4].innerText;

        const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []

        if (JSON.parse(localStorage.getItem("user_booking"))) {
          user_booking.find((e) => {
            if (e.curUserEmail == curUserEmail) {
              e.curUserEmail= curUserEmail
              e.show_day = day
              e.show_date = date
              e.show_month = month
              // user_booking.push(booking_date)

              localStorage.setItem("user_booking", JSON.stringify(user_booking))
            }
            else {
              const booking_date = {
                "email": curUserEmail,
                "show_day": day,
                "show_date": date,
                "show_month": month,
              }
              user_booking.push(booking_date)

              localStorage.setItem("user_booking", JSON.stringify(user_booking))
            }
          })

        }
        else {

          const booking_date = {
            "email": users.email,
            "show_day": day,
            "show_date": date,
            "show_month": month,
          }
          user_booking.push(booking_date)

          localStorage.setItem("user_booking", JSON.stringify(user_booking))
        }

      });
    })
    

    show_day_div1.addEventListener("click", () => {
      day1_shows.style.display = "block";
      day2_shows.style.display = "none";
      day3_shows.style.display = "none";
      day4_shows.style.display = "none";
      day5_shows.style.display = "none";
      day6_shows.style.display = "none";
      day7_shows.style.display = "none";

    });

    show_day_div2.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "block";
      day3_shows.style.display = "none";
      day4_shows.style.display = "none";
      day5_shows.style.display = "none";
      day6_shows.style.display = "none";
      day7_shows.style.display = "none";

    });

    show_day_div3.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "none";
      day3_shows.style.display = "block";
      day4_shows.style.display = "none";
      day5_shows.style.display = "none";
      day6_shows.style.display = "none";
      day7_shows.style.display = "none";

    });

    show_day_div4.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "none";
      day3_shows.style.display = "none";
      day4_shows.style.display = "block";
      day5_shows.style.display = "none";
      day6_shows.style.display = "none";
      day7_shows.style.display = "none";

    });

    show_day_div5.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "none";
      day3_shows.style.display = "none";
      day4_shows.style.display = "none";
      day5_shows.style.display = "block";
      day6_shows.style.display = "none";
      day7_shows.style.display = "none";

    });

    show_day_div6.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "none";
      day3_shows.style.display = "none";
      day4_shows.style.display = "none";
      day5_shows.style.display = "none";
      day6_shows.style.display = "block";
      day7_shows.style.display = "none";

    });

    show_day_div7.addEventListener("click", () => {
      day1_shows.style.display = "none";
      day2_shows.style.display = "none";
      day3_shows.style.display = "none";
      day4_shows.style.display = "none";
      day5_shows.style.display = "none";
      day6_shows.style.display = "none";
      day7_shows.style.display = "block";

    });
    
  </script>
</body>

</html>