<?php

session_start();
include_once "db_connection.php";
$database = new Connection();
$conn = $database->openConnection();

// define variables and set to empty values
$sxError = $ageError = $sympError = $metaError= $nameError= "";
 //$style = "style='display:none;'";
// $shame = "style='display:none;'";
global $name;
global $age;
global $symp;
global $sx;
global $checked;
global $conn;
global $statement;


//SUBMIT

if(isset($_POST['submitted'])){

$SUCCESS = true;
$DENIED = false;



if (empty($_POST["name"]) ) {
	$nameError = "Please enter your name!";
	$metaError = "Please fix your errors";
	$DENIED = true;
	$SUCCESS = false;

}else{

	$_SESSION["name"] = $_POST["name"];
	$DENIED = false;
}

if (empty($_POST["age"]) ) {
	$ageError = "Please enter your age!";
	$metaError = "Please fix your errors";
	$DENIED = true;
	$SUCCESS = false;

}else{
	$DENIED = false;
}


	if(!(isset($_POST['sx']))) {
	$sxError = "Please choose your sex!";
	$metaError = "Please fix your errors";
	$DENIED = true;
	$SUCCESS = false;

}else{
	$DENIED = false;
}



if(empty($_POST['sympArr'])){
	$sympError = "Please select your symptoms!";
	$metaError = "Please fix your errors";
	$DENIED = true;
	$SUCCESS = false;
}else{
	$DENIED = false;

	$insert = implode(",", $_POST['sympArr']);

	$e = array();
	$strings_array = $_POST['sympArr'];

foreach ($strings_array as $each_number) {
		$e[] = (int) $each_number;
}

	foreach ($e as $data) {
		$statement = $conn->prepare("INSERT INTO stalker (sympt) VALUES (:name);");
		$statement->bindValue(":name",$data);
		$insert_success = $statement->execute();
		if(!$insert_success){
			echo "nothing to see here everything is cool";
			return false;
}
}

$items = array();
$kill_me = array();

$result = $conn->prepare("SELECT Illness.ill_ID FROM Illness ");
$result->execute();
$number = $result->fetchAll(PDO::FETCH_COLUMN);


        foreach ($number as $value){
					  //Go through every value in the row
					$statement = $conn->prepare("SELECT Symp.Symp_ID FROM Link, Symp WHERE Link.Symp_ID = Symp.Symp_ID AND Link.ill_ID = :value;");
					$statement->bindValue(":value",$value);
					$statement->execute();
					$nu = $statement->fetchAll(PDO::FETCH_COLUMN);

					$items = array_diff($e, $nu);
					$size[] = sizeof($items);
}
//

						$index = array_search(min($size), $size);
						if (isset($_SESSION['die']))
						  {
						    session_destroy();
						  }else{
								$_SESSION['die'] = $index +1;
								echo $_SESSION["die"];
							}




				}

        }


?>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

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


  .error-text {
    color: rgb(204,46,46);
    display: block;
    margin-top: 1em;
  }
  </style>

  <script>



	function validateForm(){
	var validName = validateName();
	var validSx = validateSx();
	var validAge = validateAge();
	var validCheckbox = validateCheckbox();
	if(validName == false || validSx == false || validAge == false || validCheckbox == false){
		$("#meta-error").text("Please fix your errors");
	return false;
} else {
	return true;
}
}


	function validateName(){

		if($("#name").val().length < 1 ){
			$("#name-error").text("Please enter your name");
			return false;
						}
						$("#name-error").text("");
						return true;
						}


	function validateSx(){
		if($("#sx option:selected").text() == "Choose your Sex"){
			$("#sx-error").text("Please select your sex");
			return false;
			}
			$("#sx-error").text("");
			return true;
			}


	function validateAge(){
		if($("#age").val().length < 1 ){
			$("#age-error").text("Please enter your age");
			return false;
							}
							$("#age-error").text("");
							return true;
						}

	function validateCheckbox(){
				$('#result').empty();
				var value = $("form input[type='checkbox']:checked").val();
				if($("form input[type='checkbox']").is(':checked')) {
							$("#symp-error").text("");
						}else{
							$("#symp-error").text("Please check your symptoms");
						}


			}


      </script>

<title> Questionnaire </title>
</head>
<body>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <!-- Navbar -->
  <div class="w3-top">
    <div class="w3-bar w3-white w3-card w3-left-align w3-large">
      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-blue w3-large w3-white" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
      <a href="Symptom.php" class="w3-bar-item w3-button w3-padding-large w3-hover-blue">Home</a>
      <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-blue">Questionnaire</a>
      <a href="list.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-blue">Diseases</a>

    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
      <a href="Symptom.php" class="w3-bar-item w3-button w3-padding-large">Home</a>
      <a href="#" class="w3-bar-item w3-button w3-padding-large">Questionnaire</a>
      <a href="list.php" class="w3-bar-item w3-button w3-padding-large">Diseases</a>
    </div>
  </div>

  <!-- Header -->
  <header class="w3-container w3-blue w3-center" style="padding:70px 16px">
    <h1 class="w3-margin w3-jumbo">How are you feeling? </h1>



  </header>

	<form method="POST" onsubmit="return validateForm()" action="diseases.php?num=<?php echo $_SESSION['die']; ?>"

  <form class="w3-container">
    <div class="w3-panel w3-padding-16">
      <div class="w3-half">
      <label class="w3-text-blue"><b>First Name</b></label>
        <input class="w3-input w3-border" type="text" placeholder="First Name" id = "name" name = "name">
				<span class="error-text" id="name-error"> <?php echo $nameError;?> </span>
      </div>
    </div>



    <div class="w3-panel w3-padding-16">
      <div class="w3-half">
      <label class="w3-text-blue"><b>Age</b></label>
        <input class="w3-input w3-border" type="text" placeholder="Age" id= "age" name = "age">
				<span class="error-text" id="age-error"> <?php echo $ageError;?> </span>
      </div>
    </div>

    <div class="w3-animate-opacity">
    <div class="w3-display-container w3-margin">
  <div class="w3-padding w3-display-right">
    <i class="fas fa-comment-medical w3-padding-64 w3-text-blue w3-hide-small" style='font-size:300px'></i>
  </div>
</div>
  </div>


  <div class="w3-panel w3-padding-16">
    <div class="w3-half">
    <label class="w3-text-blue"><b>Sex</b></label>
    <select class="w3-select w3-border" name="sx" id="sx">
			<span class="error-text" id= "sx-error" > <?php echo $sxError;?> </span>

      <option value="" disabled selected>Choose your Sex</option>
      <option value="1">Male</option>
      <option value="2">Female</option>
    </select>
  </div>
</div>



  <div class="w3-panel w3-padding-16">
<label class="w3-text-blue"><b>Symptoms</b></label>
<span class="error-text" id="symp-error"> <?php echo $sympError;?> </span>
<br>
<?php
$statement = $conn->prepare("SELECT Name, Symp_ID FROM Symp ");
$statement->execute();
$nm = $statement->fetchAll();



foreach ($nm as $value){?>
<input class="w3-check" type="checkbox" id= "symp" name= "sympArr[]" value= "<?php echo $value['Symp_ID']; ?>">
<label><?php echo $value['Name']; ?></label>
<?php }
?>


<p id="result"></p>

<div class="w3-panel w3-padding-16">
<button class="w3-btn w3-blue">Submit</button>
</br>
</br>
<span class="text"> Scroll down to see results after submitting! </span>



<span class="error-text" id="meta-error"> <?php echo $metaError;?> </span>
<input type="hidden" name="submitted"></input>
</div>
</div>
</form>
</form>


<!-- Footer -->



<footer class="w3-container w3-padding-64 w3-center w3-opacity">
  <div class="w3-xlarge w3-padding-32">

 </div>

 <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
<script   src="https://code.jquery.com/jquery-3.4.1.slim.min.js"   integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="   crossorigin="anonymous"></script>
</body>

</html>
