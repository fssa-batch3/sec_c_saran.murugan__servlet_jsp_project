<%@ page import="com.fssa.movie.service.MovieService"%>
<%@ page import="com.fssa.movie.model.*"%>
<%@ page import="com.fssa.movie.DAO.MovieDAO.*"%>
<!DOCTYPE html>

<head lan="eng">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Seat selecting</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="././Assets/css/seat.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Barlow&display=swap');

* {
	padding: 0px;
	margin: 0px;
}

html {
	font-family: 'Barlow', sans-serif;
}

body {
	background-color: black;
}

.banner {
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
}

.banner h1 {
	color: #edd605;
}

.screen {
	display: flex;
	align-items: center;
	margin-left: 40%;
	margin-top: 20px;
}

.screen h3 {
	font-family: 'Barlow', sans-serif;
}

#screen-arrow-logo {
	width: 30px;
	margin-left: 40px;
}
/* .screen img{
    width:30px;
    margin-left: ;
} */
.show-case {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.seat_disclaimer {
	display: flex;
	margin-left: 37%;
	gap: 20px;
}

.seat-prime {
	background-color: #fff;
	height: 28px;
	width: 35px;
	margin-top: 15px;
	margin: 3px;
	text-align: center;
	align-items: center;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}
/* .selected h5{
    color:white;
    text-align: center;
    font-family: 'Puritan', sans-serif;
    align-items: center;
} */
.seat-prime.selected {
	background-color: #edd605;
}

.seatcost-budget {
	color: white;
	font-size: 12px;
	margin-top: 40px;
	margin-left: 45%;
}
/* .seat-budget{
    background-color: #444451;
    height: 22px;
    width: 25px;
    margin: 3px;
    border-top-left-radius: 10px;
    margin-top: 15px;
    border-top-right-radius: 10px;
} */

/* #seat-prime-row1{
    display: flex;
    margin-left: 35%;
}
.seatprime-row2{
    display: flex;
    margin-left: 28%;
}
.seatcost-prime{
    color:white;
    font-size: 12px;
    margin-top: 20px;
    margin-left: 48%;
}
.seat-prime:nth-of-type(2){
    margin-right: 18px;
}
.seat-prime:nth-last-of-type(3){
    margin-right: 18px;
}
.seat-prime:not(.occupied):hover{
    cursor: pointer;
    transform: scale(1.2);
}
/* .showcase .seat-prime:not(.occupied):hover{
    cursor: pointer;
    transform: scale(1 );
} */
/* .occupied{
    background-color:  #444451 ;
    height: 28px;
    width: 35px;
    margin-top: 15px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
   
}
*/
.total_seatandcost {
	background-color: #ffffff;
	width: 80%;
	height: 80px;
	margin-top: 40px;
	margin-left: 10%;
}

h3 {
	color: white;
	margin-right: 20px;
}

.total_seatandcost {
	display: flex;
	justify-content: space-between;
}

.seat_total {
	display: flex;
}

.seat_info {
	display: flex;
	flex-direction: column;
}

.seat_total h3 {
	font-size: 20px;
	margin-left: 40px;
	margin-top: 15px;
	color: black;
}

.seat_total span {
	font-size: 25px;
	padding: 5px 8px;
	color: white;
	border: 1px #bd4747 solid;
	background-color: #bd4747;
	width: 35px;
	border-radius: 10px;
	text-align: center;
	height: 35px;
	margin-top: 8px;
}

.cost_total {
	display: flex;
	background-color: #f7f7f7;
	padding-left: 20px;
}

.cost_total h3 {
	color: black;
	margin-top: 15px;
	margin-right: 30px;
}

.cost_total span {
	font-size: 33px;
	margin-top: 7px;
	margin-right: 40px;
}

.date {
	display: flex;
	align-items: center;
	gap: 10px;
	font-size: 22px;
}

#theater_name {
	font-size: 24px;
}

#show_time {
	font-size: 20px;
}

.foot {
	display: flex;
}

a {
	background-color: #edd605;
	width: 150px;
	height: 40px;
	text-decoration: none;
	padding: 8px;
	font-size: 20px;
	border-radius: 10px;
	color: black;
	margin-top: 20px;
}

button {
	border-radius: 10px;
	margin-top: 50px;
	margin-left: 10px;
}

.occupied {
	/* color:black; */
	background-color: #535353
}

.banner {
	/* background-image:linear-gradient(to bottom, rgba(0,0,0,0), #151515); */
	height: 300px;
	width: 60%;
	background: fixed;
	background-repeat: no-repeat;
	margin-left: 20%;
}

.container {
	display: flex;
	flex-wrap: wrap;
	max-width: 900px; /* Adjust as needed */
}

.main {
	margin-left: 20%;
}

.seat {
	width: 35px;
	height: 35px;
	margin: 5px;
	text-align: center;
	align-items: center;
	border-radius: 5px;
	background-color: #ffffff;
	cursor: pointer;
}

.seat.selected {
	background-color: #edd605;
	cursor: not-allowed;
}

#selected-seats {
	color: white;
	display: flex;
	gap: 10px;
	font-size: 18px;
}

#seat-select {
	font-size: 25px;
	padding: 5px 8px;
	color: white;
	border: 1px #bd4747 solid;
	background-color: #bd4747;
	width: 35px;
	border-radius: 10px;
	text-align: center;
	height: 35px;
	margin-top: 10px;
}

#next-arrow {
	background-color: #edd605;
	width: 30px;
	height: 30px;
	padding: 10px;
	border-radius: 40px;
	position: relative;
	left: 10px;
	top: 50px;
}

/* #select-length{
        color: black;
        background-color: white; */
</style>

<body>

	<!-- header logo -->

	<!-- movie banner -->


	<%
	int movieId = Integer.parseInt(request.getParameter("movie_id"));
	MovieService movieService = new MovieService();
	Movie movie = movieService.getMovieById(movieId);

	String imagePath = movie.getMovieBanner();
	String divStyle = "background-image: url('" + imagePath + "');";
	%>

	<div class="banner" style="<%=divStyle%>"></div>

	<!-- screen text -->
	<div class="screen">
		<img src="../Assets/images/logo/arrow_.svg" id="screen-arrow-logo"
			alt="arrow">
		<h3>Screen on this way</h3>
	</div>

	<%
	String email = (String) session.getAttribute("email");
	%>

	<input type="hidden" value="<%=email%>" id="currentUserEmail">


	<div class="seat_disclaimer">

		<div class="show-case">
			<p class="seat-prime selected"></p>
			<label style="color: white;">SEAT SELECTED</label>
		</div>

		<div class="show-case">
			<p class="seat-prime"></p>
			<label style="color: white;">SEAT AVAILABLE</label>
		</div>
		<div class="show-case">
			<p class="seat-prime occupied"
				style="color: black; background-color: #535353"></p>
			<label style="color: white;">SEAT BOOKED</label>
		</div>

	</div>

	<div class="seatcost-budget">


		<h2 id="movie">130</h2>

	</div>


	<div class="main"></div>



	<!-- seat prime -->
	<div class="foot">
		<div class="total_seatandcost">

			<div class="seat_total">
				<div class="seat_info">
					<h3>SEAT INFO</h3>
					<!-- <p>Seats<span "></span></p> -->
				</div>
				<p id="selected-seats" style="color: black;"></p>
			</div>

			<div class="theatre_details">
				<h3 id="theater_name" style="color: black"></h3>
				<div class="date">
					<span id="show_time"></span> <span style="font-size: 18px;">|</span>
					<span id="show_date"></span> <span id="show_day"></span> <span
						id="show_month"></span>
				</div>

				<!-- <span id="count_details"></span> -->
			</div>

			<div class="cost_total">
				<h3>TOTAL(INR)</h3>
				<span id="total">0</span>

			</div>

		</div>

		<p id="seat-length" style="display: none;"></p>


		<img id="next-arrow" src="https://i.ibb.co/wSgdWYq/right-arrow.png"
			alt="logo">

	</div>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

	<script>
	
	let curUserEmail = document.getElementById("currentUserEmail").value;
	console.log(curUserEmail);
	

    const urlParams = new URLSearchParams(window.location.search);
    let movie_id = urlParams.get('movie_id');
    

        
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
              	
    

  array.forEach((show_list) => {
  	
      

	     
	     if (movie_id == show_list.movie_id) {
	  
	    	 
		     let numSeats = show_list.num_seats;

         // Create a container div to hold the seats
         
         let container = document.createElement("div");
         container.classList.add("container");

         let alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

         // Create the specified number of seat divs
         for (let i = 0; i < numSeats; i++) {
             let seat = document.createElement("div");
             seat.classList.add("seat");

             let row = alphabet[Math.floor(i / 15)];
             let seatNumber = (i % 15) + 1;
             console.log(row);

             seat.dataset.name = row+seatNumber;
             seat.textContent = row+""+seatNumber;

             container.appendChild(seat);
         }

         // Append the container to the body
         document.body.appendChild(container);
         let main = document.querySelector(".main");
         main.append(container);
	     }
         
        
        // let button= document.getElementById("button");

        //const banner = document.querySelector(".banner");
        //banner.style.backgroundImage = res.images.background_image;

        //const movie_name = document.createElement("h1");
       //movie_name.innerText = res.name.movie_name;
       //banner.append(movie_name);

         //let next_arrow = document.getElementById("next-arrow");

        // let a = document.createElement("a");
        // a.innerText = "submit";
        // a.setAttribute("href", "movie_payment_page.html?name=" + res["name"]["movie_name"]);
        // next_arrow.append(a);
        
        

        const users_booking = JSON.parse(localStorage.getItem("user_booking"));

        const theater_name = document.getElementById("theater_name");
        theater_name.innerHTML = users_booking[0].theatre_name;

        const show_time = document.getElementById("show_time");
        show_time.innerHTML = users_booking[0].show_time;

        const show_date = document.getElementById("show_date");
        show_date.innerHTML = users_booking[0].show_date

        const show_day = document.getElementById("show_day");
       show_day.innerHTML = users_booking[0].show_day

        const show_month = document.getElementById("show_month");
        show_month.innerHTML = users_booking[0].show_month;

        

        let booking_history = JSON.parse(localStorage.getItem("booking_history"));
        let profile = JSON.parse(localStorage.getItem("profile_details"));





            if(booking_history !== null){

        for (i = 0; i < booking_history.length; i++) {



            if (booking_history[i].movie_name == res.name.movie_name && theater_name.innerText == booking_history[i].theatre_name && show_time.innerText == booking_history[i].show_time && show_date.innerText == booking_history[i].show_date && show_day.innerText == booking_history[i].show_day && show_month.innerHTML == booking_history[i].show_month) {         
            seats.forEach((e)=>{
            booking_history[i].seat_name.split(',').find((el)=>{
                    if(el==e.innerText){
                        e.classList.add('occupied')
                        e.style.backgroundColor="grey"
                        e.style.pointerEvents = "none";
                    }

            })
        })
            }


        }
    }


        
        const container = document.querySelectorAll(".container");
        const selectedSeatsList = document.getElementById("selected-seats");
        const total = document.getElementById("total");
        const ticketprice = document.getElementById("movie").innerText;




        let selectedSeats = [];

        const seats = document.querySelectorAll(".seat");




        seats.forEach(seat => {
            seat.addEventListener("click", () => {
                if (seat.classList.contains("selected")) {
                    seat.classList.remove("selected");
                    selectedSeats = selectedSeats.filter(name => name !== seat.dataset.name);
                } else {
                    seat.classList.add("selected");
                    selectedSeats.push(seat.dataset.name);
                }
                updateSelectedSeatsList();
            });

        });



        function updateSelectedSeatsList() {
            selectedSeatsList.innerHTML = "";
            selectedSeats.forEach(seat => {
                const listItem = document.createElement("p");
                listItem.setAttribute("id", "seat-select")
                listItem.textContent = seat;
                selectedSeatsList.appendChild(listItem);
            });
            const selectseatcount = document.getElementById("seat-length").innerText = selectedSeats.length;
            total.innerText = selectseatcount * ticketprice;
        }

        function generateRandomAlphabetString(length) {
            let result = '';
            let num = 0
            const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            const charactersLength = characters.length;
            for (let i = 0; i < 5; i++) {
                result += characters.charAt(Math.floor(Math.random() * charactersLength));
            }
            for (let j = 0; j < 1; j++) {
                num += Math.floor(Math.random() * 100)
            }

            return result + num;
        }
        const randomString = generateRandomAlphabetString();

        function bookSeats() {
            if (selectedSeats.length === 0) {
                swal("Please select at least one seat!");
            } else if (selectedSeats.length == 11) {
                alert(" You have select 10 seats only!");
            }
            else {
                window.location.href = "movie_payment_page.jsp?movie_id="+movie_id;

                const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
                if (JSON.parse(localStorage.getItem("user_booking"))) {
                    user_booking.find(e => {
                        if (e.email == e.email) {
                            e.seat_names = selectedSeats
                            e.booking_id = randomString
                            e.seat_count = selectedSeats.length
                            e.seat_price = total.innerText
                            localStorage.setItem("user_booking", JSON.stringify(user_booking))

                        }
                        else {
                            const booking_data = {
                                "email": users.booking,
                                "show_day": day,
                                "show_date": date,
                                "show_month": month,
                                "theatre_name": theatre_name,
                                "seat_names": selectedSeats,
                                "booking_id": randomString,
                                "seat_count": selectedSeats.length,
                                "seat_price": total.innerText,
                                "show_time": show_time,
                            }
                            user_booking.push(booking_data)

                            // users.push(booking_data)

                            localStorage.setItem("user_booking", JSON.stringify(user_booking))
                        }
                    })
                }

                selectedSeats = [];

                seats.forEach(seat => seat.classList.remove("selected"));
                updateSelectedSeatsList();
            }
        }
        let arrow = document.querySelector("#next-arrow");
        arrow.addEventListener("click", function(){
        	bookSeats();
        })
        
	     
        }
  )
 
              
              }
        
           
            
            
        
              
    </script>

</body>

</html>