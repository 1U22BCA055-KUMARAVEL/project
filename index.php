<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Basic Page Needs
    ================================================== -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Pgpb</title>

    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

    <!-- Favicon
    ================================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon.png">

    <!-- Stylesheets
    ================================================== -->
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        /* To hide the horizontal scroll bar */
        body {
            overflow-x: hidden;
        }

        /* gif */
        .plant_gif0 {

            z-index: -2;
            width: 150px;
            transform: translate(-5px, -40px);
        }

        .plant_gif1 {

            z-index: -2;
            width: 150px;
            transform: translate(-5px, -30px);
        }

        .plant_gif2 {

            z-index: -2;
            width: 150px;
            transform: translate(-5px, 60px);
        }

        /* end of gif */

        .container {
            display: flex;
            justify-content: space-evenly;

        }

        .card1 {
            border-radius: 25px;
            background: #f5f5f8;
            box-shadow: 14px 14px 22px #d0d0d3,
                -14px -14px 22px #ffffff;
            width: 380px;
            height: 500px;

        }

        .card_para {
            width: 400px;
            
            color: rgb(4, 4, 4);
            padding: 100px;
            font-size: larger;
        }

        .nav_div {
            border: 1px solid black;



        }

        .side_div {
            border: 2px solid green;
            ;

        }

        .container1 {
            /* border: 2px solid black; */
            width: 1500px;
        }

        .navbar-header {
            /* border: 2px solid black; */
            transform: translate(-190px);

        }

        #admin_nav {

            width: 700px;
            padding-left: 100px;
            transform: translate(300px);
            /* border: 2px solid black; */
        }


        /* .social-links {
            display: flex;
            justify-content: space-between;
            width: 500px;
            transform: translate(500px);

        } */

        .keep_in_touch {
            transform: translate(-200px);
            width: 300px;
        }

        hr{
            
            background-color: black;
            width: 400px;
            
        }
    </style>
</head>

<body>

    <header id="masthead" class="site-header">
        <nav id="primary-navigation" class="site-navigation">
            <div class="container">

                <div class="navbar-header">

                    <a class="site-title"><span>Plant Growth Promoting</span> Bacteria</a>

                </div><!-- /.navbar-header -->

                <div class="collapse navbar-collapse" id="agency-navbar-collapse">

                    <ul id="admin_nav" class="nav navbar-nav navbar-right">




                        <li><a style="color: white;" href="#contact">Contact</a></li>
                       
                    
                    </ul>

                </div>
            </div>


        </nav><!-- /.site-navigation -->
    </header><!-- /#mastheaed -->


    <div id="hero" class="hero overlay">

        <div class="hero-content">

            <div class="hero-text">
                <h1>Happiness and bacteria have one thing in common; They multiply by dividing!</h1>
                <p>Lets find out which Bacteria is Good for your Plant</p>
                <a href="login/login.php" class="btn btn-border">Log in</a>
            </div><!-- /.hero-text -->
        </div><!-- /.hero-content -->
    </div><!-- /.hero -->

    <main id="main" class="site-main">

        <!-- Card -->

        <section class="site-section section-services gray-bg text-center">
            <div><h1>People Say About Farming<hr></h1></div> 
            
            <br><br>
            <div class="container">
                
                <div class="card1">
                    <p class="card_para">“If you tickle the earth with a hoe she laughs with a harvest.”</p>
                    <img class="plant_gif0" src="assets/img/delay_growing.gif">
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="container">
                    <div class="card1">
                        <p class="card_para">“Essentially, all life depends upon the soil… There can be no life without
                            soil and no soil without life; they have evolved together.”</p>
                        <img class="plant_gif1" src="assets/img/flower.gif">
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="card1">
                        <p class="card_para">“Keep your eyes on the stars, keep your feet on the ground.” </p>
                        <img class="plant_gif2" src="assets/img/flower_doodle.gif">
                    </div>
                </div>
            </div>
        </section><!-- /.section-services -->



      

    </main><!-- /#main -->

    <footer id="colophon" class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 col-xs-6">
                    <p><img class="keep_in_touch" src="assets/img/keepintouch.gif"></p>
                </div>
                <!-- For keep in touch content used inline css -->
                <div style="transform: translate(100px,-50px);"
                    class="col-lg-offset-4 col-md-3 col-sm-4 col-md-offset-2 col-sm-offset-0 col-xs-6 ">
                    <h2>Keep in touch</h2><br><br>
                    <ul id="contact" class="list-unstyled contact-links">
                        <li><i class="fa fa-envelope" aria-hidden="true"></i><a
                                href="mailto:info@agencyperfect.com">Rvscollege@edu.in</a></li>
                        <li><i class="fa fa-phone" aria-hidden="true"></i><a href=" 0422 268 7421">04222687421
                            </a></li>

                        <li><i class="fa fa-map-marker" aria-hidden="true"></i>
                            <p>242 – B, Trichy Road,
                                Sulur,
                                Coimbatore – 641 402.
                                Tamilnadu,
                                South India.</p>
                        </li>
                    </ul>
                </div>


            </div>
        </div>
        <!-- end of contact -->

    <!-- /.copyright -->
    </footer><!-- /#footer -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
    <script src="assets/js/jquery.countTo.min.js"></script>
    <script src="assets/js/jquery.shuffle.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links
            $("a").on('click', function (event) {

                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 800, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
        });
    </script>

</body>

</html>