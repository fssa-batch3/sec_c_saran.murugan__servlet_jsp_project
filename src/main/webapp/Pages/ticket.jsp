<%@ page import="com.fssa.movie.service.MovieService"%>
<%@ page import="com.fssa.movie.model.*"%>
<%@ page import="com.fssa.movie.DAO.MovieDAO.*"%>
<!DOCTYPE html>

<head>

    <title>Ticket Confirmation</title>

    <style>
 @import url('https://fonts.googleapis.com/css2?family=Barlow&display=swap');
*{
    
    margin: 0px;
}
body{
    background-color:black;
    font-family: 'Barlow', sans-serif;  
}
header{
    background-color:#edd605;
    height: 100px;
    display: flex;
    align-items: center;
    padding: 0px;
    
}
header h1{
    font-size: 40px;
    margin-left: 410px;

}

header img{
    width: 120px;
    margin-bottom:20px;
    bottom: 20px;
    height: 130px;
}
.all{
    display: flex;
}
.main{
    background-color:#333333;
    width: 50%;
    height: 690px;
    border-radius: 10px;
    margin-left: 25%;
    margin-top: 40px;
    padding-top: 70px;
}
.showtime {
    display: flex;
    justify-content:space-evenly;
}
.showtime img{
    width:180px;
    border-radius: 10px;
}
.showname{
    color: white;
    font-size: 30px;
    margin-top: 40px;
    display: flex;
    flex-direction: column;
    justify-content:space-between;
}
hr{
    color:white solid;
    width:450px;
}
.qrcode{
    display: flex;
}
.qrcode img{
    width:200px;
    margin-left: 30px;
    margin-top: 70px;
}
.main2{
    display: flex;
}
a button{
    background-color:#edd605;
    border-color: black;
    border-radius: 10px;
    padding: 15px;
    font-size: 20px;
    color: black;
   margin-top: 730px;
   margin-left: 20px;
}
/* .showtime{
    background-color:white;
    width:50%;
    height: 500px;
    margin-left: 25%8
} */
#seat_names_div{
    font-size: 26px;
    margin-left: 100px;
    margin-top:10px ;
    width:300px;
    color: white;
}
#booking_id_div{
    font-size: 30px;
    margin-left: 90px;
    margin-top: 20px;
    color: white;
}
.seat_cab_total{
    font-size: 30px;
    color: white;
    margin-top: 140px;
    margin-left: 130px;
}
#seat_count{
    margin-left: 10px;
}
#booking-history-button{
   cursor:pointer;
    background-color: #edd605;
    color: black;
    width:100px;
    height: 40px;
    border-radius: 10px;
    margin-top: 53%;
}</style>
</head>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body>
    <header>

        <h1>Ticket confirmation</h1>

    </header>

    <div class="all">
        <div class="main">
        
        
        
		<%
		int movieId = Integer.parseInt(request.getParameter("movie_id"));
		MovieService movieService = new MovieService();
		Movie movie = movieService.getMovieById(movieId);

		String imagePath = movie.getMovieBanner();
		%>

		<aside>

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
					String frame = movie2.getFormat().getValue();
					String mainImage = movie2.getMovieImage();
			%>
        

            <div class="showtime">
               
               <img src="<%=mainImage%>">

                <div class="showname">

                    <h2 id="movie_name"><%=title%></h2>
                    <p>
                        <span id="language"><%=language %></span>
                        <span id="frame"><%=frame %></span>
                    </p>
                    <p>
                        <span id="show_day"></span>
                        <span id="show_date"></span>
                        <span id="show_month"></span>
                        | <span id="show_time"></span>
                    </p>
                    <p id="theater_name"></p>
                    <hr>
                    
                    <!-- <P>Audi 3</P> -->
                </div>
            </div>

            <div class="qrcode">

                <div class="seat_div">
                    
                      <h3 class="seat_cab_total">Tickets<span id="seat_count"></span>
                         </h3>
                

                    <p id="seat_names_div">
                        Classic -<span id="seat_names"></span>
                    </p>

                    <p id="booking_id_div">
                        BOOKING ID :<span id="booking_id"></span>
                    </p>

                </div>

                <img src="https://i.ibb.co/k23qZ7Y/lets-show-QR-code.png" alt="qr code">

            </div>

        </div>
        
            <button id="booking-history-button">Okay</button>
        

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
    </div>

    <script>
        
        swal("Success!", "Your ticket is booked click okay to navigate home page. Thank you!");

        const movie_list = JSON.parse(localStorage.getItem("show_movie_details"))

       
        const show_time = document.querySelector(".showtime");

        const show_information = document.querySelector(".show_name")


        
        const users_booking = JSON.parse(localStorage.getItem("user_booking"));


       
        const show_day = document.getElementById("show_day");
        show_day.innerHTML = users_booking[0].show_day;

        const show_date = document.getElementById("show_date");
        show_date.innerHTML = users_booking[0].show_date;

        const show_month = document.getElementById("show_month");
        show_month.innerHTML = users_booking[0].show_month;

        const show_times = document.getElementById("show_time");
        show_times.innerHTML = users_booking[0].show_time;

        const theater_name = document.getElementById("theater_name");
        theater_name.innerText = users_booking[0].theatre_name;


        const seat_name = document.getElementById("seat_names");
        seat_name.innerText = users_booking[0].seat_names;


        const ticket_count=document.getElementById("seat_count");
        ticket_count.innerText=users_booking[0].seat_count
        

        const booking_id = document.getElementById("booking_id");
        booking_id.innerText = users_booking[0].booking_id;


        let booking_history_button = document.getElementById("booking-history-button");
        
        booking_history_button.setAttribute("href","<%=request.getContextPath()%>/MovieServlet");






    </script>
</body>

</htnl>