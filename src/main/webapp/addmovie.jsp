<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Movie</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Add Movie</h1>
        <form action="AddMovieServlet" method="post">
            <div class="form-group">
                <label for="movieName">Movie Name:</label>
                <input type="text" class="form-control" id="movieName" name="movieName" required>
            </div>

            <div class="form-group">
                <label for="language">Language:</label>
                <input type="text" class="form-control" id="language" name="language" required>
            </div>

            <div class="form-group">
                <label for="format">Format:</label>
                <input type="text" class="form-control" id="format" name="format" required>
            </div>

            <div class="form-group">
                <label for="certificate">Certificate:</label>
                <input type="text" class="form-control" id="certificate" name="certificate" required>
            </div>
            
          

            <div class="form-group">
                <label for="genre">Genre:</label>
                <input type="text" class="form-control" id="genre" name="genre" required>
            </div>

            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="durationHours">Duration (Hours):</label>
                    <input type="number" class="form-control" id="durationHours" name="durationHours" required>
                </div>

                <div class="form-group col-md-4">
                    <label for="durationMinutes">Duration (Minutes):</label>
                    <input type="number" class="form-control" id="durationMinutes" name="durationMinutes" required>
                </div>

                <div class="form-group col-md-4">
                    <label for="durationSeconds">Duration (Seconds):</label>
                    <input type="number" class="form-control" id="durationSeconds" name="durationSeconds" required>
                </div>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>

            <div class="form-group">
                <label for="releaseDate">Release Date:</label>
                <input type="date" class="form-control" id="releaseDate" name="releaseDate" required>
            </div>

            <div class="form-group">
                <label for="movieImage">Movie Image URL:</label>
                <input type="text" class="form-control" id="movieImage" name="movieImage" required>
            </div>

            <div class="form-group">
                <label for="movieBanner">Movie Banner URL:</label>
                <input type="text" class="form-control" id="movieBanner" name="movieBanner" required>
            </div>

            <div class="form-group">
                <label for="status">Status:</label>
                <input type="text" class="form-control" id="status" name="status" required>
            </div>

            <button type="submit" class="btn btn-primary">Add Movie</button>
        </form>
    </div>

    <!-- Include Bootstrap JS and jQuery (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
    