<?php
    require_once('../config.php');

    if (is_logged()) {
        // Toggle
        if ($CURUSER['id_level'] > 4) {
            $query = $link->query("UPDATE `xbtit_users` SET `is_anonymous` = NOT is_anonymous WHERE `id` = {$CURUSER['id']}");
        }
    }
?>