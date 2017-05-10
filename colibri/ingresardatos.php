<?php
/**
 * Created by PhpStorm.
 * User: Eunkyu
 * Date: 5/6/2017
 * Time: 3:43 PM
 */
    
    //conectar a base de datos
    $server = "localhost";
    $user = "root";
    $password = "";
    $bd = "tienda";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    //variables para insertar a base de datos
    $nombre = $_POST['Nombre'];
    $email = $_POST['E-mail'];
    $contras = $_POST['Contrasena'];
    $pais = $_POST['Pais'];
    $tel = $_POST['Telefono'];

    $insert = "INSERT INTO usuario (Nombre, email, contrasena, pais, telefono) VALUES ('$nombre', '$email', '$contras', '$pais', '$tel')";

    //Ejecucion de query
    $result = mysqli_query($conexion, $insert)
        or die ("Error insertar al bd");

    //Desconectar
        mysqli_close($conexion);
        echo "Datos insertados correctamente";

?>
