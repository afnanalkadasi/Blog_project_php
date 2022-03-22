<!DOCTYPE html>
<html>


    <head>
       
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<?php include('./header.php'); ?>
<?php 
session_start();
if(isset($_SESSION['login_id']))
header("location:index.php?page=home");
?>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin | Blog Site</title>
 	

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
  <!-- For google icons  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <style>

.background {
	background: url("../assets/img/book-bg.jpg") top center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 130%;
  background-blend-mode: darken;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: -1;

}

.con2 {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  width: 500px;
  margin: 10vh auto;
  background: transparent;
  box-shadow: 0 0 15px rgb(255, 255, 255);
  border-radius: 25px;
}
h2 {
  font-size: 30px;
}

form {
  padding: 10px;
  display: flex;
  flex-direction: column;
  width: 85%;
}
.form-item {
  display: flex;
  width: 90%;
  background: transparent;
  margin: 10px auto;
  border-radius: 15px;
  align-items: center;
  border-bottom: 1px solid rgb(82, 81, 81);
}
.form-item:hover {
  border: 1px solid rgb(82, 81, 81);
}
input {
  background: transparent;
  width: 80%;
  height: 30px;
  outline: none;
  border: none;
  margin: auto;
  color: white;
  font-size: 17px;
}

span {
  user-select: none;
  margin: 5px;
  color: rgb(172, 172, 172);
  background: rgba(85, 81, 81, 0.637);
  padding: 5px;
  border-radius: 18px;
}
button[type="submit"] {
  width: 180px;
  font-size: 20px;
  margin: 10px auto;
  padding: 8px;
  background: rgba(122, 123, 116, 0.72);
  border: none;
  color: white;
}
button[type="submit"]:hover {
  background: rgba(222, 236, 34, 0.678);
}
p:first-of-type {
  margin: 0;
}
.options {
  display: flex;
  margin: 10px auto;
  justify-content: center;
  flex-wrap: wrap;
}
button {
  font-size: 18px;
  padding: 5px 16px;
  margin: 5px 15px;
  width: 180px;
  background: transparent;
  color: white;
  cursor: pointer;
  transition: all 0.7s ease;
}
.fb:hover {
  background: rgba(55, 53, 207, 0.637);
  border: none;
  box-shadow: 0 0 2px rgba(55, 53, 207, 0.637);
}
.gl:hover {
  background: rgba(207, 53, 53, 0.671);
  border: none;
  box-shadow: 0 0 2px rgba(207, 53, 53, 0.671);
}

p {
  font-size: 18px;
  margin: 5px;
}
a {
  color: white;
}
a:hover {
  color: grey;
}

@media screen and (max-width: 550px) {
  .container {
    width: 90%;
  }
}

        </style>
    </head>

<body>
<main id="main" class="">
 <!-- for background -->
 <div class="background"></div>

 <!-- for form container -->
 <div class="container con2"  id="login-right">
 <br>

 <h2>Login</h2>
   <form action="" id="login-form">

     <div class="form-item">
       <span class="material-icons-outlined">
         account_circle
       </span>
       <input type="text" id="username" name="username" placeholder=" Username">
     </div>
	 <br>

     <div class="form-item">
       <span class="material-icons-outlined">
         lock
       </span><br>

       <input type="password" id="password" name="password" placeholder="password">
     </div>
<br>
     <button>Login</button>
	 <br>


   </form>

   	
 </div>
    
   
  </main>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
	</script>
	<script>
	$('#login-form').submit(function(e){
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'ajax.php?action=login',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					location.reload('index.php?page=home');
				}else{
					$('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>
</body>
</html>
