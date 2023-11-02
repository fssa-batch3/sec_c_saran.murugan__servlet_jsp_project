<!DOCTYPE html>
<html lang="eng">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container">
    <h1>Add Theater details</h1>
    <form action="<%=request.getContextPath() %>/AddTheaterServlet" method="post">
        <div class="form-group">
            <label for="theaterName">Theater Name:</label>
            <input type="text" class="form-control" id="theaterName" name="theaterName" required>
        </div>

        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" class="form-control" id="location" name="location" required>
        </div>

        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>

        <div class="form-group">
            <label for="numSeats">Number of Seats:</label>
            <input type="number" class="form-control" id="numSeats" name="numSeats" required>
        </div>

        <div class="form-group">
            <label for="seatCost">Seat Cost:</label>
            <input type="number" class="form-control" id="seatCost" name="seatCost" required>
        </div>
        
        <button type="submit" class="btn btn-primary">Add Show</button>
    </form>
</div>
</body>

</html>