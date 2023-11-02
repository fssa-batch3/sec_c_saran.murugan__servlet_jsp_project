<%@ page import="com.fssa.movie.service.MovieService"%>
<%@ page import="com.fssa.movie.model.*"%>
<%@ page import="com.fssa.movie.DAO.MovieDAO.*"%>
<!DOCTYPE html>
<html lang="eng">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Payment page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../Assets/css/payment_page.css">


</head>

<body>
	
	<div class="all-content">

		<div class="profile-payment">

			<div class="profile-contents">
				<h2>YOUR CONTACT DETAILS</h2>

				<div class="profile-details">

					<div class="name">
						<label>YOUR NAME</label> <br>
						<!-- <input type="text" id="name" placeholder="ENTER YOUR NAME"> -->
						<h3 id="name"></h3>
					</div>

					<div class="email">
						<label>E-MAIL</label> <br>
						<!-- <input type="text" id="email"placeholder="ENTER YOUR E-MAIL"> -->
						<h3 id="email"></h3>
					</div>

					<div class="phone">
						<label>PHONE</label> <br>
						<!-- <input type="text" id="phone" placeholder="ENTER YOUR PHONE"> -->
						<h3 id="number"></h3>
					</div>
				</div>
			</div>
			
	<%
	String email = (String) session.getAttribute("email");
	%>

	<input type="hidden" value="<%=email%>" id="currentUserEmail">

			

			<div class="payment-section">

				<h2>PAYMENT OPTIONS</h2>

				<div class="pay-main">

					<div class="payment-heading">
						<ul>
							<li id="credit-card">CREDIT CARD</li>
							<li id="debit-card">DEBIT CARD</li>
							<li id="net-banking">NET BANKING</li>
							<li id="upi">UPI PAYMENT</li>
							<li id="phonepe">PHONEPE</li>
							<li id="paytm">PAYTM</li>
						</ul>

					</div>

					<div class="payment-content">

						<div id="credit-card-content" class="credit-card">
							<div class="card">
								<form method="post" id="form_credit">
									<div class="card-number">
										<label>CARD NUMBER</label> <br> <input type="text"
											placeholder="XXXX XXXX XXXX XXXX">
									</div>

									<div class="valid-cvv">
										<div class="valid">
											<label>VALID</label> <input type="text" placeholder="MM/YYYY">
										</div>

										<div class="cvv">
											<label>CVV</label> <input type="text" placeholder="XXX">
										</div>
									</div>

									<div class="card-name">
										<label> NAME</label> <br> <input type="text"
											placeholder="CARD HOLDER'S NAME">
									</div>

									<div class="terms">
										<input type="checkbox">
										<p>I have read and accepted the terms and conditions of
											this transaction</p>
									</div>

									<div class="credit-button-div">
										<!-- <button class="credit-button" id="payment">MAKE PAYMENT</button> -->

									</div>
								</form>
							</div>
						</div>

						<div id="debit-card-content" class="debit-card">
							<div class="card">
								<form>
									<div class="card-number">
										<label>CARD NUMBER</label> <br> <input type="text"
											placeholder="XXXX XXXX XXXX XXXX">
									</div>

									<div class="valid-cvv">
										<div class="valid">
											<label>VALID</label> <input type="text" placeholder="MM/YYYY">
										</div>

										<div class="cvv">
											<label>CVV</label> <input type="text" placeholder="XXX">
										</div>
									</div>

									<div class="card-name">
										<label> NAME</label> <br> <input type="text"
											placeholder="CARD HOLDER'S NAME">
									</div>

									<div class="terms">
										<input type="checkbox">
										<p>I have read and accepted the LETS SHOW terms and
											conditions of this transaction</p>
									</div>

									<div class="debit-button-div"></div>
								</form>
							</div>
						</div>

						<div id="net-banking-content" class="net-banking">

							<h3>SELECT BANKS</h3>

							<select id="bank-select">
								<option>AXIS BANK</option>
								<option>STATE BANK OF INDIA</option>
								<option>ICICI BANK</option>
								<option>HDFC BANK</option>
								<option>KOTAK BANK</option>
								<option>CANARA BANK</option>
								<option>ANDHRA BANK</option>
							</select>

							<div class="terms">
								<input type="checkbox">
								<p>
									I have read and accepted the LETS SHOW terms<br> and
									conditions of this transaction
								</p>
							</div>

							<div class="net-button-div"></div>
						</div>

						<div id="upi-content" class="upi">

							<div class="upi-name">
								<label>ACCOUNT NAME</label> <br> <input type="text"
									placeholder="UPI PAYER ACCOUNT">
							</div>

							<div class="terms">
								<input type="checkbox">
								<p>
									I have read and accepted the LETS SHOW terms and conditions <br>of
									this transaction
								</p>
							</div>

							<div class="upi-button-div"></div>
						</div>

						<div id="paytm-content" class="paytm">

							<div class="terms">
								<input type="checkbox">
								<p>
									I have read and accepted the LETS SHOW terms and conditions of<br>
									this transaction
								</p>
							</div>

							<div class="paytm-button-div">
								<!-- <button class="paytm-button">MAKE PAYMENT</button> -->
							</div>
						</div>

						<div id="phonepe-content" class="phonepe">

							<div class="terms">
								<input type="checkbox">
								<p>
									I have read and accepted the LETS SHOW terms and conditions of<br>
									this transaction
								</p>
							</div>

							<div class="phonepe-button-div"></div>
							<!-- <button class="phonepe-button" id="payment">MAKE PAYMENT</button> -->
						</div>

					</div>

				</div>

			</div>

		</div>




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
					String movie_banner_image = movie2.getMovieBanner();
				    String movie_main_image = movie2.getMovieImage();
					String language = movie2.getLanguage().getValue();
					String frame = movie2.getFormat().getValue();
			%>

                <input type="hidden" value="<%=movie_main_image%>" id="movie_image">
                <input type="hidden" value="<%=movie_banner_image%>" id="banner_image">
                
                
                

			<div class="ticket-content">

				<div class="movie-details">
					<h2 id="movie_name"><%=title%></h2>
					<h2>
						{<span id="language"><%=language%></span>}
					</h2>
					<h2>
						{<span id="frame"><%=frame%></span>}
					</h2>
					<span style="margin-top: 28px; font-size: 17px; color: #9d9d9d;"></span>
				</div>

				<div class="theater">
					<h2 id="theatre_name"></h2>
					<h2>
						<span id="show_date"></span> <span id="show_month"></span> <span
							id="show_time"></span>
					</h2>
				</div>

				<hr style="color: #9d9d9d; border: 1px solid #9d9d9d; width: 90%;">

				<div class="seat">
					<h2>SEAT INFO</h2>

					<span id="seat"></span>
				</div>

				<div class="total-expensive">

					<div class="tickets">
						<h3>
							TICKETS<span id="ticket_count"></span>
						</h3>
						<h3>
							INR <span id="ticket-price"></span>
						</h3>
					</div>

					<!-- <div class="conv-fees">
                        <h3>CONV.FEES</h3>
                        <h3>INR <span id="conv-price"></span></h3>
                    </div> -->


				</div>

				<div class="total-tickets-cost">

					<div class="total">
						<h3>
							TOTAL<br>(INR)
						</h3>
						<h1 id="total-payment"></h1>
					</div>

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


		</aside>



	</div>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

	<script>
    
    
         let curUserEmail = document.getElementById("currentUserEmail").value;
	     console.log(curUserEmail);
	

         const urlParams = new URLSearchParams(window.location.search);
         let movie_id = urlParams.get('movie_id');
    


    
    
        const user_profile = JSON.parse(localStorage.getItem("profile_details"));


        const users_booking = JSON.parse(localStorage.getItem("user_booking"));

        const theatre_name = document.getElementById("theatre_name");
        theatre_name.innerText = users_booking[0].theatre_name

        const show_date = document.getElementById("show_date");
        show_date.innerText = users_booking[0].show_date;

        const show_month = document.getElementById("show_month");
        show_month.innerText = users_booking[0].show_month;

        const show_time = document.getElementById("show_time");
        show_time.innerText = users_booking[0].show_time;

        const seat = document.getElementById("seat")
        seat.innerText = users_booking[0].seat_names;

        const seat_count = document.getElementById("ticket_count")
        seat_count.innerText = users_booking[0].seat_count;

       

            const ticket_price = document.getElementById("ticket-price")
            ticket_price.innerText = users_booking[0].seat_price

            const ticket_payment = document.getElementById("total-payment")
            ticket_payment.innerText = users_booking[0].seat_price;

       









        const credit_card = document.getElementById("credit-card");
        const debit_card = document.getElementById("debit-card");
        const net_banking = document.getElementById("net-banking");
        const upi = document.getElementById("upi");
        const phonepe = document.getElementById("phonepe");
        const paytm = document.getElementById("paytm");

        const credit_card_content = document.getElementById("credit-card-content");
        const debit_card_content = document.getElementById("debit-card-content");
        const net_banking_content = document.getElementById("net-banking-content");
        const upi_content = document.getElementById("upi-content");
        const phonepe_content = document.getElementById("phonepe-content");
        const paytm_content = document.getElementById("paytm-content");

        credit_card.addEventListener("click", () => {
            credit_card_content.style.display = "block";
            debit_card_content.style.display = "none";
            net_banking_content.style.display = "none";
            upi_content.style.display = "none";
            phonepe_content.style.display = "none";
            paytm_content.style.display = "none";
        });

        debit_card.addEventListener("click", () => {
            credit_card_content.style.display = "none";
            debit_card_content.style.display = "block";
            net_banking_content.style.display = "none";
            upi_content.style.display = "none";
            phonepe_content.style.display = "none";
            paytm_content.style.display = "none";
        });

        net_banking.addEventListener("click", () => {
            credit_card_content.style.display = "none";
            debit_card_content.style.display = "none";
            net_banking_content.style.display = "block";
            upi_content.style.display = "none";
            phonepe_content.style.display = "none";
            paytm_content.style.display = "none";
        });

        upi.addEventListener("click", () => {
            credit_card_content.style.display = "none";
            debit_card_content.style.display = "none";
            net_banking_content.style.display = "none";
            upi_content.style.display = "block";
            phonepe_content.style.display = "none";
            paytm_content.style.display = "none";
        });

        phonepe.addEventListener("click", () => {
            credit_card_content.style.display = "none";
            debit_card_content.style.display = "none";
            net_banking_content.style.display = "none";
            upi_content.style.display = "none";
            phonepe_content.style.display = "block";
            paytm_content.style.display = "none";
        });

        paytm.addEventListener("click", () => {
            credit_card_content.style.display = "none";
            debit_card_content.style.display = "none";
            net_banking_content.style.display = "none";
            upi_content.style.display = "none";
            phonepe_content.style.display = "none";
            paytm_content.style.display = "block";
        });

        const credit_button_div = document.querySelector(".credit-button-div");

        const credit_button = document.createElement("button");
        credit_button.setAttribute("class", "credit-button");
        credit_button.innerText = "MAKE PAYMENT"
        credit_button.setAttribute("type", "submit")
        credit_button_div.append(credit_button);

        credit_button.addEventListener("click", function () {


        	const users_booking = JSON.parse(localStorage.getItem("user_booking"));
        	

        	const url = "http://localhost:8080/movieBooking-web/BookingHistory";            
            
            
            
            axios.post(url, users_booking[0])
            .then(function (response) {
                console.log(response.data);
                window.location.href = "ticket.jsp?movie_id=" + movie_id;

            })
            .catch(function (error) {
                console.log(error);
            });

            

            



        })
        
                    
           
        
          

  const movie_name= document.getElementById("movie_name").innerText;
  const movie_language= document.getElementById("language").innerText;
  const movie_format= document.getElementById("frame").innerText;
  const movie_image= document.getElementById("movie_image").value;
  const banner_image= document.getElementById("banner_image").value;



        //let credit_a = document.createElement("a");
        //credit_a.innerText = "MAKE PAYMENT"
        //credit_a.setAttribute("class", "a_button");
        
        //credit_a.setAttribute("href",  "ticket.jsp?movie_id="+movie_id);
        //credit_button.append(credit_a);

        const paytm_button_div = document.querySelector(".paytm-button-div");

        const paytm_button = document.createElement("button");
        paytm_button.setAttribute("class", "paytm-button");
        paytm_button_div.append(paytm_button);

        const paytm_a = document.createElement("a");
        paytm_a.innerText = "MAKE PAYMENT"
        paytm_a.setAttribute("class", "a_button")
        paytm_a.setAttribute("href", `ticket.html?name=${res.name.movie_name}`);
        paytm_button.append(paytm_a);

        paytm_button.addEventListener("click", function () {

            const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
            if (JSON.parse(localStorage.getItem("user_booking"))) {
                user_booking.find(e => {
                    if (e.email == e.email) {
                    	
                    	e.movie_main_image = movie_image
                        e.movie_banner_image = banner_image
                        e.movie_title = movie_name
                        e.movie_format = movie_format
                        e.movie_language =movie_language
                        e.ticket_price = ticket_total
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
                             "seat_count":selectseatcount,
                            "seat_price": total.innerText,
                            "ticket_price": ticket_total,
                            "show_time": show_time,
                            "movie_main_image": movie_image,
                            "movie_banner_image": banner_image,
                            "movie_title": movie_name,
                            "movie_format": movie_format,
                            "movie_language": movie_language,


                        }
                        user_booking.push(booking_data)

                        // users.push(booking_data)

                        localStorage.setItem("user_booking", JSON.stringify(user_booking))
                    }
                })
            }

        })

        const debit_button_div = document.querySelector(".debit-button-div")

        const debit_button = document.createElement("button");
        debit_button.setAttribute("class", "debit-button");
        debit_button_div.append(debit_button);

        const debit_a = document.createElement("a");
        debit_a.innerText = "MAKE PAYMENT"
        debit_a.setAttribute("class", "a_button")
        debit_a.setAttribute("href", `ticket.html?name=${res.name.movie_name}`);
        debit_button.append(debit_a);

        debit_button.addEventListener("click", function () {

            const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
            if (JSON.parse(localStorage.getItem("user_booking"))) {
                user_booking.find(e => {
                    if (e.email == e.email) {
                        e.ticket_price = ticket_total
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
                            "seat_count":selectseatcount,
                            "seat_price": total.innerText,
                            "ticket_price": ticket_total,
                            "show_time": show_time,
                        }
                        user_booking.push(booking_data)

                        // users.push(booking_data)

                        localStorage.setItem("user_booking", JSON.stringify(user_booking))
                    }
                })

            }
        })


        const phonepe_button_div = document.querySelector(".phonepe-button-div");

        const phonepe_button = document.createElement("button");
        phonepe_button.setAttribute("class", "phonepe-button");
        phonepe_button_div.append(phonepe_button);

        const phonepe_a = document.createElement("a");
        phonepe_a.innerText = "MAKE PAYMENT"
        phonepe_a.setAttribute("class", "a_button")
        phonepe_a.setAttribute("href", `ticket.html?name=${res.name.movie_name}`);
        phonepe_button.append(phonepe_a);

        phonepe_button.addEventListener("click", function () {

            const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
            if (JSON.parse(localStorage.getItem("user_booking"))) {
                user_booking.find(e => {
                    if (e.email == e.email) {
                        e.ticket_price = ticket_total
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
                            "seat_count":selectseatcount,
                            "seat_price": total.innerText,
                            "ticket_price": ticket_total,
                            "show_time": show_time,
                        }
                        user_booking.push(booking_data)

                        // users.push(booking_data)

                        localStorage.setItem("user_booking", JSON.stringify(user_booking))
                    }
                })
            }

        })

        const upi_button_div = document.querySelector(".upi-button-div");

        const upi_button = document.createElement("button");
        upi_button.setAttribute("class", "upi-button");
        upi_button_div.append(upi_button);

        const upi_a = document.createElement("a");
        upi_a.innerText = "MAKE PAYMENT"
        upi_a.setAttribute("class", "a_button")
        upi_a.setAttribute("href", `ticket.html?name=${res.name.movie_name}`);
        upi_button.append(upi_a);


        upi_button.addEventListener("click", function () {

            const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
            if (JSON.parse(localStorage.getItem("user_booking"))) {
                user_booking.find(e => {
                    if (e.email == e.email) {
                        e.ticket_price = ticket_total
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
                            // "seat_count":selectseatcount,
                            "seat_price": total.innerText,
                            "ticket_price": ticket_total,
                            "show_time": show_time,
                        }
                        user_booking.push(booking_data)

                        // users.push(booking_data)

                        localStorage.setItem("user_booking", JSON.stringify(user_booking))
                    }
                })
            }

        })

        const net_button_div = document.querySelector(".net-button-div")

        const net_button = document.createElement("button");
        net_button.setAttribute("class", "net-button");
        net_button_div.append(net_button);

        const net_a = document.createElement("a");
        net_a.innerText = "MAKE PAYMENT"
        net_a.setAttribute("class", "a_button")
        net_a.setAttribute("href", `ticket.html?name=${res.name.movie_name}`);
        net_button.append(net_a);

        net_button.addEventListener("click", function () {

            const user_booking = JSON.parse(localStorage.getItem("user_booking")) ?? []
            if (JSON.parse(localStorage.getItem("user_booking"))) {
                user_booking.find(e => {
                    if (e.email == e.email) {
                        e.ticket_price = ticket_total
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
                            // "seat_count":selectseatcount,
                            "seat_price": total.innerText,
                            "ticket_price": ticket_total,
                            "show_time": show_time,
                        }
                        user_booking.push(booking_data)

                        // users.push(booking_data)

                        localStorage.setItem("user_booking", JSON.stringify(user_booking))
                    }
                })
            }

        })
    </script>

</body>

</html>