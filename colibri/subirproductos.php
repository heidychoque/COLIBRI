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

    //variables para insertar a base de datos
    $nomprod = $_POST['Nombre'];
    $categ = $_POST['Categoria'];
    $precio = $_POST['Precio'];
    $descripcion = $_POST['Descripcion'];
    $fotos = $_POST['Archivo1'];
    echo $fotos;

    //verify categoria
    $findcateg = "SELECT codcategoria FROM categoria WHERE categoria ='$categ'";
    $result2 = mysqli_query($conexion, $findcateg);

    //Ingresar categoria
    if(mysqli_num_rows($result2) > 0) {
        $row = $result2->fetch_assoc();
        $codcateg = $row["codcategoria"];
        echo $codcateg;
    }
    //No existe categoria
    else {
        $query2 = "SELECT MAX(codcategoria) AS max FROM categoria";
        $result4 = mysqli_query($conexion, $query2);
        $row2 = mysqli_fetch_array($result4);
        $codmax2 = $row2['max'];
        echo $codmax2;
        $codcateg = $codmax2 +1;

        $insert2 = "INSERT INTO categoria (codcategoria, categoria) VALUES ('$codcateg', '$categ')";
        $result5 = mysqli_query($conexion, $insert2);
    }

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
