<?php
    session_start();
    date_default_timezone_set("Israel");

    // Constants
    const TORRENT_DEFAULT_PIC = 'cybyd_img/def-tor-pic.jpg';

    $THIS_BASEPATH = dirname(__FILE__);
    require("$THIS_BASEPATH/include/functions.php");
    require('read_torrent.php');
    require('krumo/class.krumo.php');

    $link = new PDO("mysql:host=localhost;dbname=xbtit;charset=utf8", "root", "");
    
    function is_logged () {
        return isset($_SESSION['uid']);
    }

    function generate_token () {
        return md5(sha1(time() . rand(1, 9000)));
    }

    function get_user_by_id ($id) {
        return do_sqlquery("SELECT *, DATE_FORMAT(joined, '%d/%m/%Y') AS `joined_date` FROM `xbtit_users` WHERE `id` = {$id}")->fetch_assoc();
    }

    if (isset($_COOKIE['login_token'])) {
        $token = $_COOKIE['login_token'];
        $_SESSION['uid'] = do_sqlquery("SELECT `user_id` FROM `login_tokens` WHERE `token` = '{$token}'")->fetch_assoc()['user_id'];
    }

    if (is_logged()) {
        $CURUSER = get_user_by_id($_SESSION['uid']);
        $CURUSER_PRIV = $link->query("sELECT * FROM `xbtit_users_level` WHERE `id` = {$CURUSER['id_level']}")->fetch();

        // Update CURUSER IP and last login
        $ip = getip();
        $link->query("UPDATE `xbtit_users` SET `cip` = '{$ip}', `lastconnect` = NOW() WHERE `id` = {$CURUSER['id']}");
    }

    function redirect_guest () {
        if (!is_logged()) {
            redirect('guest.php');
        }
    }

    function torrent_info ($path) {
        return new Torrent($path);
    }

    function get_torrent_by_hash ($hash) {
        global $link;
        return $link->query("SELECT * FROM `xbtit_files` WHERE `info_hash` = '{$hash}'")->fetch();
    }

    function get_torrent_image ($hash) {
        global $link;
        $image = $link->query("SELECT * FROM `xbtit_files` WHERE `info_hash` = '{$hash}'")->fetch()['image'];
        if ($image == '' || $image == null) {
            return TORRENT_DEFAULT_PIC;
        } else {
            return 'cybyd_img/' . $image;
        }
    }

    function get_category_by_id ($id) {
        global $link;
        return $link->query("SELECT * FROM `xbtit_categories` WHERE `id` = {$id}")->fetch();
    }

    function get_torrent_seeders_by_hash ($hash, $file_hash) {
        global $link;
        return $link->query("SELECT * FROM `xbtit_peers` WHERE `status` = 'seeder' AND (`infohash` = '{$hash}' OR `infohash` = '{$file_hash}')")->rowCount();
    }

    function get_user_profile_pic_by_id ($id) {
        global $link;
        $user_pic = get_user_by_id($id)['profile_pic'];
        
        if ($user_pic == NULL) {
            return 'media/default-pp.jpg';
        } else {
            return $user_pic;
        }
    }

    function get_level_by_id ($id) {
        global $link;
        return $link->query("SELECT * FROM `xbtit_users_level` WHERE `id` = {$id}")->fetch();
    }

    function time_elapsed_string($datetime, $full = false) {
        $now = new DateTime;
        $ago = new DateTime($datetime);
        $diff = $now->diff($ago);
    
        $diff->w = floor($diff->d / 7);
        $diff->d -= $diff->w * 7;
    
        $string = array(
            'y' => 'שנים',
            'm' => 'חודשים',
            'w' => 'שבועות',
            'd' => 'ימים',
            'h' => 'שעות',
            'i' => 'דקות',
            's' => 'שניות',
        );
        foreach ($string as $k => &$v) {
            if ($diff->$k) {
                $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? '' : '');
            } else {
                unset($string[$k]);
            }
        }
    
        if (!$full) $string = array_slice($string, 0, 1);
        return $string ? implode(', ', $string) : 'עכשיו';
    }

    function upload_pic ($file, $path) {
        $allowed = array('gif','png' ,'jpg');
        $filename = $file['name'];
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        
        if(in_array($ext, $allowed) ) {
            $pic = $_FILES['pic'];
            $name = generate_token();
            $final_path = "$path/$name." . $ext;
            move_uploaded_file($pic['tmp_name'], $final_path);
            return $final_path;
        }

        return false;
    }

    $MICROTIME_YEAR = 60 * 60 * 24 * 365;
?>