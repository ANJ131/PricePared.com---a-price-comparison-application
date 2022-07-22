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
            $records1 = mysqli_query($con,"select * from item group by category"); 
            while($data1 = mysqli_fetch_array($records1))
            { 
            ?>
            
                <input type="radio" name='category' value='<?php echo $data1['category']?>'> <?php echo $data1['category']?> <br/>
            <?php
            }
            ?>




            <input type="submit" value="Submit" name="submitcheckbox2">
        </form>

        
       
</body>
</html>



