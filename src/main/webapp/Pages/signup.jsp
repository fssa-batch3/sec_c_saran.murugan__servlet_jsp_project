<!DOCTYPE html>

<head lan="eng">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../Assets/css/log.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" ></script>
</head>

<body>



  <div class="main">
        <h1>Lets start to book your tickets!</h1>
        <div class="input">
            <h2>Sign up</h2>
            <form action="<%=request.getContextPath()%>/SignUpServlet" method="post">
                <div class="email">
                    <input type="text" name="UserName" title="name doesn't contain number or spaces"
                        placeholder="Enter your name" pattern="[A-Za-z]{0,20}" id="name" required="true">
                    <label>Name</label>
                </div>
                <div class="email">
                    <input required="true" name="phoneNumber" type="text" inputmode="numeric"
                        placeholder="Enter your phone number" pattern="[0-9]{10}" maxlength="10" id="number">
                    <label>Number</label>
                </div>
                <div class="email">
                    <input type="email" name="Email" placeholder="Enter your email" required="true" id="emailid">
                    <label>Email</label>
                </div>
                <div class="email">
                    <input required name="Password" type="password" minlength="5" maxlength="8"
                      pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
                      placeholder="Enter your password" id="password">
                    <label>Password</label>
                </div>
                <div class="email">
                    <input required name="ConPassword" type="password" minlength="5" maxlength="8"
                        placeholder="Confirm your password" id="confirm_password">
                    <label>Confirm </label>
                </div>
                
                
                <button type="submit" id="sign-up">Sign up</button>
            </form>
            <a href="log.jsp">
                <h2>Already have a account</h2>
            </a>
        </div>
    </div>


    <script>
    
            
    </script>
</body>

</html>