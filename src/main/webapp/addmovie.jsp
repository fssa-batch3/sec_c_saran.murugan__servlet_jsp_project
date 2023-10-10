<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Movie</title>
<!-- Include Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1>Add Movie</h1>
		<form action="AddMovieServlet" method="post">
			<div class="form-group">
				<label for="movieName">Movie Name:</label> <input type="text"
					class="form-control" id="movieName" name="movieName" required>
			</div>

			<div class="form-group">
    <label for="language">Language:</label>
    <select class="form-control" id="language" name="language" required>
        <option value="TAMIL">TAMIL</option>
        <option value="ENGLISH">ENGLISH</option>
        <option value="HINDI">HINDI</option>
        <option value="TELUGU">TELUGU</option>
        <option value="KANADA">KANADA</option>
        <option value="MALAYALAM">MALAYALAM</option>
    </select>
</div>
			
			<div class="form-group">
				<label for="format">Format:</label> <select class="form-control"
					id="format" name="format" required>
					<option value="DVD">DVD</option>
					<option value="BLU_RAY">BLU_RAY</option>
					<option value="DIGITAL">DIGITAL</option>
					<option value="VHS">VHS</option>
					<option value="FORMAT_4K">FORMAT_4K</option>
					<option value="FORMAT_2D">FORMAT_2D</option>
					<option value="FORMAT_3D">FORMAT_3D</option>
					<option value="DOLBY_ATMOS">DOLBY_ATMOS</option>
				</select>
			</div>

			<div class="form-group">
				<label for="certificate">Certificate:</label> <select
					class="form-control" id="certificate" name="certificate" required>
					<option value="UNIVERSAL">UNIVERSAL</option>
					<option value="UNIVERSAL_ADULT">UNIVERSAL_ADULT</option>
					<option value="ADULT">ADULT</option>
					<option value="SPECIAL">SPECIAL</option>
					<option value="RESTRICTED">RESTRICTED</option>
					<option value="NOT_RATED">NOT_RATED</option>
				</select>
			</div>



			<div class="form-group">
				<label for="genre">Genre:</label> <select class="form-control"
					id="genre" name="genre" required>
					<option value="ACTION">ACTION</option>
					<option value="COMEDY">COMEDY</option>
					<option value="DRAMA">DRAMA</option>
					<option value="HORROR">HORROR</option>
					<option value="SCIENCE_FICTION">SCIENCE_FICTION</option>
					<option value="ROMANCE">ROMANCE</option>
					<option value="LOVE">LOVE</option>
					<option value="THRILLER">THRILLER</option>
					<option value="FANTASY">FANTASY</option>
					<option value="ANIMATION">ANIMATION</option>
					<option value="ADVENTURE">ADVENTURE</option>
					<option value="CRIME">CRIME</option>
					<option value="DOCUMENTARY">DOCUMENTARY</option>
					<option value="MUSICAL">MUSICAL</option>
					<option value="WAR">WAR</option>
					<option value="WESTERN">WESTERN</option>
					<option value="HISTORICAL">HISTORICAL</option>
					<option value="MYSTERY">MYSTERY</option>
					<option value="SUPERHERO">SUPERHERO</option>
				</select>
			</div>



				<div class="form-group col-md-4">
					<label for="durationMinutes">Duration (Minutes):</label> <input
						type="number" class="form-control" id="durationMinutes"
						name="durationMinutes" required>
				</div>

				
			</div>

			<div class="form-group">
				<label for="description">Description:</label>
				<textarea class="form-control" id="description" name="description"
					required></textarea>
			</div>

			<div class="form-group">
				<label for="releaseDate">Release Date:</label> <input type="date"
					class="form-control" id="releaseDate" name="releaseDate" required>
			</div>

			<div class="form-group">
				<label for="movieImage">Movie Image URL:</label> <input type="text"
					class="form-control" id="movieImage" name="movieImage" required>
			</div>

			<div class="form-group">
				<label for="movieBanner">Movie Banner URL:</label> <input
					type="text" class="form-control" id="movieBanner"
					name="movieBanner" required>
			</div>

			<div class="form-group">
				<label for="status">Status:</label> <input type="text"
					class="form-control" id="status" name="status" required>
			</div>

			<button type="submit" class="btn btn-primary">Add Movie</button>
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
