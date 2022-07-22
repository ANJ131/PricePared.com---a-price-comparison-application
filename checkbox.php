<?php require_once "connection.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
        <form method="post" action="checkbox3.php">
            
        <?php
            $records = mysqli_query($con,"select * from storetable where city='Rajkot'"); 
            while($data = mysqli_fetch_array($records))
            { 
            ?>
            
                <input type="checkbox" name='lang[]' value='<?php echo $data['umid']?>'> <?php echo $data['store_name'] , $data['location'] ?> <br/>
            <?php
            }
            ?>
                <br>
                <br>
        
            <?php
            $records1 = mysqli_query($con,"select * from item group by category"); 
            while($data1 = mysqli_fetch_array($records1))
            { 
            ?>
            
                <input type="radio" name='category' value='<?php echo $data1['category']?>'> <?php echo $data1['category']?> <br/>
            <?php
            }
            ?>


                  <br>
                <br>
            <input type="submit" value="Submit" name="submitcheckbox" >
        </form>

        
       
</body>
</html>



