
<?php require_once "controllerUserData.php"; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="admin.js" defer></script>
    <!-- <script src="https://kit.fontawesome.com/a81368914c.js"></script> -->
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <!-- <title>Admin Panel</title> -->
    <title> Admin Panel</title>
</head>
<body>
    <div class="navbar">
        <a class="active" href="MAIN_FRONT.html" style="float: left; font-weight: 600; text-shadow: 15px; color:white ;">PricePared.com  </a>
        <!-- <button type="button" class="btnn"><a href="logout-user.php">Logout</a></button> -->
        <a href="logout-user.php">Logout</a>
    </div>
    <div class="season_tabs">
        <div class="season_tab">
            <input type="radio" id="tab-1" name="tab-group-1" checked>
            <label class="extra" for="tab-1">Dashboard</label>
            <div class="season_content">
                <span>
                    <div class="content">
                        <div class="welcomebox">
                            <img src="admin.png" alt="" height="250px" width="auto">
                            <!-- <h1>Welcome to admin panel!</h1> -->
                            <h1>Welcome to admin panel</h1>
                            <h3>What would you want to do today?</h3>
                        </div>
                    </div>
                    
                </span>
            </div> 
        </div>
        <div class="season_tab">
            <input type="radio" id="tab-0" name="tab-group-1">
            <label class="extra" for="tab-0">List Items</label>
            
            <div class="season_content">
                <span> tab1
                </span>
            </div> 
        </div>
        <div class="season_tab">
            <input type="radio" id="tab-2" name="tab-group-1">
            <label class="extra" for="tab-2">List Customers</label>
            
            <div class="season_content">
                <span>
                <div class="w3-container">
                <center>
            <!-- <div style="background-color: rgb(15, 172, 159); font-size: 50px; font-weight: 700">Customer Details</div> -->
            <h2>Customer Details</h2>
            
            <!-- <table border="1" style="background-color:white"> -->
              <table class="w3-table-all">
            <tr class="w3-orange">
                <td>name</td>
                <td>email</td>
                <!-- <td>password</td> -->
                <td>contact</td>
                <td>address</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>

            <?php

            // include "connection.php"; // Using database connection file here

            $records = mysqli_query($con,"select * from usertable"); // fetch data from database

            while($data = mysqli_fetch_array($records))
            {
            ?>
            <tr>
                <td><?php echo $data['name']; ?></td>
                <td><?php echo $data['email']; ?></td>
                 
                <td><?php echo $data['contact']; ?></td>
                <td><?php echo $data['address']; ?></td>  
                <td><a href="">Edit</a></td>
                <td><a href="">Delete</a></td>
            </tr>	
            <?php
            }
            ?>
            </table>
            </center>
          </div>
                  <span>
            </div> 
        </div>
         
        <div class="season_tab">
            <input type="radio" id="tab-3" name="tab-group-1">
            <label class="extra" for="tab-3">Add Items</label>
          
            <div class="season_content">
                <span>tabik 3</span>
            </div> 
        </div>

        <div class="season_tab">
            <input type="radio" id="tab-4" name="tab-group-1">
            <label class="extra" for="tab-4">Edit Update Manager</label>
          
            <div class="season_content">
                <span>tabik 4</span>
            </div> 
        </div>

        <div class="season_tab">
            <input type="radio" id="tab-5" name="tab-group-1">
            <label class="extra" for="tab-5">Add Store
            </label>
          
            <div class="season_content">
                <span>
  <div class="add_store_form">
    <!-- <a href="index_form.html">ADD STORE</a> -->
    <form action="admin.php" method="post" class="form">      
					<!-- <img src="avatar.jpg"> -->
					<!-- <img src="avatar.svg"> -->
				   <h3>Register Store</h3>

    <!-- <form action="admin.php" method="post" class="form">
      <h1 class="text-center">Register Store</h1> -->
      <!-- <center> <p><button type="reset">.</button></p></center> -->
      <!-- Progress bar -->
      <div class="progressbar">
        <div class="progress" id="progress"></div>
        
        <div class="progress-step progress-step-active" data-title="Store Details"></div>
        <div class="progress-step" data-title="Update Manager Details"></div>
      </div>

      <!-- Steps -->
      <div class="form-step form-step-active">
        <div class="input-group">
          <label class="heading" for="city">Enter City</label>
          <input type="text" name="city" id="city" placeholder="Enter City" />
        </div>
        <div class="input-group">
            <label class="heading" for="location">Enter Location</label>
            <input type="text" name="location" id="location" placeholder="Enter Location" />
        </div>
        <div class="input-group">
          <label class="heading" for="store">Enter Store</label>
          <input type="text" name="store" id="store" placeholder="Enter Store"/>
        </div>

        <div class="btns-group">
            <!-- <input type="submit" name="Insert" value="Submit" class="btn" /> -->
          <!-- <input type="submit" name="Insert" value="Insert" class="btn" /> -->
            <a href="#" class="btn btn-next">Next</a>
         
          
        </div>
        <!-- <input type="submit" name="signup" value="Register" class="form-btn"> -->
      </div>

      <div class="form-step">

        <div class="input-group">
          <label class="heading" for="name">Update Manager Name</label>
          <input type="text" name="u_name" id="name" placeholder="Update Manager Name" />
        </div>

        <div class="input-group">
          <label class="heading" for="age">Age</label>
          <input type="text" name="u_age"  id="age" placeholder="Update Manager Age"/>
        </div>

        <div class="input-group">
            <label class="heading" for="contact">Contact Number</label>
            <input type="text" name="u_contact" id="password" placeholder="Contact Number"/>
          </div>

          <div class="input-group">
            <label class="heading" for="email">Email</label>
            <input type="text" name="u_email" id="email" placeholder="Email Address"/>
          </div>

          
          <!-- <div class="input-group">
            <label class="heading" for="Username">User Name</label>
            <input type="text" name="password" id="password" placeholder="User Name"/>
          </div> -->
  
          <div class="input-group">
            <label class="heading" for="password">Password</label>
            <input type="password" name="u_password" id="password" placeholder="Password"/>
          </div>

        <div class="btns-group">
          <a href="#" class="btn btn-prev">Previous</a>
          <input type="submit" name="Insert" value="Submit" class="btn" />
          <!-- <center><p><button type="reset">Reset</button></p></center> -->
        </div>
      </div>
    </form>
  </div>
                </span>
            </div> 
        </div>

        <div class="season_tab">
            <input type="radio" id="tab-6" name="tab-group-1">
            <label class="extra" for="tab-6">Analytics</label>
          
            <div class="season_content">
                <span>tabik 6</span>
            </div> 
        </div>
         
     </div>
     
</body>
</html>