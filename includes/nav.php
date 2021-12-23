<link rel="stylesheet" href="stylesheets/general/nav.css">

<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div id="top-welcome-updater">
                    <span>שלום, <a href="user.php?id=<?php echo $CURUSER['id']; ?>"><?php echo $CURUSER['username']; ?></a> יש לך 0 הודעות חדשות</span>
                    <?php $ratio = $CURUSER['uploaded'] > 0 ? $CURUSER['downloaded'] / $CURUSER['uploaded'] : -$CURUSER['downloaded'];  ?>
                    <div class="pull-left" id="nav-bottom-ratio-details">
                        <div class="ratio">יחס: <span class="<?php echo ($ratio < 0.7 && $ratio != 0) ? 'red' : 'green'; ?>"><?php echo number_format($ratio, 2, '.', ''); ?></span></div>
                        <div class="up">העלאה: <?php echo makesize($CURUSER['uploaded']); ?></div>
                        <div class="down">הורדה: <?php echo makesize($CURUSER['downloaded']); ?></div>
                    </div>
                </div>

                <div class="navbar-header pull-right">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php"><img src="media/logo.png" height="35px"></a>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <div class="pull-right">
                        <ul class="nav navbar-nav">
                            <?php if ($CURUSER['id_level'] >= 7) : ?>
                                <li class=""><a href="admin.php" class="">פאנל ניהול</a></li>
                            <?php endif; ?>

                            <?php if ($CURUSER['id_level'] >= 5) : ?>
                                <li class=""><a href="upload-new.php" class="">העלאה</a></li>
                            <?php endif; ?>

                            <li class=" dropdown">
                                <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">קטגוריות <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <?php $torrents_categories = $link->query("SELECT * FROM `xbtit_categories`"); ?>
                                    <?php while ($category = $torrents_categories->fetch()) : ?>
                                        <li><a href="search.php?category=<?php echo $category['id']; ?>"><?php echo $category['name']; ?></a></li>
                                    <?php endwhile; ?>
                                </ul>
                            </li>

                            <li class="active"><a href="#" class="">ראשי</a></li>
                        </ul>
                    </div>

                    <ul class="nav navbar-nav pull-left">
                        <?php if (is_logged()) : ?>
                            <li class=""><a href="byebye.php">התנתק</a></li>
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $CURUSER["username"]; ?>  <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">שנה סיסמא</a></li>
                                    <li><a href="user.php?id=<?php echo $CURUSER['id']; ?>">הפרופיל שלי</a></li>
                                </ul>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>