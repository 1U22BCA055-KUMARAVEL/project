<?php
require_once('../login/database.php');
$error = "";
if(isset($_POST['search']))
{

   // include 'db.php';	  
	$result = mysqli_query($dbConn,"SELECT * FROM dataset where 
   plant_no = '".$_POST['plant']."' and order_no='".$_POST['order']."' and family_no='".$_POST['family']."' 
   and genus_no='".$_POST['genus']."'and species_no='".$_POST['species']."'and type_no='".$_POST['p_type']."' and source_no = '".$_POST['source']."'");
	while($row = mysqli_fetch_array($result))
	{
   $result=$row['PGPB']; 
	echo "<script>alert('".$result."');window.location.href = 'search.php';</script>";
	}
	

	}
?>
<!DOCTYPE html>
<html>

<head>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- <link href="css/style.css" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="assets/css/responsive.css" rel="stylesheet"> -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@100&display=swap"
      rel="stylesheet">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Roboto:wght@100;300&display=swap"
      rel="stylesheet">


   <style>
      /* #myVideo {
         position: fixed;
         right: 0;
         bottom: 0;
         min-width: 100%;
         min-height: 100%;
         z-index: -2;
         filter: blur(2px);
      } */

      * {
         font-family: roboto;

         color: rgb(12, 12, 12);
      }

      body {
         /* background-image: url("img/hero.jpg");
         background-repeat: no-repeat;*/
         background-attachment: scroll;
         background-size: cover;




      }

      select {
         width: 250px;
         height: 25px;
         border: 1px solid rgb(86, 86, 86);
         background-color: transparent;
         border-right: none;
         border-left: none;
         border-top: none;

      }

      select:focus {
         outline: none;
         transition: 0.3s ease;
      }

      option:focus,
      option:focus {
         transition: 0.3s ease;
      }

      .container {
         background-color: rgba(182, 179, 179, 0.696);
         float: right;
         border-radius: 25px;
         display: flex;
         justify-content: center;
         align-items: center;
         align-content: center;
         flex-direction: column;
         width: 45%;
         height: 700px;
         transform: translate(-100px, -300px);
         box-shadow: -8px -8px 25px #a0dffe, 8px 8px 52px #51aad3;
      }

      /* pgpb Output */

      .output {

         border: none;
         width: 500px;
         height: 200px;
         transform: translate(750px, 750px);

      }

      ::placeholder {
         color: black;
         padding-left: 10px;
      }


      input {
         padding: 12px;
         font-size: larger;
         font-family: 'Roboto', sans-serif;
         color: rgb(5, 5, 5);
         padding: 20px;
         width: 550px;
         height: 70px;
         background: rgba(173, 170, 170, 0.899);
         border: none
      }

      input:focus {
         outline: none;

      }

      /* /end of output */
      label {
         color: black;

      }

      .find_btn {
         width: 300px;
         height: 80px;
         font-family: roboto;
         transform: translate(880px, 420px);
         font-size: larger;
         border-radius: 30px;
         border: none;
         border-color: rgb(203, 220, 236);
      }

      .find_btn:hover {
         background-color: rgb(84, 220, 84);
         transition: 0.4s ease;
         border-color: rgb(56, 203, 98);
         outline: none;
         box-shadow: -2px -1px 25px #23a249;
      
      }

      .search {
         height: 50px;
      }

      .plant_gif {

         width: 100px;
         transform: translate(300px, -70px);
      }
     
   </style>
</head>

<body background="https://rakeshloginform.w3spaces.com/pot.jpg">

   <form action="search.php" method="POST">


      <div class="navbar-header">

         <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a class="site-title">
            <span
               style="font-family: roboto;font-size:45px;">Lets&nbsp;</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-family:Montserrat;font-size: 30px;color:rgb(139, 2, 0);">Find PGPB</span></a>

      </div>
      <img class="plant_gif" src="img/plant-gif.gif">

      <div class="output">
         <input placeholder=" PGPB :">
      </div>


      <div class="container">

         <div class="plant_div">
            <label>Plant</label>
            <select class="form-control" name="plant" id="plantName">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from plant");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['plant_no'];?>"><?php echo $sqloff['PLANT'];?></option>
            <?php } ?></select>
            </div>
         <br><br><br>
         <div class="order_div">
            <label>Order</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="order" id="Ordername">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from t2");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['order_no'];?>"><?php echo $sqloff['order'];?></option>
            <?php } ?></select></div>
         <br><br><br>

         <div class="family_div">
            <label>Family</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="family" id="FamilyName">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from family");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['family_no'];?>"><?php echo $sqloff['FAMILY'];?></option>
            <?php } ?></select></div>
         <br><br><br>

         <div class="genus_div">
            <label>Genus</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="genus" id="GenusName">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from genus");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['genus_no'];?>"><?php echo $sqloff['GENUS'];?></option>
            <?php } ?></select></div>
         <br><br><br>


         <div class="species_div">
            <label>Species</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="species" id="SpeciesName">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from species");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['species_no'];?>"><?php echo $sqloff['SPECIES'];?></option>
            <?php } ?></select></div>
         <br><br><br>

         <div class="type_div">
            <label>Type</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="p_type" id="Typename">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from type");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['type_no'];?>"><?php echo $sqloff['TYPE'];?></option>
            <?php } ?></select></div>
         <br><br><br>

         <div class="com_div">
   <label class="com_label">Commercial Classification</label>&nbsp;
   <select class="form-control" name="com_cls" id="comclsname">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from commercial_classification");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['cc_no'];?>"><?php echo $sqloff['COMMERCIAL_CLASSIFICATION'];?></option>
            <?php } ?></select></div>
         <br><br><br>

         <div class="source_div">
            <label>Source</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select class="form-control" name="source" id="Sourcename">															
            <option value="">--Select Plant--</option>	
            <?php
            $sql1=mysqli_query($dbConn,"select * from source");
            while($sqloff=mysqli_fetch_array($sql1))
            {?>
            <option value="<?php echo $sqloff['source_no'];?>"><?php echo $sqloff['SOURCE'];?></option>
            <?php } ?></select></div>
         <br><br>


      </div>
      <button class="find_btn" name="search" id="search"><img class="search" src="img/search.gif">&nbsp;&nbsp;&nbsp;&nbsp;</button>
   </form>
</body>

<script>



</script>

</html>