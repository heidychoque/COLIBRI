<?php
/**
 * Created by PhpStorm.
 * User: Eunkyu
 * Date: 5/7/2017
 * Time: 7:40 PM
 */

    $server = "localhost";
    $user = "root";
    $password = "";
    $bd = "tienda";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    $email = $_POST['E-mail'];
    $contras = $_POST['Contraseña'];


    $query1 = "SELECT email from usuario where email='$email'";
    $result1 = mysqli_query($query1);

    $query2 = "SELECT contraseña from usuario where email='$email'";
    $result2 = mysqli_query($query2);


    if(mysqli_num_rows($result1) > 0 && mysqli_num_rows($result2) > 0) {
            //si result2 coincide, que vaua a su perfil
            //si no, entonces crear la cuenta
            header("Location: file:///C:/Users/Eunkyu/Desktop/colibri/index.html");
    }
    elseif (mysqli_num_rows($result1) && mysqli_num_rows($result2) == 0) {
        echo "<script>alert('Ingrese la Contraseña Correcta')</script>";
    }
    else {
        echo "<script>alert('La Cuenta No Existe')</script>";
    }

?>