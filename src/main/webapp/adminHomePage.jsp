<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.fssa.movie.model.Movie" %>
<%@ page import="com.fssa.movie.model.MovieStatus" %>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="adminHomePage.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>

    <div class="wrapper">
        <!--Top menu -->

        <div class="section">
            <div class="top_navbar">
                <div class="hamburger">
                    <a href="#">
                        <i class="fas fa-bars"></i>
                    </a>
                </div>

                <div>
                    <h2 style="color: #edde3b; margin-left: 20px;"> LetsShow Admin page</h2>
                </div>
            </div>

            <div class="main">

                <div id="home_div" style="display: block;">

                    <h1 style="color: white;">Hello admin... welcome to our LetsShow admin page</h1>

                </div>
                
                

                <div id="add_movies_div" style="display: none;">


                </div>


                <div class="update_movies_div" style="display: none;">



                    <div class="movie-list-all">
                        <h1 id="movie-list">Movie list update and delete</h1>
                    </div>

                    <div class="update-form">

                    </div>


                </div>


            </div>

        </div>
        <div class="sidebar">
            <!--profile image & text-->

            <div class="profile">
                <img src="https://1.bp.blogspot.com/-vhmWFWO2r8U/YLjr2A57toI/AAAAAAAACO4/0GBonlEZPmAiQW4uvkCTm5LvlJVd_-l_wCNcBGAsYHQ/s16000/team-1-2.jpg"
                    alt="profile_picture">
                <h3>Anamika Roy</h3>
                <!-- <p>Designer</p> -->
            </div>
            <!--menu item-->
            <!-- class="active" -->

            <ul>
                <li>
                    <a href="#" id="home">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="add_movies">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">Add movies</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="update_movies">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">update movies</span>
                    </a>
                </li>


            </ul>
        </div>
    </div>


    <script>

        var hamburger = document.querySelector(".hamburger");
        hamburger.addEventListener("click", function () {
            document.querySelector("body").classList.toggle("active");
        })



        let home = document.getElementById("home");
        let home_div = document.getElementById("home_div");


        let add_movies = document.getElementById("add_movies");
        let add_movies_div = document.getElementById("add_movies_div");

        let update_movies = document.getElementById("update_movies");
        let update_movies_div = document.querySelector(".update_movies_div")

        home.addEventListener("click", function () {

            home_div.style.display = "block";
            add_movies_div.style.display = "none"
            update_movies_div.style.display = "none"
        })

        add_movies.addEventListener("click", function () {
            add_movies_div.style.display = "block";
            home_div.style.display = "none";
            update_movies_div.style.display = "none"
        });

        update_movies.addEventListener("click", function () {
            add_movies_div.style.display = "none";
            home_div.style.display = "none";
            update_movies_div.style.display = "block"
        })


        const cast_select_option_button = document.getElementById("cast-select-option-button").addEventListener("click", e => {
            e.preventDefault()
            const cast_select_option = document.getElementById("cast-select-option").value;

            const option = cast_select_option

            console.log(option);

            for (i = 0; i < option.length; i++) {

                const casts = document.getElementById("casts")

                const label = document.createElement("label")
                label.innerText = "Cast";
                casts.append(label)

                const cast_image = document.createElement("input");
                cast_image.setAttribute("type", "text");
                //   cast_image.setAttribute("id","cast_image")
                cast_image.setAttribute("class", "cast_image")
                cast_image.setAttribute("placeholder", "Enter image https: link")
                casts.appendChild(cast_image);

                const cast_name = document.createElement("input");
                cast_name.setAttribute("type", "text");
                //   cast_name.setAttribute("id","cast_name");
                cast_name.setAttribute("class", "cast_name");
                cast_name.setAttribute("placeholder", "Enter cast name")
                casts.appendChild(cast_name);

                const cast_role = document.createElement("input")
                cast_role.setAttribute("type", "text");
                cast_role.setAttribute("class", "cast_role")
                //   cast_role.setAttribute("id","cast_role");
                cast_role.setAttribute("value", "Actor");
                casts.appendChild(cast_role);

                console.log()
            }
        });

        const crew_select_option_button = document.getElementById("crew-select-option-button").addEventListener("click", e => {
            e.preventDefault()
            const crew_select_option = document.getElementById("crew-select-option").value;

            const option2 = crew_select_option

            console.log(option2);

            for (i = 0; i < option2; i++) {

                const crewts = document.getElementById("crews")

                const label = document.createElement("label")
                label.innerText = "Crew";
                crews.append(label)

                const crew_image = document.createElement("input");
                crew_image.setAttribute("type", "text");
                //   cast_image.setAttribute("id","cast_image")
                crew_image.setAttribute("class", "crew_image")
                crew_image.setAttribute("placeholder", "Enter image https: link")
                crews.appendChild(crew_image);

                const crew_name = document.createElement("input");
                crew_name.setAttribute("type", "text");
                //   cast_name.setAttribute("id","cast_name");
                crew_name.setAttribute("class", "crew_name");
                crew_name.setAttribute("placeholder", "Enter crew name")
                crews.appendChild(crew_name);

                const crew_role = document.createElement("input")
                crew_role.setAttribute("type", "text");
                crew_role.setAttribute("class", "crew_role")
                crew_role.setAttribute("placeholder", "Enter crew role name")
                crews.appendChild(crew_role);

                console.log()
            }
        });

        function formsubmit() {

            const movie_name = document.getElementById("movie_name").value;
            const movie_language = document.getElementById("movie_language").value;
            const movie_frame = document.getElementById("movie_frame").value;
            const movie_time = document.getElementById("movie_time").value;
            const movie_certified = document.getElementById("movie_certified").value;
            const movie_type = document.getElementById("movie_type").value;
            const movie_release_date = document.getElementById("movie_release_date").value;
            const movie_releasing = document.getElementById("releasing").value;
            const movie_description = document.getElementById("movie_description").value;
            const movie_main_image = document.getElementById("movie_main_image").value;
            const movie_background_image = document.getElementById("movie_background_image").value;
            const cast_images = document.querySelectorAll(".cast_image");
            const cast_names = document.querySelectorAll(".cast_name");
            const cast_roles = document.querySelectorAll(".cast_role");
            const crew_images = document.querySelectorAll(".crew_image");
            const crew_names = document.querySelectorAll(".crew_name");
            const crew_roles = document.querySelectorAll(".crew_role");
            // const cast_name=document.querySelectorAll("cast_name");
            // const cast_role=document.querySelectorAll("cast_role");
            // const cast1_name = document.getElementById("cast1_name").value
            // const cast1_image = document.getElementById("cast1_image").value
            // const cast2_name = document.getElementById("cast2_name").value
            // const cast2_image = document.getElementById("cast2_image").value
            // const cast3_name = document.getElementById("cast3_name").value
            // const cast3_image = document.getElementById("cast3_image").value
            // const cast4_name = document.getElementById("cast4_name").value
            // const cast4_image = document.getElementById("cast4_image").value
            // const director_name = document.getElementById("director_name").value
            // const director_image = document.getElementById("director_image").value
            // const music_director_name = document.getElementById("music_director_name").value
            // const music_director_image = document.getElementById("music_director_image").value
            // const producer_name = document.getElementById("producer_name").value
            // const producer_image = document.getElementById("producer_image").value

            console.log(cast_images.length)
            const cast_image_values = []
            for (let i = 0; i < cast_images.length; i++) {
                cast_image_values.push(cast_images[i].value)
            }

            const cast_name_values = []
            for (let i = 0; i < cast_names.length; i++) {
                cast_name_values.push(cast_names[i].value)
            }

            const cast_role_values = []
            for (let i = 0; i < cast_roles.length; i++) {
                cast_role_values.push(cast_roles[i].value)
            }

            const crew_image_values = []
            for (let i = 0; i < crew_images.length; i++) {
                crew_image_values.push(crew_images[i].value)
            }

            const crew_name_values = []
            for (let i = 0; i < crew_names.length; i++) {
                crew_name_values.push(crew_names[i].value)
            }

            const crew_role_values = []
            for (let i = 0; i < crew_roles.length; i++) {
                crew_role_values.push(crew_roles[i].value)
            }

            const movie_details = {

                name: {
                    movie_name,
                    cast_name: cast_name_values,
                    cast_role: cast_role_values,
                    crew_name: crew_name_values,
                    crew_role: crew_role_values,
                    // cast2_name: cast2_name,
                    // cast3_name: cast3_name,
                    // cast4_name: cast4_name,
                    // director_name: director_name,
                    // music_director_name: music_director_name,
                    // producer_name: producer_name,
                },
                images: {
                    main_image: movie_main_image,
                    background_image: movie_background_image,
                    cast_image: cast_image_values,
                    crew_image: crew_image_values,
                    // cast1_image: cast1_image,
                    // cast2_image: cast2_image,
                    // cast3_image: cast3_image,
                    // cast4_image: cast4_image,
                    //     director_image: director_image,
                    //     music_director_image: music_director_image,
                    //     producer_image: producer_image,
                },
                movie_time,
                language: movie_language,
                frame: movie_frame,
                movie_certified,
                movie_type,
                movie_release_date,
                movie_releasing,
                Description: movie_description,
                status: true,
            }

            const details_movie = JSON.parse(localStorage.getItem("show_movie_details")) ?? [];

            details_movie.push(movie_details);

            alert('movie list created successfully!')

            localStorage.setItem("show_movie_details", JSON.stringify(details_movie));

        }
        const form_control = document.getElementById("movie_details-form");

        form_control.addEventListener("submit", e => {

            formsubmit()
        })





        // update movies div scripts



        const movie_lists = JSON.parse(localStorage.getItem("show_movie_details"));



        //   console.log( movie_lists[4]["images"]["cast_image"].length)

        // for(let i=0; i< movie_lists[1]["images"]["cast_image"].length; i++){

        //     let cast_images_div=document.querySelector(".cast-image");

        //     let cast_image_content=document.createElement("input");
        //     cast_image_content.setAttribute("class","cast_image")
        //     cast_image_content.setAttribute("id","cast_images");
        //     cast_images_div.append(cast_image_content);
        // }

        movie_lists.forEach((element, index) => {
            // console.log(index)

            // console.log(element)

            console.log(element.images.cast_image.length);

            if (element.images.cast_image.length == undefined) {
                console.log("how")
            }
            if (index == element) {
                console.log(element)
            }

        });

        const movie_list = JSON.parse(localStorage.getItem("show_movie_details"));

        for (const movie of movie_list) {
            
            const movie_item = document.createElement("div")
            movie_item.setAttribute("class", "movie-item");

            const movie_img = document.createElement("img");
            movie_img.setAttribute("class", "movie_img");
            movie_img.setAttribute("src", movie.images.main_image)
            movie_item.append(movie_img);

            const movie_name = document.createElement("h1");
            movie_name.innerText = movie.name.movie_name;
            movie_item.append(movie_name);

            const update_delete = document.createElement("div");
            update_delete.setAttribute("class", "update_delete");
            movie_item.append(update_delete);

            const popup = document.getElementById('movie-popup');

            const update_button = document.createElement("button");
            update_button.setAttribute("class", "update-button");
            update_button.innerText = "Update";
            update_delete.append(update_button);
            update_button.onclick = function () {
                updatemovie(movie);

                popup.style.display = 'block';
                // handleSubmit(e)

            }

            const delete_button = document.createElement("button");
            delete_button.setAttribute("class", "delete-button");
            delete_button.setAttribute("id", "delete-button")
            delete_button.innerText = "Delete";
            delete_button.onclick = function () {
                delete_movie(movie);
            }
            update_delete.append(delete_button);

            document.querySelector(".movie-list-all").append(movie_item);
        }

        function delete_movie(movie_list) {

            const delete_movies = JSON.parse(localStorage.getItem("show_movie_details"));

            const index = delete_movies.findIndex((movie) => movie.name.movie_name === movie_list.name.movie_name)

            if (index !== -1) {

                delete_movies[index].status = false;
                localStorage.setItem("show_movie_details", JSON.stringify(delete_movies));
                alert("movie delete succesfull");
            }
        }

        const closeBtn = document.getElementById('closeBtn');
        const popup = document.getElementById('movie-popup');

        closeBtn.addEventListener('click', () => {
            popup.style.display = 'none';
        })

        const movieform = document.getElementById("movie-form");

        const movie_details = JSON.parse(localStorage.getItem("show_movie_details")) ?? [];

        function updatemovie(cinema) {

            console.log(cinema);

            document.getElementById("mname").value = cinema.name.movie_name;
            // console.log(document.getElementById("mname").value);
            document.getElementById("mlanguage").value = cinema.language;
            // console.log(document.getElementById("mlanguage").value);
            document.getElementById("mframe").value = cinema.movie_frame;
            document.getElementById("mtime").value = cinema.movie_time;
            document.getElementById("mtype").value = cinema.movie_type;
            document.getElementById("mcertified").value = cinema.movie_certified;
            document.getElementById("mreleasedate").value = cinema.movie_release_date;
            document.getElementById("description").value = cinema.Description;
            document.getElementById("mimage").value = cinema.images.main_image;
            document.getElementById("mbackimage").value = cinema.images.background_image;
            document.querySelectorAll(".cast_images").value = cinema.images.cast_image;
            // document.getElementById("cast_images").value= cinema.images.cast_image.;
            // document.getElementById("cast1name").value = cinema.name.cast1_name;
            // document.getElementById("cast1image").value = cinema.images.cast1_image;
            // document.getElementById("cast2name").value = cinema.name.cast2_name;
            // document.getElementById("cast2image").value = cinema.images.cast2_image;
            // document.getElementById("cast3name").value = cinema.name.cast3_name;
            // document.getElementById("cast3image").value = cinema.images.cast3_image;
            // document.getElementById("cast4name").value = cinema.name.cast4_name;
            // document.getElementById("cast4image").value = cinema.images.cast4_image;
            // document.getElementById("directorname").value = cinema.name.director_name;
            // document.getElementById("directorimage").value = cinema.images.director_image;
            // document.getElementById("musicdirectorname").value = cinema.name.music_director_name;
            // document.getElementById("musicdirectorimage").value = cinema.images.music_director_image;
            // document.getElementById("producername").value = cinema.name.producer_name;
            // document.getElementById("producerimage").value = cinema.images.producer_image;

        }

        function handleSubmit(e) {
            e.preventDefault();

            const movie_name = document.getElementById("mname").value
            const movie_language = document.getElementById("mlanguage").value
            const movie_frame = document.getElementById("mframe").value
            const movie_time = document.getElementById("mtime").value
            const movie_type = document.getElementById("mtype").value
            const movie_certified = document.getElementById("mcertified").value
            const movie_release_date = document.getElementById("mreleasedate").value
            const Description = document.getElementById("description").value
            const movie_main_image = document.getElementById("mimage").value
            const background_image = document.getElementById("mbackimage").value
            // const cast_image=document.getElementById()

            // const cast1_name = document.getElementById("cast1name").value
            // const cast1_image = document.getElementById("cast1image").value
            // const cast2_name = document.getElementById("cast2name").value
            // const cast2_image = document.getElementById("cast2image").value
            // const cast3_name = document.getElementById("cast3name").value
            // const cast3_image = document.getElementById("cast3image").value
            // const cast4_name = document.getElementById("cast4name").value
            // const cast4_image = document.getElementById("cast4image").value
            // const director_name = document.getElementById("directorname").value
            // const director_image = document.getElementById("directorimage").value
            // const music_director_name = document.getElementById("musicdirectorname").value
            // const music_director_image = document.getElementById("musicdirectorimage").value
            // const producer_name = document.getElementById("producername").value
            // const producer_image = document.getElementById("producerimage").value

            const cinemadetails = {
                name: {
                    movie_name,
                    cast_images: cast_images_values,
                    // cast1_name: cast1_name,
                    // cast2_name: cast2_name,
                    // cast3_name: cast3_name,
                    // cast4_name: cast4_name,
                    // director_name: director_name,
                    // music_director_name: music_director_name,
                    // producer_name: producer_name,
                },
                images: {
                    main_image: movie_main_image,
                    background_image,
                    // cast1_image: cast1_image,
                    // cast2_image: cast2_image,
                    // cast3_image: cast3_image,
                    // cast4_image: cast4_image,

                },
                movie_time,
                movie_certified,
                movie_release_date,
                language: movie_language,
                movie_frame,
                movie_releasing: "false",
                movie_type,
                Description,
                status: true,

            }

            // find index of current  movie in details
            const index = movie_details.findIndex((mdetails) => mdetails.name.movie_name === movie_name);

            if (index !== -1) {
                movie_details[index] = cinemadetails;
                localStorage.setItem("show_movie_details", JSON.stringify(movie_details));
                alert("Movie updated successfully");
                window.location.reload();

            }

        }

        movieform.addEventListener("submit", handleSubmit);

    </script>

</body>
</html>