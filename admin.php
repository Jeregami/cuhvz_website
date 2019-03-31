<!DOCTYPE html>
<html lang="en">
<?php
require('includes/config.php');
$title = 'CU HvZ | Profile';

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); }
if(!$user->is_admin()){ header('Location: login.php'); }
?>
<head>
	<?php require('layout/header.php'); ?>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker3.standalone.min.css" />
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/tabs.js"></script>

  <script>
    $(function () {
      $('.date').datepicker({
        format: 'mm/dd/yyyy',
        startDate: "today",
        orientation: "bottom left",
        autoclose: true,
				daysOfWeekDisabled: "0,2,3,4,5,6"
      });
    });
  </script>

</head>

<?php

$database = new Database();
$onLoad = "Users";
if(isset($_POST['submit'])){
	// sets the tab to the correct page after submission
	if(isset($_POST['tab'])){
		$onLoad = $_POST['tab'];
	}
	// runs the code from the submission
	if(isset($_POST['run'])){
		$root = $_SERVER["DOCUMENT_ROOT"];
		if(empty($root)){
		  $root = "/home/josh/cuhvz_website";
		}
		include $root.$_POST['run'];
	}
}
?>

<body onload="openTab(event, '<?php echo $onLoad; ?>')">

	<?php include 'layout/navbar.php'; ?>

<!-- BEGIN DOCUMENT -->

<!-- HVZ HEADLINE SECTION
___________________________________________-->

<section class="lightslide contentwithnav">


	 <div class="content lightslide-list" style="overflow: auto;">
		 <div style="margin: auto; text-align: center;">
	 		<span class="tab">
	 			<button class="tablink" id="Users-button" onclick="openTab(event, 'Users')">Users</button>
	 			<button class="tablink" id="Database-button" onclick="openTab(event, 'Database')">Database</button>
	 		</span>
	 		<span class="tab">
			<button class="tablink" id="Weeklong-button" onclick="openTab(event, 'Weeklong')">Weeklong</button>
	 			<button class="tablink" id="Scripts-button" onclick="openTab(event, 'Scripts')">Scripts</button>
	 		</span>
	 	</div>

	 	<div id="Users" class="tabcontent" style="display: block;">
	 			<?php
	 				include $_SERVER['DOCUMENT_ROOT']."/components/admin/user-functions.php";
	 			?>
	 	</div>

		<div id="Database" class="tabcontent">
	 			<?php
	 				include $_SERVER['DOCUMENT_ROOT']."/components/admin/database-functions.php";
	 			?>
	 	</div>

	 	<div id="Weeklong" class="tabcontent">
	 		<?php
	 			include $_SERVER['DOCUMENT_ROOT']."/components/admin/weeklong-functions.php";
	 		?>
	 	</div>

	 	<div id="Scripts" class="tabcontent">
	 		<?php
	 			include $_SERVER['DOCUMENT_ROOT']."/components/admin/script-functions.php";
	 		?>
	 	</div>

 </div> <!-- end container -->

</section>

<!-- END HVZ HEADLINE SECTION -->







<!-- GAME TIME COUNTDOWN SECTION
___________________________________________-->

<?php
// insert clock

if($weeklong->active_event()){
  if($user->is_in_event($_SESSION["weeklong"])){
    require('weeklong/clock.php');
  }
}
//include header template
require('layout/footer.php');
?>

</body>
</html>
