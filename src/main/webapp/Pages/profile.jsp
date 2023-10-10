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
					<button type="button" id="logout">log out</button>
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



</body>

</html>