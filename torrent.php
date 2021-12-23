<?php
    require_once('config.php');
    redirect_guest();

    if (isset($_GET['h'])) {
        $torrent_hash = $_GET['h'];
        $torrent_details = get_torrent_by_hash($torrent_hash);
        $torrent_file_info = torrent_info($torrent_details['url']);
    } else {
        header('Location: /');
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
        <link rel="stylesheet" href="stylesheets/torrent/torrent.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="stylesheets/general/nav.css">
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/b2ccf71f4b.js"></script>
    </head>
    <body>
        <?php include 'includes/nav.php'; ?>
        
        <div class="site">
            <div class="col-sm-12 col-md-3 cards-col">
                <?php include 'includes/main-sidebar.php'; ?>
            </div>

            <div class="col-sm-12 col-md-9">
                <div class="col-sm-12 col-md-8 cards-col card transparent mobile-no-padding">
                    <div class="content mobile-no-padding">
                        <div class="page-path">
                            <div class="node">ראשי</div>
                            <div class="arrow"><i class="glyphicon glyphicon-arrow-left"></i></div>
                            <div class="node"><?php echo get_category_by_id($torrent_details['category'])['name']; ?></div>
                            <div class="arrow"><i class="glyphicon glyphicon-arrow-left"></i></div>
                            <div class="node"><?php echo $torrent_details['filename']; ?></div>
                        </div>

                        <ul class="nav nav-tabs tabs-toggles-rtl cutie-tabs">
                            <li class="active"><a data-toggle="tab" href="#desc">תיאור</a></li>
                            <li><a data-toggle="tab" href="#files">קבצים</a></li>
                            <li><a data-toggle="tab" href="#comments">תגובות</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="desc" class="tab-pane fade in active">
                                <div class="card transparent" id="torrent-description">
                                    <div class="content">
                                        <?php echo $torrent_details['comment']; ?>

                                        <div id="edit-torrents">
                                            <?php if ($CURUSER_PRIV['delete_torrents'] == 'yes') : ?>
                                                <a title="מחק טורנט" href="delete-torrent.php?h=<?php echo $torrent_hash; ?>" class="white"><button class="cute-btn rect-btn"><i class="glyphicon glyphicon-trash"></i></button></a>
                                            <?php endif; ?>

                                            <?php if ($CURUSER_PRIV['edit_torrents'] == 'yes') : ?>
                                                <a title="ערוך טורנט" href="edit-torrent.php?h=<?php echo $torrent_hash; ?>" class="white"><button class="cute-btn rect-btn"><i class="glyphicon glyphicon-pencil"></i></button></a>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="files" class="tab-pane fade">
                                <?php
                                    require_once(dirname(__FILE__)."/include/BDecode.php");
                                    
                                    if (file_exists($torrent_details["url"])) {
                                        $ffile=fopen($torrent_details["url"],"rb");
                                        $content=fread($ffile,filesize($torrent_details["url"]));
                                        fclose($ffile);
                                        $content=BDecode($content);
                                        $numfiles=0;

                                        if (isset($content["info"]) && $content["info"]) {
                                            $thefile=$content["info"];
                                            if (isset($thefile["length"])) {
                                                $dfiles[$numfiles]["filename"]=htmlspecialchars($thefile["name"]);
                                                $dfiles[$numfiles]["size"]=makesize($thefile["length"]);
                                                $numfiles++;
                                            } elseif (isset($thefile["files"])) {
                                                foreach($thefile["files"] as $singlefile) {
                                                    $dfiles[$numfiles]["filename"]=htmlspecialchars(implode("/",$singlefile["path"]));
                                                    $dfiles[$numfiles]["size"]=makesize($singlefile["length"]);
                                                    $numfiles++;
                                                }
                                            }
                                        }

                                        $torrent_details["numfiles"]=$numfiles.($numfiles==1?" file":" files");
                                        unset($content);
                                    }
                                ?>

                                <table class="table">
                                    <thead>
                                        <th>שם</th>
                                        <th>גודל</th>
                                    </thead>

                                    <tbody>
                                        <?php foreach ($dfiles as $file) : ?>
                                            <tr>
                                                <td><?php echo $file['filename']; ?></td>
                                                <td><?php echo $file['size']; ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-4 cards-col card transparent mobile-no-padding">
                    <div class="content torrent-details-box">
                        <div class="torrent-details-box-content">
                            <div id="torrent-poster-wrap">
                                <div class="block-arrow"></div>
                                <?php $has_user_bookmarked = $link->query("SELECT * FROM `users_bookmarks` WHERE `user_id` = {$CURUSER['id']} AND `info_hash` = '{$torrent_hash}'")->rowCount() > 0; ?>
                                <div class="bookmark-it <?php if ($has_user_bookmarked) echo 'active'; ?>" onclick="bookmark('<?php echo $torrent_hash; ?>'); $(this).toggleClass('active');"><i class="glyphicon glyphicon-bookmark"></i></div>
                                <img class="torrent-view-poster" src="<?php echo get_torrent_image($torrent_hash); ?>">
                            </div>
                            <div class="torrent-download-btns">
                                <button class="magnet-torrent-btn cute-btn" onclick="location.href = '<?php echo $torrent_file_info->magnet(); ?>'"><i class="glyphicon glyphicon-magnet"></i></button>
                                <button class="cute-btn torrent-download-btn" onclick="location.href = 'download.php?id=<?php echo $torrent_hash; ?>&f=<?php echo $torrent_details['filename']; ?>-RUNER.me.torrent'"><i class="fa fa-cloud-download" aria-hidden="true"></i> הורד טורנט</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <script src="javascripts/bookmarks.js"></script>
    </body>
</html>