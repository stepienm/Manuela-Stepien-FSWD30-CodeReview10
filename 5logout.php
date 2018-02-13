<?php
	session_start();
	if (!isset($_SESSION['user'])) {
		header("Location: 3index.php");
	} else if(isset($_SESSION['user'])!="") {
		header("Location: 4Home.php");
	}
	if (isset($_GET['logout'])) {
		unset($_SESSION['user']);
		session_unset();
		session_destroy();
		header("Location: 3index.php");
		exit;
	}
?>