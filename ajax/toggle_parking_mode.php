<?php
    require_once('../config.php');

    if (is_logged()) {
        // Toggle
        $query = $link->query("UPDATE `xbtit_users` SET `parking_mode` = NOT parking_mode WHERE `id` = {$CURUSER['id']}");
    }
?>