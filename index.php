<?php
$insert = false;
if(isset($_POST['name'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "<br>Success connecting to the db 1<br>";

    // Collect post variables
    $name = $_POST['name']; 
    $age =  $_POST['age'];
    $gender =  $_POST['gender'];
    $rollno =  $_POST['rollno'];
    $dept =  $_POST['dept'];
    $bio =  $_POST['bio'];
    $sql = "INSERT INTO `trip`.`rj` (`name`, `age`, `gender`, `rollno`, `dept`, `bio`)
      VALUES ('$name', '$age', '$gender', '$rollno', '$dept', '$bio')";
    // echo $sql."<br>";
    // echo "Success connecting to the db 2<br>";

    // Execute the query
     if($con->query($sql) == true){ 
        // echo "Successfully inserted";

        // Flag for successful insertion
        $insert = true;
    }
    else{
        // echo "ERROR: $sql <br> $con->error";
    }
    // echo "Success connecting to the db 3";

    // Close the database connection
    $con->close();
}

?>

<!doctype html>

<html>
                
<head> 
       <title>USA Trip Form | R.j.College</title>   
 
       <style>
#img {
    top: 0px;
    position: absolute;
    width: 100%;
    left: 0px;
    opacity: 0.7;
    height: 48pc;
    z-index: -1;
}        
textarea, input {
    border: 1px solid black;
    padding: 10px 0px 10px 0px;
    width: 100%;
}
label {
    font-size: 1.4rem;
    font-weight: bold;
}
* {
    box-sizing: border-box;
}
body {
    margin: 0px;
    padding: 0px;
} 
div#container {
    margin: auto;
    width: 44%;
}    
#submit,#reset{
    width:89px;
}         
       </style>
 
       <script>
         
       </script>
</head>
              
<body> 
       <div id = "container">
       <img src = "rjcollege.jpg" id = "img"> 
              <h1 id = "h_primary">Welcome to R.J.College USA Trip Form</h1>
              <h5 id = "h_secondary">Please Fill the Required Field</h5>
             <?php if($insert == true){
      echo '<p id="p2">Thanks for joinnig the US Trip</p>';
      }     ?>
              <form name="form" method="post" id="form" action = "">
                      <div id="Dname">
                         <label name="name">Name: </label>
                         <input type="text" name="name" id="name" placeholder="Enter Your Name: " >
                     </div>
                     </br>
                     <div id="Dage">
                         <label name="age">Age: </label>
                         <input type="number" name="age" id="age" placeholder="Enter Your Age: " >
                     </div>
                     </br>
                     <div id="Dgender">
                         <label name="gender">Gender: </label>
                         <input type="text" name="gender" id="gender" placeholder="Enter Your Gender: " >
                     </div>
                     </br>
                     <div id="Drollno">
                         <label name="rollno">Roll No: </label>
                         <input type="number" name="rollno" id="rollno" placeholder="Enter Your Roll No.: ">
                     </div>
                     </br>
                     <div id="Ddept">
                         <label name="dept">Department: </label>
                         <input type="text" name="dept" id="dept" placeholder="Enter Your Department Name: ">
                     </div>
                     </br>
                     <div id="Ddesc">
                         <label name="bio">Description: </label></br>
                         <textarea name="bio" rows="5" cols="35"></textarea> 
                     </div>
                     </br>
                        <div id="Dsubmit">
                         <input type="submit" name="submit" id="submit" value="Submit">
                         <input type="reset" value="Reset" name="reset" id="reset">

                     </div>
    
              </form>
       </div>
  
</body>
                
</html>
