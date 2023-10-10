<!DOCTYPE html>

<head lan="eng">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="../Assets/css/log.css">

</head>

<body>




	<div class="main">
		<h1>Lets start! Book your tickets</h1>
		<form action="<%=request.getContextPath()%>/LoginUserServlet"
			method="post">
			<div class="input">
				<h2>Log in</h2>

				<div class="email">
					<input required type="email" name="email"
						placeholder="Enter your email or phone" id="emailid"> <label>Email</label>
				</div>

				<div class="email">
					<input required type="password"
						pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
						name="password" placeholder="Enter your password" id="password">
					<label>Password</label>
				</div>

				<div class="check">
					<input type="checkbox" required>
					<h4>Terms and conditions</h4>
				</div>

				<button type="submit">Log in</button>
			</div>
		</form>

		<a href="signup.jsp">
			<h2>I don't have an account</h2>
		</a>
	</div>


</body>

</html>