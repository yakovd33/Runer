<?php
    require_once('../config.php');

    if (is_logged()) {
        if (isset($_GET['h'])) {
            $torrent_hash = $_GET['h'];
            $torrent_details = get_torrent_by_hash($torrent_hash);

            // Check if torrent exists
            if ($torrent_details) {
                // Check if exists
                $get_bookmark = $link->query("SELECT * FROM `users_bookmarks` WHERE `user_id` = {$CURUSER['id']} AND `info_hash` = '{$torrent_hash}'");

                if (!$get_bookmark->rowCount()) {
                    // Insert bookmark
                    $link->query("INSERT INTO `users_bookmarks`(`user_id`, `info_hash`) VALUES ({$CURUSER['id']}, '{$torrent_hash}')");
                } else {
                    // Remove Bookmark
                    $get_bookmark = $link->query("DELETE FROM `users_bookmarks` WHERE `user_id` = {$CURUSER['id']} AND `info_hash` = '{$torrent_hash}'");
                }
            }
        }
    }
?>