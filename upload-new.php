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
        <script src="//cdn.ckeditor.com/4.7.1/full/ckeditor.js"></script>
    </head>
    <body>
        <?php include 'includes/nav.php'; ?>

        <div class="site">
            <div class="col-sm-12 col-md-3 cards-col">
                <?php include 'includes/main-sidebar.php'; ?>
            </div>

            <div class="col-sm-12 col-md-9 cards-col">
                <h2>הוספת טורנט</h2>
                <form class="card transparent" name="upload" method="post" action="upload.php" enctype="multipart/form-data">
                    <input type="text" name="filename" maxlength="200">
                    <label class="show">קובץ טורנט</label>
                    <span class="btn btn-default btn-file">
                        בחר קובץ <input type="file" name="torrent">
                    </span>
                    <select name="category" class="show">
                        <option>בחר קטגוריה</option>
                        <?php $torrents_categories = $link->query("SELECT * FROM `xbtit_categories`"); ?>
                        <?php while ($category = $torrents_categories->fetch()) : ?>
                            <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                        <?php endwhile; ?>
                    </select>

                    <span class="btn btn-default btn-file">
                        <i class="glyphicon glyphicon-camera"></i> בחר תמונה <input type="file" name="userfile">
                    </span>

                    <textarea name="info" id="torrent-description-input"></textarea>
                    <script>
                        CKEDITOR.replace('torrent-description-input', {
                            language: 'he',
                        });
                    </script>

                    <button class="cute-btn" type="submit">העלה</button>
                </form>
            </div>
        </div>
    </body>
</html>