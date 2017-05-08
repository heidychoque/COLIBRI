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
    $bd = "tienda";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    //variables para verificar datos en bd
    $email = $_POST['E-mail'];
    $contras = $_POST['Contraseña'];

    //query para ver si existe el email
    $query1 = "SELECT email from usuario where email='$email'";
    $result1 = mysqli_query($query1);

    //query para ver si la contrasena corresponde con el email
    $query2 = "SELECT contraseña from usuario where email='$email'";
    $result2 = mysqli_query($query2);

    //Si existe el email y la contrasena
    if(mysqli_num_rows($result1) > 0 && mysqli_num_rows($result2) > 0) {
            //si result2 coincide, que vaua a su perfil
            //si no, entonces crear la cuenta
            header("Location: file:///C:/Users/Eunkyu/Desktop/colibri/index2.html");
    }
    //Si existe el email pero no corresponde la contrasena
    elseif (mysqli_num_rows($result1) && mysqli_num_rows($result2) == 0) {
        echo "<script>alert('Ingrese la Contraseña Correcta')</script>";
    }
    //No existe el email ingresado
    else {
        echo "<script>alert('La Cuenta No Existe')</script>";
    }

?>
