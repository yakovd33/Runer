<?php
    require_once('config.php');

    $torrent_info = torrent_info('torrents/85fe8e8aaced7ec1a9ea2770c29243589c2c91a3.btf');
    //echo sizeof($torrent_info->info);
    var_dump($torrent_info);
    //echo count(((array) $torrent_info->info));
    //print_r(((array) $torrent_info->info));
    //echo count((array) $torrent_info->info);
?>