<?php
if (isset($_POST['submit'])) {
     include "include/connection.php";

    $name = mysqli_real_escape_string($con, $_POST['user']);
    $mail = mysqli_real_escape_string($con, $_POST['email']);
    $password = $_POST['pass'];
    $password = $_POST['cpass'];

    $sql = "SELECT * FROM admin where email='{$mail}'";
    $res1 = mysqli_query($con, $sql) or die("query failed");
    if (mysqli_num_rows($res1) > 0) {
        echo "<script> alert('!USER ALREADY EXIT') </script>";
    } else {

    $sql_insert = "INSERT INTO admin(name,pass,email)
        VALUES ('$name','$password','$mail')";
        $res = mysqli_query($con, $sql_insert) or die("query failed");
        if ($res) {
            echo "<script> alert('!success') </script>";
            header("location:login.php");
        } else {
            echo "<script> alert('!failed') </script>";
        }
    }
}
