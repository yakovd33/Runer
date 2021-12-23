<?php
    require_once('config.php');

    if (is_logged()) {
        if (isset($_GET['h'])) {
            $torrent_hash = $_GET['h'];
            $torrent_details = get_torrent_by_hash($torrent_hash);

            if ($CURUSER_PRIV['delete_torrents'] == 'yes') {
                $link->query("DELETE FROM `xbtit_files` WHERE `info_hash` = '{$torrent_hash}'");
            }
        }
    }

    header('Location: /');
?>