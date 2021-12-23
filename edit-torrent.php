<?php
    require_once('config.php');
    redirect_guest();

    if (isset($_GET['h'])) {
        $torrent_hash = $_GET['h'];
        $torrent_details = get_torrent_by_hash($torrent_hash);

        if ($torrent_details) {
            if (isset($_POST['filename'], $_POST['category'], $_POST['info'])) {
                $filename = $_POST['filename'];
                $comment = $_POST['info'];
                $category = $_POST['category'];

                // Update
            $update_stmt = $link->query("UPDATE `xbtit_files` SET `filename` = '{$filename}', `comment`= '{$comment}',`category`= {$category}, `lastupdate` = NOW() WHERE `info_hash` = '{$torrent_hash}'");
                $torrent_details = get_torrent_by_hash($torrent_hash);
            }
        }
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
        <link rel="stylesheet" href="stylesheets/index/index.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://use.fontawesome.com/b2ccf71f4b.js"></script>
        <script src="//cdn.ckeditor.com/4.7.1/full/ckeditor.js"></script>
    </head>
    <body>
        <?php include 'includes/nav.php'; ?>

        <div class="site">
            <div class="col-sm-12 col-md-3 cards-col">
                <?php include 'includes/main-sidebar.php'; ?>
            </div>
            
            <div class="col-sm-12 col-md-9 cards-col">
                <?php if ($torrent_details) : ?>
                    <h2>הוספת טורנט</h2>
                    <form class="card transparent" name="update" method="POST" enctype="multipart/form-data">
                        <input type="text" name="filename" maxlength="200" value="<?php echo $torrent_details['filename']; ?>">

                        <select name="category" class="show" id="edit-torrent-select-category">
                            <option>בחר קטגוריה</option>
                            <?php $torrents_categories = $link->query("SELECT * FROM `xbtit_categories`"); ?>
                            <?php while ($category = $torrents_categories->fetch()) : ?>
                                <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                            <?php endwhile; ?>
                        </select>

                        <script>
                            $("#edit-torrent-select-category").val(<?php echo $torrent_details['category']; ?>);
                        </script>

                        <textarea name="info" id="torrent-description-input"><?php echo $torrent_details['comment']; ?></textarea>
                        <script>
                            CKEDITOR.replace('torrent-description-input', {
                                language: 'he',
                            });
                        </script>

                        <button class="cute-btn" type="submit">העלה</button>
                    </form>
                <?php else : ?>
                    <h2>קובץ לא קיים</h2>
                <?php endif; ?>
            </div>
        </div>
    </body>
</html>