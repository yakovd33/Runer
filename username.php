<?php

// CyBerFuN.ro & xList.ro

// xList .::. xDNS
// http://xDNS.ro/
// http://xLIST.ro/
// Modified By cybernet2u

require_once ("include/functions.php");
require_once ("include/config.php");
dbconn();
  if ($CURUSER["uid"] > 1)
    {
  $uid=$CURUSER['uid'];
  //$r=do_sqlquery("SELECT * from {$TABLE_PREFIX}users where id=$uid");
  //$c=mysql_result($r,0,"seedbonus");
  $c=$CURUSER["seedbonus"];
if($c>=$GLOBALS["price_name"]) {
          if (isset($_POST["name"])) $custom=((isset($GLOBALS["___mysqli_ston"]) && is_object($GLOBALS["___mysqli_ston"])) ? mysqli_real_escape_string($GLOBALS["___mysqli_ston"], $_POST["name"])
             else $custom = "";
    if ("$custom"=="")
        {
        }
    else
        {
          $res=do_sqlquery("SELECT * FROM {$TABLE_PREFIX}users WHERE username='".htmlspecialchars($custom)."'", true);
          if (mysqli_num_rows($res) > 0){}else
          {do_sqlquery("UPDATE {$TABLE_PREFIX}users SET username='".htmlspecialchars($custom)."' WHERE id=$CURUSER[uid]");
          if ($FORUMLINK=="smf")
                {do_sqlquery("UPDATE {db_prefix}members SET  memberName='".htmlspecialchars($custom)."' WHERE ID_MEMBER=".$CURUSER["smf_fid"]);}
          $p=$GLOBALS["price_name"];
          do_sqlquery("UPDATE {$TABLE_PREFIX}users SET seedbonus=seedbonus-$p WHERE id=$CURUSER[uid]");}
        }
        }
header("Location: index.php?page=modules&module=seedbonus");
   }
else header("Location: index.php");
?>
