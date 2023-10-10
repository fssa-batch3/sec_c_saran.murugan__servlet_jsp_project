<%@ page import="com.fssa.movie.model.Theater"%>
<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html lang="eng">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../Assets/css/cinema.css">

</head>

<body>

    <header>
        <img src="../Assets/images/logo/logo.png" alt="logo5">
    </header>

    <div class="theatre-list">

 <%
                    Theater theater = new Theater();
					List<Theater> theaterList = (List<Theater>) request.getAttribute("theaterList");
					if (theater != null) {
					%>
				
						<%
						for (Theater ans : theaterList) {
						%>
        <div class="theatre-div"> 
              <div class="theatres">
                <div class="mayajaal">
                    <h2><%= ans.getName() %></h2>
                    <div class="location-div">
                    <img href="<%= ans.getLocation() %>" alt="location-logo">
                    <h3><%=ans.getAddress() %></h3>
                    <img src="https://i.ibb.co/djkn6F3/navigation.png" alt="navigation">
                    </div>

                </div> 
            </div> 
            	<%
					}
						%>
					</div>
					<%
					} else {
					%>

					<h1>empty</h1>
					<%
					}
					%>
				</div>
			
            

    </div>

    <script>    </script>

</body>

</html>