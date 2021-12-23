<?php
    require_once('config.php');

    if (!isset($_POST['token']) || $_SESSION['update_profile_token'] != $_POST['token']) {
        header('Location: /?notoken');
        die();
    }

    if (is_logged()) {
        if (isset($_POST['username'], $_POST['bio'], $_POST['email'])) {
            $username = $_POST['username'];
            $bio = $_POST['bio'];
            $email = $_POST['email'];

            // Update
            $link->query("UPDATE `xbtit_users` SET `username` = '{$username}', `bio` = '{$bio}', `email` = '{$email}' WHERE `id` = {$CURUSER['id']}");

            if (isset($_POST['curr_password'], $_POST['new_password'], $_POST['new_password_rep'])) {
                $curr_pass_hash = md5($_POST['curr_password']);
                $new_password = $_POST['new_password'];
                $new_password_rep = $_POST['new_password_rep'];

                if ($new_password == $new_password_rep) {
                    // Check if password matches
                    $get_user = $link->query("SELECT * FROM `xbtit_users` WHERE `id` = {$CURUSER['id']} AND `password` = '{$curr_pass_hash}'");
                    
                    if ($get_user->rowCount()) {
                        $new_pass_hash = md5($new_password);
                        $link->query("UPDATE `xbtit_users` SET `password` = '{$new_pass_hash}' WHERE `id` = {$CURUSER['id']}");
                    } else {
                        echo 'Wrong details.';
                    }
                } else {
                    echo 'Passwords do not match.';
                }
            }
        }

        if (isset($_FILES['pic'])) {
            echo $final_path = upload_pic($_FILES['pic'], 'images/profile_pics');

            if ($final_path) {
                $link->query("UPDATE `xbtit_users` SET `profile_pic` = '{$final_path}' WHERE `id` = {$CURUSER['id']}");
            }          
        }
    }

    header("Location: " . $_SERVER['HTTP_REFERER']);
?>