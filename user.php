<?php
    require_once('config.php');
    redirect_guest();

    if (isset($_GET['id'])) {
        $user_id = $_GET['id'];
        $user_details = get_user_by_id($user_id);
        empty($user_details);
    } else {
        header("Location: /");
    }
?>

<!DOCTYPE html>
<html lang="en" dir="rtl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <?php if (!empty($user_details)) : ?>
            <title>פרופיל משתמש <?php echo $user_details['username']; ?> | טראקר ישראלי RUNER</title>
        <?php else : ?>
            <title>404 פרופיל לא נמצא RUNER | טראקר ישראלי</title>
        <?php endif; ?>

        <link rel="stylesheet" href="stylesheets/main.css">
        <link rel="stylesheet" href="stylesheets/profile.css">
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
                <?php if (!empty($user_details)) : ?>
                <div class="col-md-8 card">
                    <?php if (!isset($_GET['tab'])) : ?>
                        <table class="table table-responsive transparent" id="profile-details-table">
                            <tbody>
                                <tr>
                                    <td>ביוגרפיה</td>
                                    <td><?php echo $user_details['bio']; ?></td>
                                </tr>

                                <tr>
                                    <td>נרשם ב</td>
                                    <td><?php echo $user_details['joined_date']; ?></td>
                                </tr>

                                <tr>
                                    <td>נראה לאחרונה לפני</td>
                                    <td><?php echo time_elapsed_string($user_details['lastconnect']); ?></td>
                                </tr>

                                <tr>
                                    <td>נראה לאחרונה לפני</td>
                                    <td><?php echo time_elapsed_string($user_details['lastconnect']); ?></td>
                                </tr>

                                <tr>
                                    <td>הועלה</td>
                                    <td dir="ltr"><?php echo makesize($user_details['uploaded']); ?></td>
                                </tr>

                                <tr>
                                    <td>הורד</td>
                                    <td dir="ltr"><?php echo makesize($user_details['downloaded']); ?></td>
                                </tr>

                                <tr>
                                    <td>בקשות</td>
                                    <td dir="ltr">0</td>
                                </tr>

                                <tr>
                                    <td>תרומות</td>
                                    <td dir="ltr">0 ₪</td>
                                </tr>

                                <tr>
                                    <td>תגובות</td>
                                    <td dir="ltr"><?php echo $link->query("SELECT * FROM `xbtit_comments` WHERE `user` = '{$user_details['username']}'")->rowCount(); ?></td>
                                </tr>
                            </tbody>
                        </table>
                    <?php endif; ?>

                    <?php if (isset($_GET['tab'])) : ?>
                        <?php if ($_GET['tab'] == 'bookmarks') : ?>
                            <?php $bookmarks = $link->query("SELECT * FROM `users_bookmarks` WHERE `user_id` = {$user_id} ORDER BY `date` DESC"); ?>
                            <div id="user-bookmarks-wrap">
                                <?php while ($bookmark = $bookmarks->fetch()) : ?>
                                    <?php $bookmark_torrent_details = get_torrent_by_hash($bookmark['info_hash']); ?>

                                    <div class="torrent-bookmark-box">
                                        <div class="torrent-bookmark-remove" onclick="bookmark('<?php echo $bookmark_torrent_details['info_hash']; ?>'); $(this).parent().remove();"><i class="glyphicon glyphicon-remove"></i></div>
                                        <div class="torrent-bookmark-box" onclick="location.href = 'torrent.php?h=<?php echo $bookmark_torrent_details['info_hash']; ?>'">
                                            <div class="torrent-bookmark-box-image">
                                                <img class="torrent-view-poster" src="<?php echo get_torrent_image($bookmark_torrent_details['info_hash']); ?>">
                                            </div>

                                            <div class="torrent-bookmark-box-name"><?php echo $bookmark_torrent_details['filename']; ?></div>
                                        </div>
                                    </div>
                                <?php endwhile; ?>

                                <?php if (!$bookmarks->rowCount()) : ?>
                                    <p>אין סימניות להצגה</p>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>

                        <?php if ($_GET['tab'] == 'settings') : ?>
                            <form action="update-user.php" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="token" value="<?php echo $_SESSION['update_profile_token'] = generate_token(); ?>">
                                <table class="table table-responsive transparent" id="profile-details-table">
                                    <tbody>
                                        <tr>
                                            <td>שם משתמש</td>
                                            
                                            <td>
                                                <input name="username" class="cute-input" value="<?php echo $user_details['username']; ?>">
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>תמונת פרופיל</td>
                                            
                                            <td>
                                                <span class="btn btn-default btn-file">
                                                    <i class="glyphicon glyphicon-camera"></i> בחר תמונה <input type="file" name="pic" class="cute-btn">
                                                </span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>מצב אנונימי</td>
                                            <td>
                                                <?php if ($CURUSER['id_level'] > 4) : ?>
                                                    <div class="toggleWrapper">
                                                        <input type="checkbox" onchange="toggle_anonymous_mode();" class="mobileToggle" id="is_anon_toggle" <?php if ($CURUSER['is_anonymous']) echo 'checked'; ?>>
                                                        <label for="is_anon_toggle"></label>
                                                    </div>
                                                <?php else : ?>
                                                    <p>אופציה ל-VIP ומעלה בלבד!</p>
                                                <?php endif; ?>
                                                <small class="show">מצב אנונימי גורם להסתרת שם המשתמש ברשימת המורידים ובטופ 10 של האתר</small>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>מצב חנייה</td>
                                            <td>
                                                <div class="toggleWrapper">
                                                    <input type="checkbox" onchange="toggle_parking_mode();" id="is_parking_toggle" class="mobileToggle" <?php if ($CURUSER['parking_mode']) echo 'checked'; ?>>
                                                    <label for="is_parking_toggle"></label>
                                                </div>
                                                <small class="show">מצב חנייה מונע מהמשתמש שלך להיחסם עקב אי-פעילות, שים לב שבמשך מצב חנייה חלות על המשתמש הגבלות שונות כגון: ביטול האפשרויות לחפש ולהוריד טורנטים, ביטול ההודעות הפרטיות ועוד</small>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>סיסמא חדשה</td>
                                            
                                            <td>
                                                <div class="toggle-box">
                                                    <div class="toggler" onclick="$(this).parent().find('.content').toggleClass('hide'); toggle_html($(this), 'הצג', 'הסתר');">הצג</div>
                                                    <div class="content hide">
                                                        <div>
                                                            <p class="show">סיסמא נוכחית</p>
                                                            <input type="password" class="cute-input" name="curr_password">
                                                        </div>
                                                        <div>
                                                            <p class="show">סיסמא חדשה</p>
                                                            <input type="password" class="cute-input" name="new_password">
                                                        </div>
                                                        <div>
                                                            <p class="show">סיסמא חדשה בשנית</p>
                                                            <input type="password" class="cute-input" name="new_password_rep">
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>ביוגרפיה</td>
                                            
                                            <td>
                                                <textarea name="bio" class="cute-input" rows="4" placeholder="ביוגרפיה"><?php echo $user_details['bio']; ?></textarea>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>אימייל</td>
                                            
                                            <td>
                                                <input name="email" class="cute-input" value="<?php echo $user_details['email']; ?>">
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input type="submit" class="cute-btn pull-left" value="שמור שינויים">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                            <script src="javascripts/user_settings.js"></script>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>

                <div class="col-md-4">
                    <div class="profile-sidebar card">
                        <!-- SIDEBAR USERPIC -->
                        <div class="profile-userpic">
                            <img src="<?php echo get_user_profile_pic_by_id($user_id); ?>" height="125px" width="125px" class="img-responsive" alt="">
                        </div>
                        <!-- END SIDEBAR USERPIC -->
                        <!-- SIDEBAR USER TITLE -->
                        <div class="profile-usertitle">
                            <div class="profile-usertitle-name">
                                <?php echo $user_details['username']; ?>
                            </div>
                            <div class="profile-usertitle-job">
                                <?php echo get_level_by_id($user_details['id_level'])['level']; ?>
                            </div>
                        </div>
                        <!-- END SIDEBAR USER TITLE -->

                        <!-- SIDEBAR MENU -->
                        <div class="profile-usermenu">
                            <ul class="nav">
                                <li class="<?php if (!isset($_GET['tab'])) echo 'active'; ?>">
                                    <a href="user.php?id=<?php echo $user_id; ?>">
                                    <i class="glyphicon glyphicon-home"></i>
                                    סיקור </a>
                                </li>

                                <li class="<?php if (isset($_GET['tab']) && $_GET['tab'] == 'bookmarks') echo 'active'; ?>">
                                    <a href="user.php?id=<?php echo $user_id; ?>&tab=bookmarks">
                                    <i class="glyphicon glyphicon-ok"></i>
                                    סימניות </a>
                                </li>

                                <?php if ($user_id == $CURUSER['id']) : ?>
                                    <li class="<?php if (isset($_GET['tab']) && $_GET['tab'] == 'download-history') echo 'active'; ?>">
                                        <a href="user.php?id=<?php echo $user_id; ?>&tab=download-history">
                                        <i class="glyphicon glyphicon-download"></i>
                                        היסטוריית הורדות </a>
                                    </li>

                                    <li class="<?php if (isset($_GET['tab']) && $_GET['tab'] == 'settings') echo 'active'; ?>">
                                        <a href="user.php?id=<?php echo $user_id; ?>&tab=settings">
                                        <i class="glyphicon glyphicon-user"></i>
                                        הגדרות חשבון </a>
                                    </li>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <!-- END MENU -->
                    </div>
                    <?php else : ?>
                        <p>משתמש לא נמצא</p>
                        <a href="/">חזור לדף הראשי</a>
                    <?php endif; ?>
                </div>
            </div>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="javascripts/main.js"></script>
        <script src="javascripts/bookmarks.js"></script>
    </body>
</html>