<?php
# MAYA LEDVINA
# FINAL
# 5/22/19
# She's a little messy but she works :')
	include_once 'db_connection.php';

	$database = new Connection();
	$conn = $database->openConnection();


# get recently stuff from db
	$statement = $conn->prepare("SELECT DISTINCT ill_ID, Name FROM Access ORDER BY accessed desc LIMIT 3 ;");
	$statement->execute();
	$tuples = $statement->fetchAll();

  $result = $conn->prepare("SELECT DISTINCT stalker.sympt, Symp.Name FROM stalker, Symp WHERE stalker.sympt = Symp.Symp_ID ORDER BY tm desc LIMIT 3 ;");
  $result->execute();
  $stalk = $result->fetchAll();
?>


<!DOCTYPE html>

<head>
<html lang="en">
<title>Pseudo Symptoms </title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


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
      <a href="Symptom.html" class="w3-bar-item w3-button w3-padding-large w3-blue">Home</a>
      <a href="start.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-blue">Questionnaire</a>
      <a href="list.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-blue">Diseases</a>

    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
      <a href="Symptom.html" class="w3-bar-item w3-button w3-padding-large">Home</a>
      <a href="start.php" class="w3-bar-item w3-button w3-padding-large">Questionnaire</a>
      <a href="list.php" class="w3-bar-item w3-button w3-padding-large">Diseases</a>
    </div>
  </div>

<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">Pseudo Symptoms </h1>
  <p class="w3-xlarge"> A symptom checker for your favorite fictonal diseases!</p>
  <button onclick= "location.href='start.php';" class= "w3-button w3-black w3-padding-large w3-large w3-margin-top">Let's Get Started</button>

</header>
<div class="w3-container w3-third w3-center">
<i class="fas fa-laptop-medical w3-padding-64 w3-text-blue w3-center" style='font-size:250px'></i>
</div>

<div class="w3-container w3-third w3-center" style= 'font-size: 25px'>
	<div class="w3-center w3-bold w3-wide w3-blue-gray" style='font-size:30px' >
		<p>About Us:</p>
		</div>
  </br>
    <p>  We are just rag-tag team of one girl just trying to complete an assignment on time! Collecting data is my passion and so is the color blue apparently and I LOVE getting sick.</p>
  </div>

  <div class="w3-container w3-third w3-center">
  <i class="fas fa-hand-holding-usd w3-padding-64 w3-text-blue w3-center" style='font-size:250px'></i>
  </div>

<!-- First Grid -->
<div class="w3-cell-row w3-center w3-padding-64 w3-container" >
  <div class="w3-content">
    <div class="w3-center w3-bold w3-wide w3-panel w3-blue-gray" style='font-size:50px' >
      <p>Recently Diagnosed...</p>
      </div>

  			<?php
  		#get recently diagnosed
  			foreach ($tuples as $next) { ?>

  			<div class="w3-padding w3-cell" style='font-size:55px' id="pkmn<?php echo $next['ill_ID']; ?>">
  				<div class=" w3-card" style="width: 17rem;">
    		<!-- note that every Pokedex image fits ./images/____.png, so all we need to insert to load the image is the appropriate number. -->
  			<img src="./cover/<?php echo $next['ill_ID']; ?>.jpg" class="card-img-top" alt="Picture of <?php echo $next['Name']; ?>">
  					<div class="w3-container">
  						<h5 class="card-title w3-bold w3-wide"><?php echo $next['Name']; ?></h5>
  						<form method="post" action="#pkmn<?php echo $next["ill_ID"]; ?>">
  							<a href="result.php?num=<?php echo $next['ill_ID']; ?>" class="w3-button w3-large w3-ripple w3-blue-gray">More Info</a>


  					</div>
  				</div>
  			</div>

		<?php } ?>
</br>

<div class="w3-cell-row w3-center w3-padding-64 w3-container" >
  <div class="w3-content">
    <div class="w3-center w3-bold w3-wide w3-panel w3-blue-gray" style='font-size:50px' >
      <p>Recent Symptoms...</p>
      </div>
    <?php
    # get symptoms
        foreach ($stalk as $next) { ?>

        <div class="w3-padding w3-cell" style='font-size:55px' id="s<?php echo $next['Name']; ?>">
          <div class=" w3-card" style="width: 17rem;">

            <div class="w3-container">
              <h5 class="card-title w3-bold w3-wide"><?php echo $next['Name']; ?></h5>
              <form method="post" action="#s<?php echo $next["Name"]; ?>">
            </div>
          </div>
        </div>


  			<?php } ?>

</br>


  </div>
</div>





<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">
  <div class="w3-xlarge w3-padding-32">

 </div>
 <p> We will NOT sell your personal information. We will just keep it. We won't do anything with it. Maybe make a scrapbook or something.. </p>
 <p> I mean we would really only get like $0.20 for each person's data. For example, if only 20 percent of the total 2,130,000,000 global users are targeted by one ad campaign for a token amount of $0.20 per user data, the amount of money to be made comes to $85.2 million </p>
<p> . . . </p>
<p> and who wants that? </p>
</br>
</br>
 <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

function starting() {

}
</script>

</body>
</html>
