<?php
	ob_start();
	session_start();
	require_once '1connect.php';
	// if session is not set this will redirect to login page
	if( !isset($_SESSION['user']) ) {
		header("Location: 3index.php");
		exit;
	}
	// select logged-in users detail
	$res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);
	$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Welcome - <?php echo $userRow['userEmail']; ?></title>
	<link href="https://fonts.googleapis.com/css?family=Exo+2|Grand+Hotel|Libre+Franklin|Sacramento" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <style>
        body{
          background-image: url('https://lichtemotionist.de/wp-content/uploads/2017/02/waldleuchten12-1200x800.jpg')
      }
      .reg{
      background-color: rgba(255,255,255,0.6);
      padding: 10%;
    }
    button{
      background-color: #58D3F7;
    }
    .sign{
    	color: white;
    }
    </style>
</head>

<body>
	<div>
		<div>
			<nav class="navbar navbar-expand-md bg-info navbar-dark">
		      <a class="navbar-brand name" href="media.html" >
		        <h1>Big Library</h1>
		      </a>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class=" left collapse navbar-collapse" id="collapsibleNavbar">
		        <ul class="navbar-nav">
		          <li class="nav-item">
		          	 <a class="nav-link" href="#">Hi <?php echo $userRow['userEmail']; ?></a>
		          </li>
		        </ul>
		        
		        <div class="  navbar-form navbar-right">
		      
					<a class="sign" href="5logout.php?logout">Sign Out</a>

		        </div>
		      </div>  
		    </nav>
		</div>
	</div>

</body>
</html>

<?php ob_end_flush(); ?>