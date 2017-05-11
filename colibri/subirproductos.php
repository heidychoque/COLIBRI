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
    $query = "SELECT MAX(codproducto) AS max FROM producto";
    $result3 = mysqli_query($conexion, $query);
    $row = mysqli_fetch_array($result3);
    $codmax = $row['max'];
    echo $codmax;
    $codprod = $codmax +1;

    //Insert image
    $path = '../colibri/Images/';
    file_put_contents($path, $fotos);

    $insert = "INSERT INTO producto (codproducto, precio, descripcion, codcategoria, nombre) VALUES ('$codprod', '$precio', '$descripcion','$codcateg', '$nomprod')";

    //Ejecucion de Query
    $result = mysqli_query($conexion, $insert)
        or die ("Error insertar al bd");

        //Desconectar
        mysqli_close($conexion);
        echo "Datos insertados correctamente";


?>
