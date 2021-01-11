<?php
include 'start.php'; # ok it's 11:30 wednesday night and this is the only way it'll work it's so ANNOYING i think it's an easy mistake that i'm missing
if (!isset($_SESSION))
  {
    session_start();
  }

	$name = "Disease-less...you're clean!!!";


	if(isset($_GET["num"])){
		include_once 'db_connection.php';

		$database = new Connection();
		$conn = $database->openConnection();

		# grab the one tuple from the pokemon table that matches the GET parameter.
		$statement = $conn->prepare("SELECT * FROM Illness WHERE ill_ID = :ill_ID;");
		$statement->bindValue(":ill_ID",$_SESSION["die"], PDO::PARAM_INT);
		$statement->execute();
		$tuple = $statement->fetch();


		$statement = $conn->prepare("SELECT Symp.Name FROM Link, Symp WHERE Link.Symp_ID = Symp.Symp_ID AND Link.ill_ID = :ill;");
		$statement->bindValue(":ill",$_SESSION["die"], PDO::PARAM_INT);
		$statement->execute();
		$results = $statement->fetchAll();


		if($tuple !== false){


			$name = $tuple["Name"];
			$number = $tuple["ill_ID"];
			$descp = $tuple["Descr"];
			$from = $tuple["Source"];
			$cure = $tuple["Cure"];
			$image_name = $number . ".jpg";

        # insert accessed dieases into database!
			$statement = $conn->prepare("INSERT INTO Access (ill_id, Name) VALUES (:number_ID, :name);");
			$statement->bindValue(":number_ID",$number,PDO::PARAM_INT);
			$statement->bindValue(":name",$name);
			$insert_success = $statement->execute();
			if(!$insert_success){
				echo "nothing to see here everything is cool";
				return false;
			}


		}
	}


?>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

<head>

  <style>

  body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
  .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
  .fa-anchor,.fa-coffee {font-size:200px}

  </style>

<title> Your Results </title>
</head>
<body>

  <!-- Navbar -->
  <div class="w3-top">
    <div class="w3-bar w3-white w3-card w3-left-align w3-large">
      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-blue w3-large w3-white" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
      <a href="Symptom.php" class="w3-bar-item w3-button w3-padding-large w3-hover-blue">Home</a>
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
  <header class="w3-container w3-blue w3-center" style="padding:70px 16px">
    <h1 class="w3-margin w3-jumbo"   </h1>
    <p> you might have... </p>
  </header>

  <div class="w3-card-4">

  </br>


  <div class="w3-panel w3-padding-16">
    <div class="w3-center" style='font-size:55px'>
    <label class="w3-text-blue"><b><?php echo $name; ?> </label>

  </div>
</div>

<div class="w3-container w3-center">
<div class="w3-container w3-blue w3-center w3-margin" >
  <h1>From <?php echo $from; ?></h1>
</div>
</div>


<div class="w3-container w3-center">
	<img src="./images/<?php echo $image_name; ?>" />

</br>
<div class="w3-container w3-center w3-half" style= 'font-size: 20px'>
	<div class="w3-center w3-bold w3-wide w3-panel w3-blue-gray" style='font-size:35px' >
		<p>Description:</p>
		</div>
	<p> <?php echo $descp; ?></p>
</div>

<div class="w3-container w3-center w3-half" style= 'font-size: 20px'>
	<div class="w3-center w3-bold w3-wide w3-panel w3-blue-gray" style='font-size:35px' >
		<p>Symptoms:</p>
		</div>

<?php
# all symptoms
foreach ($results as $sym) { ?>
	<p> <?php echo $sym["Name"]; ?></p>
<?php } ?>
	</div>
	</div>

		<div class="w3-container w3-center" style= 'font-size: 20px'>
			<div class="w3-center w3-bold w3-wide w3-panel w3-blue-gray" style='font-size:35px' >
				<p>Cure:</p>
				</div>
			<p> <?php echo $cure; ?></p>
		</div>
		</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">
  <div class="w3-xlarge w3-padding-32">

 </div>
 <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
