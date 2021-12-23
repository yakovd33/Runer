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
                <?php
                if (isset($_GET["do"])) {
                    $do=$_GET["do"];
                } else $do = "";
                
                if (isset($_GET["action"])) {
                     $action = $_GET["action"];
                }
                  
                $ADMIN_PATH = dirname(__FILE__);
                  
                include(load_language("lang_admin.php"));
                  
                include("$ADMIN_PATH/admin.menu.php");

                switch ($do) {
                    // Gold/Silver Torrent v 1.2 by Losmi / start
                    case 'gold' :
                    include("$ADMIN_PATH/admin.gold.php");
                    $tpl->set("main_content",set_block($language["ACP_GOLD"],"center",$admintpl->fetch(load_template("admin.gold.tpl"))));
                    break;

                    // Gold/Silver Torrent v 1.2 by Losmi / end
                    case 'language' :
                    include("$ADMIN_PATH/admin.languages.php");
                    $tpl->set("main_content",set_block($language["LANGUAGE_SETTINGS"],"center",$admintpl->fetch(load_template("admin.languages.tpl"))));
                    break;
                
                    case 'searchdiff':
                    include("$ADMIN_PATH/admin.search_diff.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.search_diff.tpl"))));
                    break;
                
                    case 'forum':
                    include("$ADMIN_PATH/admin.forums.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.forums.tpl"))));
                    break;
                
                    case 'masspm':
                    include("$ADMIN_PATH/admin.masspm.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.masspm.tpl"))));
                    break;
                
                    case 'pruneu':
                    include("$ADMIN_PATH/admin.prune_users.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.prune_users.tpl"))));
                    break;
                
                    case 'dbutil':
                    include("$ADMIN_PATH/admin.dbutil.php");
                    $tpl->set("main_content",set_block($language["DBUTILS_TABLES"]." ".$language["DBUTILS_STATUS"],"center",$admintpl->fetch(load_template("admin.dbutil.tpl"))));
                    break;
                
                    case 'logview':
                    include("$ADMIN_PATH/admin.sitelog.php");
                    $tpl->set("main_content",set_block($language["SITE_LOG"],"center",$admintpl->fetch(load_template("admin.sitelog.tpl"))));
                    break;
                    
                    case 'mysql_stats':
                    $content="";
                    include("$ADMIN_PATH/admin.mysql_stats.php");
                    $tpl->set("main_content",set_block($language["MYSQL_STATUS"],"center",$content));
                    break;
                
                    case 'prunet':
                    include("$ADMIN_PATH/admin.prune_torrents.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.prune_torrents.tpl"))));
                    break;
                
                    case 'groups':
                    include("$ADMIN_PATH/admin.groups.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.groups.tpl"))));
                    break;
                
                    case 'poller':
                    include("$ADMIN_PATH/admin.polls.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.polls.tpl"))));
                    break;
                
                    case 'badwords':
                    include("$ADMIN_PATH/admin.censored.php");
                    $tpl->set("main_content",set_block($language["ACP_CENSORED"],"center",$admintpl->fetch(load_template("admin.censored.tpl"))));
                    break;
                
                    case 'blocks':
                    include("$ADMIN_PATH/admin.blocks.php");
                    $tpl->set("main_content",set_block($language["BLOCKS_SETTINGS"],"center",$admintpl->fetch(load_template("admin.blocks.tpl"))));
                    break;
                
                    case 'style':
                    include("$ADMIN_PATH/admin.styles.php");
                    $tpl->set("main_content",set_block($language["STYLE_SETTINGS"],"center",$admintpl->fetch(load_template("admin.styles.tpl"))));
                    break;
                
                    case 'category':
                    include("$ADMIN_PATH/admin.categories.php");
                    $tpl->set("main_content",set_block($language["CATEGORY_SETTINGS"],"center",$admintpl->fetch(load_template("admin.categories.tpl"))));
                    break;
                
                    
                    case 'config':
                    include("$ADMIN_PATH/admin.config.php");
                    $tpl->set("main_content",set_block($language["TRACKER_SETTINGS"],"center",$admintpl->fetch(load_template("admin.config.tpl"))));
                    break;
                
                    case 'banip':
                    include("$ADMIN_PATH/admin.banip.php");
                    $tpl->set("main_content",set_block($language["ACP_BAN_IP"],"center",$admintpl->fetch(load_template("admin.banip.tpl"))));
                    break;
                    
                    case 'module_config':
                    include("$ADMIN_PATH/admin.module_config.php");
                    $tpl->set("main_content",set_block($language["ACP_MODULES_CONFIG"],"center",$admintpl->fetch(load_template("admin.module_config.tpl"))));
                    break;
                
                    case 'hacks':
                    include("$ADMIN_PATH/admin.hacks.php");
                    $tpl->set("main_content",set_block($language["ACP_HACKS_CONFIG"],"center",$admintpl->fetch(load_template("admin.hacks.tpl"))));
                    break;
                
                    case 'users':
                    include("$ADMIN_PATH/admin.users.tools.php");
                    $tpl->set("main_content",set_block($block_title,"center",$admintpl->fetch(load_template("admin.users.tools.tpl"))));
                    break;
                
                    case 'security_suite':
                    include("$ADMIN_PATH/admin.security_suite.php");
                    $tpl->set("main_content",set_block($language["ACP_SECSUI_SET"],"center",$admintpl->fetch(load_template("admin.security_suite.tpl"))));
                    break;
                    
                    case 'php_log':
                    include("$ADMIN_PATH/admin.php_errors_log.php");
                    $tpl->set("main_content",set_block($language["LOGS_PHP"],"center",$admintpl->fetch(load_template("admin.php_errors_log.tpl"))));
                    break;
                  
                  // Bonus system by Real_ptr 1.3 (2.3.0) - upgraded to rev 743 by cybernet2u / start
                      case 'seedbonus':
                        include("$ADMIN_PATH/admin.bonus.php");
                        $tpl->set("main_content",set_block($language["ACP_SEEDBONUS"],"center",$admintpl->fetch(load_template("admin.bonus.tpl"))));
                        break;
                  // Bonus system by Real_ptr 1.3 (2.3.0) - upgraded to rev 743 by cybernet2u / end
                  
                      case 'sanity':
                        require_once("$THIS_BASEPATH/include/sanity.php");
                  
                        $now = time();
                  
                        $res = do_sqlquery("SELECT last_time FROM {$TABLE_PREFIX}tasks WHERE task='sanity'");
                        $row = mysqli_fetch_row($res);
                        if (!$row)
                            do_sqlquery("INSERT INTO {$TABLE_PREFIX}tasks (task, last_time) VALUES ('sanity',$now)");
                        else
                        {
                          $ts = $row[0];
                          do_sqlquery("UPDATE {$TABLE_PREFIX}tasks SET last_time=$now WHERE task='sanity' AND last_time = $ts");
                        }
                        do_sanity();
                  
                  
                      default:
                        include("$ADMIN_PATH/admin.main.php");
                        $tpl->set("main_content",set_block($language["WELCOME_ADMINCP"],"center",$admintpl->fetch(load_template("admin.main.tpl"))));
                        break;
                  
                  }
                ?>
            </div>
        </div>
    </body>
</html>