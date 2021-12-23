<link rel="stylesheet" href="stylesheets/general/main-sidebar.css">

<form action="search.php" method="GET">
    <div class="input-group add-on">
        <input class="form-control" placeholder="חיפוש" name="q" id="srch-term" type="text" <?php if (isset($_GET['q'])) echo 'value="' . $_GET['q'] . '"'; ?>>
        <div class="input-group-btn search-submit-btn">
            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
        </div>
    </div>
</form>

<div class="card">
    <div class="card-title"><i class="fa fa-newspaper-o" aria-hidden="true"></i> עדכונים</div>
    <div class="content">
        לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית הועניב היושבב שערש שמחויט - שלושע ותלברו חשלו שעותלשך וחאית נובש ערששף. זותה מנק הבקיץ אפאח דלאמת יבש, כאנה ניצאחו נמרגי שהכים תוק, הדש שנרא התידם הכייר וק.
    </div>
</div>

<div class="card" id="sidebar-user-ranking">
    <div class="card-title">דירוג משתמשים</div>
    <div class="content">
        <div id="user-ranking-list">
            <?php $top_ratio_ranking_users = $link->query("SELECT * FROM `xbtit_users` ORDER BY uploaded AND NOT `is_anonymous` DESC LIMIT 5"); ?>
            <?php $user_count = 0; ?>
            <?php while ($user = $top_ratio_ranking_users->fetch()) : ?>
                <?php $user_count++; ?>
                <?php $top_ranking_user_details = get_user_by_id($user['id']); ?>
                <a href="user.php?id=<?php echo $user['id']; ?>">
                        <div class="user-item">
                        <div class="rank">#<?php echo $user_count; ?></div>
                        <div class="pp"><img src="<?php echo get_user_profile_pic_by_id($top_ranking_user_details['id']); ?>"></div>
                        <div class="username"><?php echo $top_ranking_user_details['username']; ?></div>
                    </div>
                </a>
            <?php endwhile; ?>
        </div>
    </div>
</div>

<div id="categories-btns">
    <button class="category-btn">סרטים</button>
    <button class="category-btn">טלוויזיה</button>
    <button class="category-btn">גיימינג</button>
</div>

<script>
    $(document).ready(function(e){
        $('.search-panel .dropdown-menu').find('a').click(function(e) {
            e.preventDefault();
            var param = $(this).attr("href").replace("#","");
            var concept = $(this).text();
            $('.search-panel span#search_concept').text(concept);
            $('.input-group #search_param').val(param);
        });
    });
</script>