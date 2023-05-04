<?php
echo"loginform";

$db= mysqli_connect('localhost','root','','testdb');

if(!$db) {
    echo "Database";
}

$name= $_POST['name'];
$email = $_POST['email'];
$name1= $_POST['name1'];
$email1 = $_POST['email1'];
$name2= $_POST['name2'];
$email2 = $_POST['email2'];
$name3= $_POST['name3'];
$email4 = $_POST['email4'];

$select = "SELECT * FROM loginform WHERE 
name = '".$name."' AND email = '".$email."' AND 
name1 = '".$name1."' AND email1 = '".$email1."' AND
name2 = '".$name2."' AND email2 = '".$email2."' AND
name3 = '".$name3."' AND email3 = '".$email3."'";

echo"$select";
$result = mysqli_query($db,$select);
$count = mysqli_num_rows($result); 

echo"insertdata";

if($count ==1){
    echo json_encode("error");
}

else{
    $insert = "INSERT INTO loginform(name,email,name1,email1,name2,email2,name3,email3,)
    VALUES('".$name."','".$email."','".$name1."','".$email1."','".$name2."','".$email2."','".$name3."','".$email3."')";

$query = mysqli_query($db,$insert);
if($query) {
    echo json_encode("Success");
}
}
?>
