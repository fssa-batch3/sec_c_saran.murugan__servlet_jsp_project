<%@ page import="com.fssa.movie.model.Theater"%>
<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html lang="eng">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./Assets/css/cinema.css">

<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Barlow&display=swap');   
*{
    margin: 0px;
    padding: 0px;
}
html{
    font-family: 'Barlow', sans-serif;                                       
}
header{

    background-color:#edd605;
    height: 100px;
}
header img{
    width: 120px;
    height: 130px;
    align-items: center;
   position:relative;
   bottom: 20px;
} 
body{
    background-color: black;
}
h2{
    color: white;

}
.theatre_name_div{
    display: flex;
    justify-content: space-around;
}
.theatres{
    border: 1px solid white;
    padding: 40px;
    width: 550px;
    margin-top: 20px;
    height: 150px;
    border-radius: 20px;
}
.location-div{
    display: flex;
    padding-top: 30px;
}
.location-div img{
    width:40px;
    height: 40px;
}
.location-div h3{
    color:white;
}
.see_shows_button{
    text-decoration: none;
    color: black;
    padding: 10px;
    border-radius: 10px;
    font-size: 16px;
    background-color: #edd605;
    
 }
 a:hover{
    text-decoration: underline white;
 }
</style>
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