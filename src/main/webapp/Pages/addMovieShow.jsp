<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>

    <div class="container">
        <h1>Add Show</h1>
        <form action="/AddMovieShowServlet" method="post">
            <div class="form-group">
                <label for="movieId">Movie ID:</label>
                <input type="number" class="form-control" id="movieId" name="movieId" required>
            </div>

            <div class="form-group">
                <label for="theaterId">Theater ID:</label>
                <input type="number" class="form-control" id="theaterId" name="theaterId" required>
            </div>

            <div class="form-group">
                <label for="showTime">Show Time (HH:mm):</label>
                <input type="time" class="form-control" id="showTime" name="showTime" required>
            </div>

            <div class="form-group">
                <label for="showDate">Show Date:</label>
                <input type="date" class="form-control" id="showDate" name="showDate" required>
            </div>

            <button type="submit" class="btn btn-primary">Add Show</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>