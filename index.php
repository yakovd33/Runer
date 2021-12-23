<?php
    require_once('config.php');
    redirect_guest();
?>

<!DOCTYPE html>
<html lang="en" dir="rtl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>RUNER | טראקר ישראלי</title>
        <link rel="stylesheet" href="stylesheets/main.css">
        <link rel="stylesheet" href="stylesheets/index/index.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/b2ccf71f4b.js"></script>
    </head>
    <body>
        <?php include 'includes/nav.php'; ?>

        <div class="site">
            <div class="col-sm-12 col-md-3 cards-col">
                <?php include 'includes/main-sidebar.php'; ?>
            </div>

            <div class="col-sm-12 col-md-9 cards-col">
                <div class="card">
                    <div class="card-title"><i class="fa fa-thumb-tack" aria-hidden="true"></i> טורנטים נעוצים</div>
                    
                    <div class="content">
                        <table class="torrents-table table table-hover">
                            <thead>
                                <tr>
                                    <th>שם הטורנט</th>
                                    <th>גודל</th>
                                    <th>קבצים</th>
                                    <th>תאריך</th>
                                    <th>מעלים</th>
                                    <th>מורידים</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td><a href="torrent.php">אקס מן 2017 עם תרגום מובנה</a></td>
                                    <td>1.24 GB</td>
                                    <td>18</td>
                                    <td>21 ימים</td>
                                    <td>23</td>
                                    <td>7</td>
                                </tr>

                                <tr>
                                    <td><a href="torrent.php">אקס מן 2017 עם תרגום מובנה</a></td>
                                    <td>1.24 GB</td>
                                    <td>18</td>
                                    <td>21 ימים</td>
                                    <td>23</td>
                                    <td>7</td>
                                </tr>

                                <tr>
                                    <td><a href="torrent.php">אקס מן 2017 עם תרגום מובנה</a></td>
                                    <td>1.24 GB</td>
                                    <td>18</td>
                                    <td>21 ימים</td>
                                    <td>23</td>
                                    <td>7</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card">
                    <div class="card-title"><i class="fa fa-rss" aria-hidden="true"></i> טורנטים חדשים</div>
                    
                    <div class="content">
                        <table class="torrents-table table table-hover">
                            <thead>
                                <tr>
                                    <th>שם הטורנט</th>
                                    <th>גודל</th>
                                    <th>קבצים</th>
                                    <th>תאריך</th>
                                    <th>מעלים</th>
                                    <th>מורידים</th>
                                    <th>מהירות</th>
                                    <th>מעלה</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php
                                    if ($XBTT_USE)
                                        $sql = "SELECT f.info_hash as hash, file_info_hash, f.gold as gold, f.seeds+ifnull(x.seeders,0) as seeds , f.leechers + ifnull(x.leechers,0) as leechers, dlbytes AS dwned, format(f.finished+ifnull(x.completed,0),0) as finished, filename, url, info, UNIX_TIMESTAMP(data) AS added, c.image, c.name AS cname, category AS catid, size, external, uploader FROM {$TABLE_PREFIX}files as f LEFT JOIN xbt_files x ON f.bin_hash=x.info_hash LEFT JOIN {$TABLE_PREFIX}categories as c ON c.id = f.category WHERE f.leechers + ifnull(x.leechers,0) + f.seeds+ifnull(x.seeders,0) > 0 ORDER BY data DESC LIMIT " . $GLOBALS["block_last10limit"];
                                    else
                                        $sql = "SELECT info_hash as hash, file_info_hash, f.gold as gold, seeds, leechers, dlbytes AS dwned, format(finished,0) as finished, filename, url, info, UNIX_TIMESTAMP(data) AS added, c.image, c.name AS cname, category AS catid, size, external, uploader FROM {$TABLE_PREFIX}files as f LEFT JOIN {$TABLE_PREFIX}categories as c ON c.id = f.category ORDER BY data DESC LIMIT " . $GLOBALS["block_last10limit"];
                                ?>
                                <?php $new_torrents_query = $link->query($sql); ?>
                                <?php while ($torrent = $new_torrents_query->fetch()) : ?>
                                    <?php $torrent_file_details = torrent_info($torrent['url']); ?>
                                    <?php $torrent_file_count = count($torrent_file_details->info['files']); ?>
                                    <tr>
                                        <td><a href="torrent.php?h=<?php echo $torrent['hash']; ?>"><?php echo $torrent['filename']; ?></a></td>
                                        <td dir="ltr"><?php echo makesize($torrent["size"]) ?></td>
                                        <td><?php echo $torrent_file_count == 0 ? '1' : $torrent_file_count; ?></td>
                                        <td>21 ימים</td>
                                        <td><?php echo get_torrent_seeders_by_hash($torrent['info_hash'], $torrent['file_info_hash']); ?></td>
                                        <td><?php echo $torrent['leechers']; ?></td>
                                        <td dir="ltr">
                                            <?php
                                                if ($torrent["speed"] < 0 || $torrent["external"]=="yes") {
                                                    $speed = '-';
                                                }
                                                    else if ($torrent["speed"] > 2097152) {
                                                        $speed = round($torrent["speed"]/1048576,2) . " MB/s";
                                                }
                                                    else {
                                                        $speed = round($torrent["speed"] / 1024, 2) . " KB/s";
                                                }
                                                echo $speed;
                                            ?>
                                        </td>
                                        <?php $uploader_details = $link->query("SELECT * FROM `xbtit_users` WHERE `id` = {$torrent['uploader']}")->fetch(); ?>
                                        <td><a href="user.php?id=<?php echo $uploader_details['id']; ?>"><?php echo $uploader_details['username']; ?></a></td>
                                    </tr>
                                <?php endwhile; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>