<%@ page import="com.fssa.movie.model.User"%>
<!DOCTYPE html>

<head lan="eng">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../Assets/css/profilesettings.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
.movie_image{
    border-radius: 20px;
    margin-top: 20px;
    margin-left: 30px;
    width: 290px;
    height: 420px;    
}

</style>
</head>

<body>
	<header>
		<img src="../Assets/images/logo/logo.png" alt="logo5">
	</header>
	<form>
		<div class="main1">




			<div class="name-user">
				<i class="user-img fa-solid fa-user"></i> <input type="text"
					required id="name" value="${currentUser.username}" disabled>

				<div class="logout">
					<button type="button" id="logout">

						<a style="text-decoration: none; color: red"
							href="<%=request.getContextPath()%>/LogOutServlet">Logout</a>

					</button>
				</div>
			</div>

			<div class="email-num">

				<div class="phone-num">
					<h3>Phone:</h3>
					<input type="text" required id="number"
						value="${currentUser.number}" pattern="[0-9]{10,10}"
						inputmode="numeric" minlength="10" maxlength="10" disabled>
				</div>

				<div class="email">
					<h3>Email:</h3>
					<p id="email" style="color: white;">${currentUser.email}</p>
				</div>

			</div>

			<div class="edit">
				<button type="button" id="edit">Edit</button>
				<button type="submit" id="save">Save</button>
			</div>
	</form>

	<div class="Home-a-tag">
		<a href="<%=request.getContextPath()%>/MovieServlet">
			<h4>Go to home</h4>
		</a>
	</div>
	
	<%
	String email = (String) session.getAttribute("email");
	%>

	<input type="hidden" value="<%=email%>" id="currentUserEmail">

	</div>

	<div class="setting-option">
		<ul>
			<li id="booking-history-head">Booking history</li>


		</ul>
	</div>

	<div class="content-all">

		<div class="booking-history-div"></div>





		<div class="notification"></div>


	</div>


	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script>
	
	let curUserEmail = document.getElementById("currentUserEmail").value;



let filtered = [];

const url1 = "http://localhost:8080/movieBooking-web/GetBookingDetails";
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
        	  
      	    array.forEach((book_details) => {


      	    	console.log(book_details.email);
      	    	console.log(curUserEmail);


       const booking_history_div = document.querySelector(".booking-history-div");


        if (curUserEmail == book_details.email) {

        	
        	
            const booking_history_content = document.createElement("div");
            booking_history_content.setAttribute("class", "booking-history-div-content");
            booking_history_div.append(booking_history_content);

            const movie_image = document.createElement("img");
            movie_image.setAttribute("class", "movie_image")
            movie_image.setAttribute("src", book_details.movie_main_image);
            booking_history_content.append(movie_image);

            const ticket_detail_div = document.createElement("div");
            ticket_detail_div.setAttribute("class", "ticket-detail-div");
            booking_history_content.append(ticket_detail_div);

            const movie_name = document.createElement("h1");
            movie_name.setAttribute("class", "movie_name");
            movie_name.innerText = book_details.movie_title;
            ticket_detail_div.append(movie_name)


            const movie_language = document.createElement("h3");
            movie_language.innerText = book_details.language;
            ticket_detail_div.append(movie_language);

            const movie_frame = document.createElement("span");
            movie_frame.innerText = book_details.format;
            movie_language.append(movie_frame);

            const movie_day = document.createElement("h3");
            movie_day.innerText = book_details.showDay;
            ticket_detail_div.append(movie_day);

            const show_date = document.createElement("span");
            show_date.innerText = book_details.showDate;
            movie_day.append(show_date);

            const show_month = document.createElement("span");
            show_month.innerText = book_details.showMonth;
            movie_day.append(show_month);

            const hr_line = document.createElement("span");
            hr_line.innerText = "|";
            movie_day.append(hr_line);

            const show_time = document.createElement("span");
            show_time.innerText = book_details.showTime;
            movie_day.append(show_time);

            const theatre_name = document.createElement("h3");
            theatre_name.innerText = book_details.theatreName;
            ticket_detail_div.append(theatre_name);

            const qr_ticket_div = document.createElement("div");
            qr_ticket_div.setAttribute("class", "qr_ticket_div")
            ticket_detail_div.append(qr_ticket_div);

            const ticket_total_div = document.createElement("div")
            ticket_total_div.setAttribute("class", "ticket_total_div");
            qr_ticket_div.append(ticket_total_div);

            const tickets = document.createElement("h3");
            tickets.innerText = "tickets";
            ticket_total_div.append(tickets);

            const how_many_ticket = document.createElement("span");
            how_many_ticket.innerText = "3";
            tickets.prepend(how_many_ticket);

            const seats = document.createElement("h2");
            seats.innerText = "Seats";
            ticket_total_div.append(seats);

            const seat_names = document.createElement("span");
            seat_names.innerText = book_details.seat_name;
            seats.append(seat_names);

            const booking_id_div = document.createElement("h3");
            booking_id_div.innerText = "BOOKING ID:"
            ticket_total_div.append(booking_id_div);

            const booking_id = document.createElement("span");
            booking_id.innerText = book_details.bookingId;
            booking_id_div.append(booking_id)

            const qr_code = document.createElement("img");
            qr_code.setAttribute("src", "https://i.ibb.co/1ZpnGvG/lets-show-QR-code.png");
            qr_code.setAttribute("class", "qrcode")
            qr_ticket_div.append(qr_code)

            const hr = document.createElement("hr");
            ticket_detail_div.append(hr)
       


}

      	    })

          }
</script>


</body>

</html>