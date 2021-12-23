<?php
    require_once('config.php');

    $where = " WHERE 1=1";
    
    if (isset($_GET['category'])) {
        $category_id = $_GET['category'];
        $where .= " AND `category` = " . $category_id;
    }

    if (isset($_GET["q"])) {
        $testocercato = trim($_GET["q"]);
        $testocercato = explode(" ",$testocercato);
        if ($_GET["q"] != "") {
            $q = "q=" . implode("+", $testocercato);
            for ($k=0; $k < count($testocercato); $k++) {
                $query_select .= " filename LIKE '%" . ((isset($GLOBALS["___mysqli_ston"]) && is_object($GLOBALS["___mysqli_ston"])) ? mysqli_real_escape_string($GLOBALS["___mysqli_ston"], $testocercato[$k]) : ((trigger_error("[MySQLConverterToo] Fix the mysql_escape_string() call! This code does not work.", E_USER_ERROR)) ? "" : "")) . "%'";
                if ($k<count($testocercato)-1)
                $query_select .= " AND ";
            }

            $where .= " AND " . $query_select;

            $get_results_stmt = $link->query("SELECT * FROM `xbtit_files` $where");
        }
    } else {
        $get_results_stmt = $link->query("SELECT * FROM `xbtit_files` $where");
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
        <link rel="stylesheet" href="stylesheets/search/search.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="stylesheets/general/nav.css">
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/b2ccf71f4b.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
    </head>
    <body>
        <?php include 'includes/nav.php'; ?>
        
        <div class="site">
            <div class="col-sm-12 col-md-3 cards-col">
                <?php include 'includes/main-sidebar.php'; ?>
            </div>

            <div class="col-sm-12 col-md-9">
                <label>סנן תוצאות</label>
                <form id="filter">
                    <div class="col-sm-12 col-md-3 sides-4px-padding">
                        <input type="submit" class="cute-btn" value="חפש">
                    </div>

                    <div class="col-sm-12 col-md-4 sides-4px-padding">
                        <select name="category" title="קטגוריה" id="search-select-category">
                            <option>בחר קטגוריה</option>
                            <?php $torrents_categories = $link->query("SELECT * FROM `xbtit_categories`"); ?>
                            <?php while ($category = $torrents_categories->fetch()) : ?>
                                <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                            <?php endwhile; ?>
                        </select>
                        
                        <?php if (isset($_GET['category'])) : ?>
                            <script>
                                $("#search-select-category").val(<?php echo $category_id; ?>);
                            </script>
                        <?php endif; ?>
                    </div>

                    <div class="col-sm-12 col-md-5 sides-4px-padding">
                        <input type="text" placeholder="טקסט לחיפוש" name="q" value="<?php echo $_GET['q'] ? $_GET['q'] : ''; ?>">
                    </div>
                </form>

                <?php if (isset($_GET['q'])) : ?>
                    <!--<div id="search-info">
                        <h3>מציג תוצאות חיפוש עבור '<?php echo $_GET['q']; ?>'</h3>
                    </div>-->
                <?php endif; ?>

                <?php if ($get_results_stmt->rowCount() == 0) : ?>
                    <p>לא נמצאו תוצאות עבור חיפוש זה.</p>
                    <a href="index.php">חזור לדף הראשי</a>
                <?php else : ?>

                <table class="torrents-table table table-hover">
                    <thead>
                        <tr>
                            <th>קטגוריה</th>
                            <th>שם</th>
                            <th>גודל</th>
                            <th>קבצים</th>
                            <th>תאריך</th>
                            <th>מעלים</th>
                            <th>מורידים</th>
                            <th>מעלה</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php while ($torrent = $get_results_stmt->fetch()) : ?>
                            <?php $torrent_file_details = torrent_info($torrent['url']); ?>
                            <?php $torrent_file_count = count($torrent_file_details->info['files']); ?>
                            <?php $torrent_caregory_details = get_category_by_id($torrent['category']); ?>

                            <tr>
                                <td>
                                    <img src="style/xbtit_default/images/categories/<?php echo $torrent_caregory_details['image']; ?>">
                                </td>
                                <td><a href="torrent.php?h=<?php echo $torrent['info_hash']; ?>"><?php echo $torrent['filename']; ?></a></td>
                                <td dir="ltr"><?php echo makesize($torrent["size"]) ?></td>
                                <td><?php echo $torrent_file_count == 0 ? '1' : $torrent_file_count; ?></td>
                                <td>21 ימים</td>
                                <td><?php echo $torrent['seeds']; ?></td>
                                <td><?php echo $torrent['leechers']; ?></td>
                                </td>
                                <?php $uploader_details = $link->query("SELECT * FROM `xbtit_users` WHERE `id` = {$torrent['uploader']}")->fetch(); ?>
                                <td><a href="user.php?id=<?php echo $uploader_details['id']; ?>"><?php echo $uploader_details['username']; ?></a></td>
                            </tr>
                        <?php endwhile; ?>
                        </tbody>
                    </table>
                <?php endif; ?>
            </div>
        </div>
    </body>
</html>