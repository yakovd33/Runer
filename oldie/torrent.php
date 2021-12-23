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
                            <div class="node">סרטים</div>
                            <div class="arrow"><i class="glyphicon glyphicon-arrow-left"></i></div>
                            <div class="node">מדע בדיוני</div>
                            <div class="arrow"><i class="glyphicon glyphicon-arrow-left"></i></div>
                            <div class="node">אקס מן 2017 עם תרגום מובנה</div>
                        </div>

                        <div class="card transparent" id="torrent-description">
                            <div class="card-title tiny">תיאור</div>
                            <div class="content">
                                כאשר כוחותיו מתחילים להיחלש, וולברין מוצא את עצמו לראשונה פגיע באמת. לאחר חיים שלמים של כאב וצער, הוא מוצא את עצמו אבוד בעולם בו אקס-מן הם רק אגדה וגן המוטציות הונדס גנטית מחוץ לאוכלוסיה. המנטור שלו, צ'ארלס אקסביור, משכנע את וולברין לצאת למשימה אחת אחרונה עם הסיכון הגדול ביותר – עליו להגן על ילדה אחת שהיא התקווה האחרונה לגן המוטנטי
                                <div class="video-container">
                                <iframe src="https://www.youtube.com/embed/DekuSxJgpbY" frameborder="0" allowfullscreen class="video"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-4 cards-col card transparent mobile-no-padding">
                    <div class="content torrent-details-box">
                        <div class="torrent-details-box-content">
                            <img class="torrent-view-poster" src="media/torrent_pics/logan_2017.jpg">
                            <div class="torrent-download-btns">
                                <button class="magnet-torrent-btn cute-btn"><i class="glyphicon glyphicon-magnet"></i></button>
                                <button class="cute-btn torrent-download-btn"><i class="fa fa-cloud-download" aria-hidden="true"></i> הורד טורנט</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>