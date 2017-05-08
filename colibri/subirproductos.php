<?php
/**
 * Created by PhpStorm.
 * User: Eunkyu
 * Date: 5/8/2017
 * Time: 9:22 AM
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
    $nomprod = $_POST['Nombre'];
    $categ = $_POST['Categoria'];
    $precio = $_POST['Precio'];
    $descripcion = $_POST['Descripcion'];
    $fotos = $_POST['Archivo1'];

    $insert = "INSERT INTO usuario VALUES ('$nomprod', '$categ', '$precio', '$descripcion', '$fotos')";

    //Ejecucion de Query
    $result = mysqli_query($conexion, $insert)
        or die ("Error insertar al bd");

        //Desconectar
        mysqli_close($conexion);
        echo "Datos insertados correctamente";

?>