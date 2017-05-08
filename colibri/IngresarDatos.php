<?php
/**
 * Created by PhpStorm.
 * User: Eunkyu
 * Date: 5/6/2017
 * Time: 3:43 PM
 */

    $server = "localhost";
    $user = "root";
    $password = "";
    $bd = "tienda";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    $nombre = $_POST['Nombre'];
    $email = $_POST['E-mail'];
    $contras = $_POST['Contraseña'];
    $pais = $_POST['Pais'];
    $tel = $_POST['Telefono'];

    $insert = "INSERT INTO usuario VALUES ($nombre', '$email', '$contras', '$pais', '$tel')";

    $result = mysqli_query($conexion, $insert)
        or die ("Error insertar al bd");

        mysqli_close($conexion);
        echo "Datos insertados correctamente";

?>