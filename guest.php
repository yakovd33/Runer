<?php
    require_once('config.php');

    if (is_logged()) {
        redirect('index.php');
    }
?>

<!DOCTYPE html>
<html lang="en" dir="rtl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>RUNER | טראקר ישראלי</title>
        <link rel="stylesheet" href="stylesheets/main.css">
        <link rel="stylesheet" href="stylesheets/general/guest.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/b2ccf71f4b.js"></script>
    </head>
    <body>
        <div class="site">
            <div class="container">
                <img src="media/logo.png" class="img-responsive center-block">
                <form action="login-new.php?returnto" method="POST" id="login-form">
                    <label>שם משתמש</label>
                    <input type="text" name="username" class="form-control">
                    <label>סיסמא</label>
                    <input type="password" name="password" class="form-control">
                    <input type="submit" class="cute-btn" value="התחבר">
                </form>
            </div>
        </div>
    </body>
</html>