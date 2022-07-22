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
    
<form method="post" action="">





<?php
        if(isset($_POST['submitcheckbox']) ){
            if(!empty($_POST['lang'])) {
                // echo "products"; 
                // foreach($_POST['lang'] as $value3){
                //  $records3   = mysqli_query($con,"select * from storetable where mallid=$value3");
                //  while($data3 = mysqli_fetch_assoc($records3))
                //  {
                //     echo $data3['store_name'];
                //  }
                // }
                //  echo '<br>';


        





                 $val1=$_POST['category'];
                 $records1 = mysqli_query($con,"select * from product where category='$val1'");

                while($data1 = mysqli_fetch_array($records1))
                    {
                        echo " " .$data1['products']. ", "; 
                        $nval= $data1['products'];

                        foreach($_POST['lang'] as $value){
                            $records = mysqli_query($con,"select * from item where mallid='$value' AND products='$nval'");
                            while($data = mysqli_fetch_array($records))
                                {
                                    // echo $data['price'];   
                                    echo " " .$data['price']. ", "; 
                                }
                        }
                        echo '<br>';
                    }


                
            }

            
        }
        ?>


</form>
        
       
</body>
</html>



