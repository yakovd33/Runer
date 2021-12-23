<?php
    require_once('config.php');

    setcookie('login_token', '', -1, '/');
    session_destroy();
    header("Location: index.php");
?>