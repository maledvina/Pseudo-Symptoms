<?php

	include_once 'db_connection.php';
	if (!isset($_SESSION))
	  {
	    session_start();
	  }
	$database = new Connection();
	$conn = $database->openConnection();

	$statement = $conn->prepare("SELECT * FROM Illness ORDER BY ill_ID;");
	$statement->execute();
	$tuples = $statement->fetchAll();


?>

<!DOCTYPE html>

<html>

	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


		<title>Diseases</title>

		<style>

		body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
		.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
		.fa-anchor,.fa-coffee {font-size:200px}

		</style>
	</head>

	<body>


		  <!-- Navbar -->
		  <div class="w3-top">
		    <div class="w3-bar w3-white w3-card w3-left-align w3-large">
		      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-blue w3-large w3-white" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
		      <a href="Symptom.php" class="w3-bar-item w3-button w3-padding-large w3-hover-blue">Home</a>
		      <a href="start.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-blue">Questionnaire</a>
		      <a href="list.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-blue">Diseases</a>

		    </div>

		    <!-- Navbar on small screens -->
		    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
		      <a href="Symptom.php" class="w3-bar-item w3-button w3-padding-large">Home</a>
		      <a href="start.php" class="w3-bar-item w3-button w3-padding-large">Questionnaire</a>
		      <a href="list.php" class="w3-bar-item w3-button w3-padding-large">Diseases</a>
		    </div>
		  </div>

			<!-- Header -->
			<header class="w3-container w3-blue w3-center w3-margin-bottom" style="padding:80px 16px">
				<h1 class="w3-margin w3-center w3-jumbo">Diseases </h1>
			</br>
				<div class="w3-dropdown-click w3-center">
				    <button class="w3-button w3-block w3-blue-gray w3-xlarge" onclick="dropFunction()">Search</button>
				<div class="w3-dropdown-content w3-bar-block w3-card w3-light-grey" id="myDIV">
							<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for diseases..">

							<ul id="myUL">
								<?php

								foreach ($tuples as $next) { ?>
									 <li><a href= "result.php?num= <?php echo $next['ill_ID']; ?>"> <?php echo $next['Name']; ?></a></li>


										<?php } ?>
											</ul>
				</div>
				</div>


			</header>




			<script>

			// SEARCH stuff :-)
			function myFunction() {
			  // Declare variables
			  var input, filter, ul, li, a, i, txtValue;
			  input = document.getElementById('myInput');
			  filter = input.value.toUpperCase();
			  ul = document.getElementById("myUL");
			  li = ul.getElementsByTagName('li');

			  // Loop through all list items, and hide those who don't match the search query
			  for (i = 0; i < li.length; i++) {
			    a = li[i].getElementsByTagName("a")[0];
			    txtValue = a.textContent || a.innerText;
			    if (txtValue.toUpperCase().indexOf(filter) > -1) {
			      li[i].style.display = "";
			    } else {
			      li[i].style.display = "none";
			    }
			  }
			}


// Dropdown
function dropFunction() {
  var x = document.getElementById("myDIV");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}
			</script>

				<div class="w3-container w3-center">
			<?php

			foreach ($tuples as $next) { ?>

			<div class="w3-center w3-quarter w3-section" style='font-size:55px' id="pkmn<?php echo $next['ill_ID']; ?>">
				<div class=" w3-card w3-center" style="width: 17rem;" style="height: 20rem;">
  		<!-- note that every Pokedex image fits ./images/____.png, so all we need to insert to load the image is the appropriate number. -->
			<img src="./cover/<?php echo $next['ill_ID']; ?>.jpg" class="card-img-top" alt="Picture of <?php echo $next['Name']; ?>">

						<h5 class="card-title w3-bold w3-wide"><?php echo $next['Name']; ?></h5>
						<form method="post" action="#pkmn<?php echo $next["ill_ID"]; ?>">
							<a href="result.php?num=<?php echo $next['ill_ID']; ?>" class="w3-button w3-large w3-ripple w3-blue-gray">More Info</a>



				</div>
			</div>
			<?php } ?>

</div>




		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>

</html>
