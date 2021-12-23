<?php

$THIS_BASEPATH = dirname(__FILE__);

require_once ("$THIS_BASEPATH/include/functions.php");
require_once ("$THIS_BASEPATH/include/BDecode.php");
require_once ("$THIS_BASEPATH/include/BEncode.php");

dbconn();

if (!$CURUSER || $CURUSER["can_download"] == "no")
   {
   require (load_language ("lang_main.php") );
	die ( $language["NOT_AUTH_DOWNLOAD"] );
   }

if(ini_get('zlib.output_compression'))
   ini_set('zlib.output_compression','Off');

$infohash=((isset($GLOBALS["___mysqli_ston"]) && is_object($GLOBALS["___mysqli_ston"])) ? mysqli_real_escape_string($GLOBALS["___mysqli_ston"], $_GET["id"]) : ((trigger_error("[MySQLConverterToo] Fix the mysql_escape_string() call! This code does not work.", E_USER_ERROR)) ? "" : ""));
$filepath = $TORRENTSDIR."/".$infohash . ".btf";

if (!is_file($filepath) || !is_readable($filepath))
   {
	require (load_language ("lang_main.php") );
	die ( $language["CANT_FIND_TORRENT"] );
   }

$f = rawurlencode(html_entity_decode($_GET["f"]));

// pid code begin
$row = get_result("SELECT pid FROM {$TABLE_PREFIX}users WHERE id=".$CURUSER['uid'], true, $btit_settings['cache_duration']);
$pid = $row[0]["pid"];
if (!$pid)
	{
   $pid = md5 (uniqid ( rand(), true) );
   do_sqlquery("UPDATE {$TABLE_PREFIX}users SET pid='".$pid."' WHERE id='".$CURUSER['uid']."'");
if ($XBTT_USE)
   do_sqlquery("UPDATE xbt_users SET torrent_pass='".$pid."' WHERE uid='".$CURUSER['uid']."'");
	}

$result = get_result("SELECT external FROM {$TABLE_PREFIX}files WHERE info_hash='".$infohash."'", true, $btit_settings['cache_duration']);
$xt = $result[0]["external"];

if ($xt == "yes" || !$PRIVATE_ANNOUNCE)
   {
    $fd = fopen($filepath, "rb");
    $alltorrent = fread($fd, filesize($filepath));
    fclose($fd);
    header("Content-Type: application/x-bittorrent");
    header('Content-Disposition: attachment; filename="'.$f.'"');
    print($alltorrent);
   }
else
    {
    $fd = fopen($filepath, "rb");
    $alltorrent = fread($fd, filesize($filepath));
    $array = BDecode($alltorrent);
    fclose($fd);

    if ($XBTT_USE)
       $array["announce"] = $XBTT_URL."/$pid/announce";
    else
       $array["announce"] = $BASEURL."/announce.php?pid=$pid";

    if (isset($array["announce-list"]) && is_array($array["announce-list"]))
       {
       for ($i=0;$i<count($array["announce-list"]);$i++)
           {
           for ($j=0;$j<count($array["announce-list"][$i]);$j++)
               {
               if (in_array($array["announce-list"][$i][$j],$TRACKER_ANNOUNCEURLS))
                  {
                  if (strpos($array["announce-list"][$i][$j],"announce.php")===false)
                     $array["announce-list"][$i][$j] = trim(str_replace("/announce", "/$pid/announce", $array["announce-list"][$i][$j]));
                  else
                     $array["announce-list"][$i][$j] = trim(str_replace("/announce.php", "/announce.php?pid=$pid", $array["announce-list"][$i][$j]));
                }
             }
         }
     }


    $alltorrent = BEncode($array);

    header("Content-Type: application/x-bittorrent");
    header('Content-Disposition: attachment; filename="'.$f.'"');
    print($alltorrent);
    }
?>
