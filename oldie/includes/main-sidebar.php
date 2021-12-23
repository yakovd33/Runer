<link rel="stylesheet" href="stylesheets/general/main-sidebar.css">

<form action="search" method="GET">
    <div class="input-group add-on">
        <input class="form-control" placeholder="חיפוש" name="q" id="srch-term" type="text">
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
            <div class="user-item">
                <div class="rank">#1</div>
                <div class="pp"><img src="media/default-pp.jpg"></div>
                <div class="username">יעקב שטרית - 260 נק'</div>
            </div>

            <div class="user-item">
                <div class="rank">#2</div>
                <div class="pp"><img src="media/default-pp.jpg"></div>
                <div class="username">יעקב שטרית - 260 נק'</div>
            </div>

            <div class="user-item">
                <div class="rank">#3</div>
                <div class="pp"><img src="media/default-pp.jpg"></div>
                <div class="username">יעקב שטרית - 260 נק'</div>
            </div>

            <div class="user-item">
                <div class="rank">#4</div>
                <div class="pp"><img src="media/default-pp.jpg"></div>
                <div class="username">יעקב שטרית - 260 נק'</div>
            </div>
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