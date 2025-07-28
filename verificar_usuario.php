<?php
require 'funciones/conecta.php';
$con = conecta();

if (isset($_POST['correo'], $_POST['pass'])) {
    $correo = $_POST['correo'];
    //$pass = md5($_POST['pass']); 
    //$pass = $_POST['pass']; 

    $query = "SELECT * FROM empleados WHERE correo = '$correo' AND pass = '$pass' AND eliminado = 0";
    $resultado = mysqli_query($con, $query);

    if (mysqli_num_rows($resultado) > 0) {
        session_start();
        $usuario = mysqli_fetch_assoc($resultado);
        $_SESSION['usuario_id'] = $usuario['id'];
        $_SESSION['usuario_nombre'] = $usuario['nombre'];
        $_SESSION['usuario_correo'] = $usuario['correo'];
        echo 'existe';
    } else {
        echo 'no existe';
    }
} else {
    echo 'no existe';
}

mysqli_close($con);
?>
