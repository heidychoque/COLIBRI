<?php
/**
 * Created by PhpStorm.
 * User: Eunkyu
 * Date: 5/7/2017
 * Time: 7:40 PM
 */

    //conectar a base de datos
    $server = "localhost";
    $user = "root";
    $password = "";
    $bd = "tienda2";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    //variables para verificar datos en bd
    $email = $_POST['username'];
    $contras = $_POST['password'];

    //query para ver si existe el email
    $query1 = "SELECT email from usuario where email='$email'";
    $result1 = mysqli_query($conexion, $query1);

    //query para ver si la contrasena corresponde con el email
    $query2 = "SELECT contrasena from usuario where email='$email'";
    $result2 = mysqli_query($conexion, $query2);

    $row = $result2->fetch_assoc();
    echo "contrasena: " . $row["contrasena"];

    //Si existe el email y la contrasena
    if(mysqli_num_rows($result1) > 0) {
        if ($row["contrasena"] == $contras) {
            echo "<script>alert('Existe contrasena')</script>";
            header('Location: index2.html');
        }
        //Si existe el email pero no corresponde la contrasena
        else {
            echo "<script>alert('Ingrese la Contraseña Correcta')</script>";
        }
    }
    //No existe el email ingresado
    else {
        echo "<script>alert('La Cuenta No Existe')</script>";
        //header("Location: file:///C:/xampp/htdocs/colibri/login.html");
    }

?>
