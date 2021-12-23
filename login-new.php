<?php
    require('config.php');

    if (!is_logged()) {
        if (isset($_POST["username"]) && $_POST["password"]) {
            $username = $_POST['username'];
            $password = $_POST['password'];
            $password_hashed = md5($password);

            $res = do_sqlquery("SELECT * FROM `xbtit_users` WHERE `username` = '{$username}' AND `password` = '{$password_hashed}'", true);
            $row = mysqli_fetch_assoc($res);

            if (mysqli_num_rows($res) > 0) {
                // Details match
                $userid = $row['id'];

                // Create login token
                $login_token = generate_token();
                do_sqlquery("INSERT INTO `login_tokens`(`user_id`, `token`) VALUES ({$userid}, '{$login_token}')");
                $_SESSION['uid'] = $userid;

                setcookie('login_token', $login_token, time() + $MICROTIME_YEAR, '/');
                $_COOKIE['login_token'] = $login_token;
                header('Location: index.php');
            } else {
                header('Location: guest.php?wrong_details');
            }
        }
    }
?>