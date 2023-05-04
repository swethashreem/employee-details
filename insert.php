<?php

$db= mysqli_connect('localhost','root','','testdb');

if(!$db) {
    echo "Database";
}

$eid = $_POST['eid'];
$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];
$phone = $_POST['phone'];

$select = "SELECT * FROM logintbl WHERE 
eid = '".$eid."' AND name = '".$name."' 
AND email = '".$email."' AND address ='".$address."' 
AND phone = '".$phone."'";

echo "$select";
$result = mysqli_query($db,$select);
$count = mysqli_num_rows($result);

echo "insert";

if ($count == 1) {
    echo json_encode("error");
}else{
      

     $insert = "INSERT INTO logintbl(eid,name,email,address,phone)
     VALUES(1, 'Leanne Graham', 'Sincere@april.biz','Kulas Light,Apt. 556,Gwenborough',1-770-736-8031 x56442)";
    $query = mysqli_query($db,$insert);
    if ($query) {
        echo json_encode("Success");
    }
}


?>