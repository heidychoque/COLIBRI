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
    $bd = "tienda2";

    $conexion = mysqli_connect($server, $user, $password, $bd)
        or die ("Error en la Conexion");
        echo ("Conexion Ejecutada");

    //verify codigo producto
    $findcodp = "SELECT codproducto FROM producto";
    $findmax = "SELECT MAX codproducto FROM $findcodp";
    $result3 = mysqli_query($conexion, $findmax);

    $row = $result3->fetch_assoc();
    $codprod = $row["codproducto"];
    echo $codprod;
    $codsiguiente = $codprod + 1;

    //Insert image
    $path = '../colibri/Images/';
    file_put_contents($path, $fotos);

    $insert = "INSERT INTO producto (codproducto, precio, descripcion, codcategoria, nombre) VALUES ('$codsiguiente', '$precio', '$descripcion','$codcateg', '$nomprod')";

    //Ejecucion de Query
    $result = mysqli_query($conexion, $insert)
        or die ("Error insertar al bd");

        //Desconectar
        mysqli_close($conexion);
        echo "Datos insertados correctamente";


?>
