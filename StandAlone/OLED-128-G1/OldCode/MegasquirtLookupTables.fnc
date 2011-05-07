



<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico">
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = "fa41ed2229a26f5ffed2bc42fa2f70d4";
 
 
 var CS_env = {"token":"fa41ed2229a26f5ffed2bc42fa2f70d4","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/806273160146606062","projectName":"ms-can-display","projectHomeUrl":"/p/ms-can-display","absoluteBaseUrl":"http://code.google.com","relativeBaseUrl":"","urlPrefix":"p","loggedInUserEmail":"s2108253@gmail.com"};
 </script>
 
 
 <title>MegasquirtLookupTables.fnc - 
 ms-can-display -
 
 
 Megasquirt Display via CAN - Google Project Hosting
 </title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" >
 
 <meta name="ROBOTS" content="NOARCHIVE">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/806273160146606062/css/ph_core.css">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/806273160146606062/css/ph_detail.css" >
 
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/806273160146606062/css/d_sb.css" >
 
 
 
<!--[if IE]>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/806273160146606062/css/d_ie.css" >
<![endif]-->
 <style type="text/css">
 .menuIcon.off { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -42px }
 .menuIcon.on { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -28px }
 .menuIcon.down { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 0; }
 
 
 
  tr.inline_comment {
 background: #fff;
 vertical-align: top;
 }
 div.draft, div.published {
 padding: .3em;
 border: 1px solid #999; 
 margin-bottom: .1em;
 font-family: arial, sans-serif;
 max-width: 60em;
 }
 div.draft {
 background: #ffa;
 } 
 div.published {
 background: #e5ecf9;
 }
 div.published .body, div.draft .body {
 padding: .5em .1em .1em .1em;
 max-width: 60em;
 white-space: pre-wrap;
 white-space: -moz-pre-wrap;
 white-space: -pre-wrap;
 white-space: -o-pre-wrap;
 word-wrap: break-word;
 font-size: 1em;
 }
 div.draft .actions {
 margin-left: 1em;
 font-size: 90%;
 }
 div.draft form {
 padding: .5em .5em .5em 0;
 }
 div.draft textarea, div.published textarea {
 width: 95%;
 height: 10em;
 font-family: arial, sans-serif;
 margin-bottom: .5em;
 }

 
 .nocursor, .nocursor td, .cursor_hidden, .cursor_hidden td {
 background-color: white;
 height: 2px;
 }
 .cursor, .cursor td {
 background-color: darkblue;
 height: 2px;
 display: '';
 }
 
 
.list {
 border: 1px solid white;
 border-bottom: 0;
}

 </style>
</head>
<body class="t4">
 <script type="text/javascript">
 var _gaq = _gaq || [];
 _gaq.push(
 ['siteTracker._setAccount', 'UA-18071-1'],
 ['siteTracker._trackPageview']);
 
 (function() {
 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
 ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
 (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
 })();
 </script>
<div class="headbg">
 <div id="gaia">
 

 <span>
 
 
 <b>s2108253@gmail.com</b>
 
 
 | <a href="/u/@UxhUQ1dSARJNXAJ7/" id="projects-dropdown" onclick="return false;"
 ><u>My favorites</u> <small>&#9660;</small></a>
 | <a href="/u/@UxhUQ1dSARJNXAJ7/" onclick="_CS_click('/gb/ph/profile');" 
 title="Profile, Updates, and Settings"
 ><u>Profile</u></a>
 | <a href="https://www.google.com/accounts/Logout?continue=http%3A%2F%2Fcode.google.com%2Fp%2Fms-can-display%2Fsource%2Fbrowse%2Ftrunk%2FOldCode%2FMs1-4dgl%2FMegasquirtLookupTables.fnc%3Fr%3D2" 
 onclick="_CS_click('/gb/ph/signout');"
 ><u>Sign out</u></a>
 
 </span>

 </div>
 <div class="gbh" style="left: 0pt;"></div>
 <div class="gbh" style="right: 0pt;"></div>
 
 
 <div style="height: 1px"></div>
<!--[if lte IE 7]>
<div style="text-align:center;">
Your version of Internet Explorer is not supported. Try a browser that
contributes to open source, such as <a href="http://www.firefox.com">Firefox</a>,
<a href="http://www.google.com/chrome">Google Chrome</a>, or
<a href="http://code.google.com/chrome/chromeframe/">Google Chrome Frame</a>.
</div>
<![endif]-->




 <table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0">
 <tr style="height: 58px;">
 
 <td id="plogo">
 <a href="/p/ms-can-display/">
 
 <img src="http://www.gstatic.com/codesite/ph/images/defaultlogo.png" alt="Logo">
 
 </a>
 </td>
 
 <td style="padding-left: 0.5em">
 
 <div id="pname">
 <a href="/p/ms-can-display/">ms-can-display</a>
 </div>
 
 <div id="psum">
 <a id="project_summary_link" href="/p/ms-can-display/" >Megasquirt Display via CAN</a>
 
 </div>
 
 
 </td>
 <td style="white-space:nowrap;text-align:right; vertical-align:bottom;">
 
 <form action="/hosting/search">
 <input size="30" name="q" value="" type="text">
 <input type="submit" name="projectsearch" value="Search projects" >
 </form>
 
 </tr>
 </table>

</div>

 
<div id="mt" class="gtb"> 
 <a href="/p/ms-can-display/" class="tab ">Project&nbsp;Home</a>
 
 
 
 
 <a href="/p/ms-can-display/downloads/list" class="tab ">Downloads</a>
 
 
 
 
 
 <a href="/p/ms-can-display/w/list" class="tab ">Wiki</a>
 
 
 
 
 
 <a href="/p/ms-can-display/issues/list"
 class="tab ">Issues</a>
 
 
 
 
 
 <a href="/p/ms-can-display/source/checkout"
 class="tab active">Source</a>
 
 
 <a href="/p/ms-can-display/admin"
 class="tab inactive">Administer</a>
 
 
 
 
 <div class=gtbc></div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="st">
 <tr>
 
 
 
 
 
 
 <td class="subt">
 <div class="st2">
 <div class="isf">
 
 
 
 <span class="inst1"><a href="/p/ms-can-display/source/checkout">Checkout</a></span> &nbsp;
 <span class="inst2"><a href="/p/ms-can-display/source/browse/">Browse</a></span> &nbsp;
 <span class="inst3"><a href="/p/ms-can-display/source/list">Changes</a></span> &nbsp;
 
 <form action="http://www.google.com/codesearch" method="get" style="display:inline"
 onsubmit="document.getElementById('codesearchq').value = document.getElementById('origq').value + ' package:http://ms-can-display\\.googlecode\\.com'">
 <input type="hidden" name="q" id="codesearchq" value="">
 <input type="text" maxlength="2048" size="38" id="origq" name="origq" value="" title="Google Code Search" style="font-size:92%">&nbsp;<input type="submit" value="Search Trunk" name="btnG" style="font-size:92%">
 
  &nbsp;
 <a href="/p/ms-can-display/issues/entry?show=review&former=sourcelist">Request code review</a>
 
 
 </form>
 </div>
</div>

 </td>
 
 
 
 <td align="right" valign="top" class="bevel-right"></td>
 </tr>
</table>


<script type="text/javascript">
 var cancelBubble = false;
 function _go(url) { document.location = url; }
</script>
<div id="maincol"
 
>

 
<!-- IE -->




<div class="expand">
<div id="colcontrol">
<style type="text/css">
 #file_flipper { white-space: nowrap; padding-right: 2em; }
 #file_flipper.hidden { display: none; }
 #file_flipper .pagelink { color: #0000CC; text-decoration: underline; }
 #file_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }
</style>
<table id="nav_and_rev" class="list"
 cellpadding="0" cellspacing="0" width="100%">
 <tr>
 
 <td nowrap="nowrap" class="src_crumbs src_nav" width="33%">
 <strong class="src_nav">Source path:&nbsp;</strong>
 <span id="crumb_root">
 
 <a href="/p/ms-can-display/source/browse/?r=2">svn</a>/&nbsp;</span>
 <span id="crumb_links" class="ifClosed"><a href="/p/ms-can-display/source/browse/trunk/?r=2">trunk</a><span class="sp">/&nbsp;</span><a href="/p/ms-can-display/source/browse/trunk/OldCode/?r=2">OldCode</a><span class="sp">/&nbsp;</span><a href="/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/?r=2">Ms1-4dgl</a><span class="sp">/&nbsp;</span>MegasquirtLookupTables.fnc</span>
 
 

 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper"><b>r2</b></td>
 
 </tr></table>
 </td> 
 </tr>
</table>

<div class="fc">
 
 
 
<style type="text/css">
.undermouse span {
 background-image: url(http://www.gstatic.com/codesite/ph/images/comments.gif); }
</style>
<table class="opened" id="review_comment_area"
onmouseout="gutterOut()"><tr>
<td id="nums">
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn2_1"

 onmouseover="gutterOver(1)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',1);">&nbsp;</span
></td><td id="1"><a href="#1">1</a></td></tr
><tr id="gr_svn2_2"

 onmouseover="gutterOver(2)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',2);">&nbsp;</span
></td><td id="2"><a href="#2">2</a></td></tr
><tr id="gr_svn2_3"

 onmouseover="gutterOver(3)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',3);">&nbsp;</span
></td><td id="3"><a href="#3">3</a></td></tr
><tr id="gr_svn2_4"

 onmouseover="gutterOver(4)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',4);">&nbsp;</span
></td><td id="4"><a href="#4">4</a></td></tr
><tr id="gr_svn2_5"

 onmouseover="gutterOver(5)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',5);">&nbsp;</span
></td><td id="5"><a href="#5">5</a></td></tr
><tr id="gr_svn2_6"

 onmouseover="gutterOver(6)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',6);">&nbsp;</span
></td><td id="6"><a href="#6">6</a></td></tr
><tr id="gr_svn2_7"

 onmouseover="gutterOver(7)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',7);">&nbsp;</span
></td><td id="7"><a href="#7">7</a></td></tr
><tr id="gr_svn2_8"

 onmouseover="gutterOver(8)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',8);">&nbsp;</span
></td><td id="8"><a href="#8">8</a></td></tr
><tr id="gr_svn2_9"

 onmouseover="gutterOver(9)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',9);">&nbsp;</span
></td><td id="9"><a href="#9">9</a></td></tr
><tr id="gr_svn2_10"

 onmouseover="gutterOver(10)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',10);">&nbsp;</span
></td><td id="10"><a href="#10">10</a></td></tr
><tr id="gr_svn2_11"

 onmouseover="gutterOver(11)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',11);">&nbsp;</span
></td><td id="11"><a href="#11">11</a></td></tr
><tr id="gr_svn2_12"

 onmouseover="gutterOver(12)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',12);">&nbsp;</span
></td><td id="12"><a href="#12">12</a></td></tr
><tr id="gr_svn2_13"

 onmouseover="gutterOver(13)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',13);">&nbsp;</span
></td><td id="13"><a href="#13">13</a></td></tr
><tr id="gr_svn2_14"

 onmouseover="gutterOver(14)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',14);">&nbsp;</span
></td><td id="14"><a href="#14">14</a></td></tr
><tr id="gr_svn2_15"

 onmouseover="gutterOver(15)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',15);">&nbsp;</span
></td><td id="15"><a href="#15">15</a></td></tr
><tr id="gr_svn2_16"

 onmouseover="gutterOver(16)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',16);">&nbsp;</span
></td><td id="16"><a href="#16">16</a></td></tr
><tr id="gr_svn2_17"

 onmouseover="gutterOver(17)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',17);">&nbsp;</span
></td><td id="17"><a href="#17">17</a></td></tr
><tr id="gr_svn2_18"

 onmouseover="gutterOver(18)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',18);">&nbsp;</span
></td><td id="18"><a href="#18">18</a></td></tr
><tr id="gr_svn2_19"

 onmouseover="gutterOver(19)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',19);">&nbsp;</span
></td><td id="19"><a href="#19">19</a></td></tr
><tr id="gr_svn2_20"

 onmouseover="gutterOver(20)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',20);">&nbsp;</span
></td><td id="20"><a href="#20">20</a></td></tr
><tr id="gr_svn2_21"

 onmouseover="gutterOver(21)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',21);">&nbsp;</span
></td><td id="21"><a href="#21">21</a></td></tr
><tr id="gr_svn2_22"

 onmouseover="gutterOver(22)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',22);">&nbsp;</span
></td><td id="22"><a href="#22">22</a></td></tr
><tr id="gr_svn2_23"

 onmouseover="gutterOver(23)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',23);">&nbsp;</span
></td><td id="23"><a href="#23">23</a></td></tr
><tr id="gr_svn2_24"

 onmouseover="gutterOver(24)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',24);">&nbsp;</span
></td><td id="24"><a href="#24">24</a></td></tr
><tr id="gr_svn2_25"

 onmouseover="gutterOver(25)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',25);">&nbsp;</span
></td><td id="25"><a href="#25">25</a></td></tr
><tr id="gr_svn2_26"

 onmouseover="gutterOver(26)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',26);">&nbsp;</span
></td><td id="26"><a href="#26">26</a></td></tr
><tr id="gr_svn2_27"

 onmouseover="gutterOver(27)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',27);">&nbsp;</span
></td><td id="27"><a href="#27">27</a></td></tr
><tr id="gr_svn2_28"

 onmouseover="gutterOver(28)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',28);">&nbsp;</span
></td><td id="28"><a href="#28">28</a></td></tr
><tr id="gr_svn2_29"

 onmouseover="gutterOver(29)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',29);">&nbsp;</span
></td><td id="29"><a href="#29">29</a></td></tr
><tr id="gr_svn2_30"

 onmouseover="gutterOver(30)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',30);">&nbsp;</span
></td><td id="30"><a href="#30">30</a></td></tr
><tr id="gr_svn2_31"

 onmouseover="gutterOver(31)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',31);">&nbsp;</span
></td><td id="31"><a href="#31">31</a></td></tr
><tr id="gr_svn2_32"

 onmouseover="gutterOver(32)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',32);">&nbsp;</span
></td><td id="32"><a href="#32">32</a></td></tr
><tr id="gr_svn2_33"

 onmouseover="gutterOver(33)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',33);">&nbsp;</span
></td><td id="33"><a href="#33">33</a></td></tr
><tr id="gr_svn2_34"

 onmouseover="gutterOver(34)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',34);">&nbsp;</span
></td><td id="34"><a href="#34">34</a></td></tr
><tr id="gr_svn2_35"

 onmouseover="gutterOver(35)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',35);">&nbsp;</span
></td><td id="35"><a href="#35">35</a></td></tr
><tr id="gr_svn2_36"

 onmouseover="gutterOver(36)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',36);">&nbsp;</span
></td><td id="36"><a href="#36">36</a></td></tr
><tr id="gr_svn2_37"

 onmouseover="gutterOver(37)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',37);">&nbsp;</span
></td><td id="37"><a href="#37">37</a></td></tr
><tr id="gr_svn2_38"

 onmouseover="gutterOver(38)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',38);">&nbsp;</span
></td><td id="38"><a href="#38">38</a></td></tr
><tr id="gr_svn2_39"

 onmouseover="gutterOver(39)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',39);">&nbsp;</span
></td><td id="39"><a href="#39">39</a></td></tr
><tr id="gr_svn2_40"

 onmouseover="gutterOver(40)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',40);">&nbsp;</span
></td><td id="40"><a href="#40">40</a></td></tr
><tr id="gr_svn2_41"

 onmouseover="gutterOver(41)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',41);">&nbsp;</span
></td><td id="41"><a href="#41">41</a></td></tr
><tr id="gr_svn2_42"

 onmouseover="gutterOver(42)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',42);">&nbsp;</span
></td><td id="42"><a href="#42">42</a></td></tr
><tr id="gr_svn2_43"

 onmouseover="gutterOver(43)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',43);">&nbsp;</span
></td><td id="43"><a href="#43">43</a></td></tr
><tr id="gr_svn2_44"

 onmouseover="gutterOver(44)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',44);">&nbsp;</span
></td><td id="44"><a href="#44">44</a></td></tr
><tr id="gr_svn2_45"

 onmouseover="gutterOver(45)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',45);">&nbsp;</span
></td><td id="45"><a href="#45">45</a></td></tr
><tr id="gr_svn2_46"

 onmouseover="gutterOver(46)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',46);">&nbsp;</span
></td><td id="46"><a href="#46">46</a></td></tr
><tr id="gr_svn2_47"

 onmouseover="gutterOver(47)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',47);">&nbsp;</span
></td><td id="47"><a href="#47">47</a></td></tr
><tr id="gr_svn2_48"

 onmouseover="gutterOver(48)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',48);">&nbsp;</span
></td><td id="48"><a href="#48">48</a></td></tr
><tr id="gr_svn2_49"

 onmouseover="gutterOver(49)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',49);">&nbsp;</span
></td><td id="49"><a href="#49">49</a></td></tr
><tr id="gr_svn2_50"

 onmouseover="gutterOver(50)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',50);">&nbsp;</span
></td><td id="50"><a href="#50">50</a></td></tr
><tr id="gr_svn2_51"

 onmouseover="gutterOver(51)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',51);">&nbsp;</span
></td><td id="51"><a href="#51">51</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre ><table id="src_table_0"><tr
id=sl_svn2_1

 onmouseover="gutterOver(1)"

><td class="source">//Original table - turbo<br></td></tr
><tr
id=sl_svn2_2

 onmouseover="gutterOver(2)"

><td class="source">//#constant MAP_GAUGE_MIN 10<br></td></tr
><tr
id=sl_svn2_3

 onmouseover="gutterOver(3)"

><td class="source">//#constant MAP_GAUGE_MAX 200<br></td></tr
><tr
id=sl_svn2_4

 onmouseover="gutterOver(4)"

><td class="source">//#DATA byte MAP_TABLE<br></td></tr
><tr
id=sl_svn2_5

 onmouseover="gutterOver(5)"

><td class="source">//100,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,255,255,255,255,100<br></td></tr
><tr
id=sl_svn2_6

 onmouseover="gutterOver(6)"

><td class="source">//#END<br></td></tr
><tr
id=sl_svn2_7

 onmouseover="gutterOver(7)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_8

 onmouseover="gutterOver(8)"

><td class="source">// Original table - Celsius, NA MS5 sensor<br></td></tr
><tr
id=sl_svn2_9

 onmouseover="gutterOver(9)"

><td class="source">//#constant CLT_GAUGE_MIN 0<br></td></tr
><tr
id=sl_svn2_10

 onmouseover="gutterOver(10)"

><td class="source">//#constant CLT_GAUGE_MAX 200<br></td></tr
><tr
id=sl_svn2_11

 onmouseover="gutterOver(11)"

><td class="source">//#constant CLT_OFFSET 0<br></td></tr
><tr
id=sl_svn2_12

 onmouseover="gutterOver(12)"

><td class="source">//#DATA byte CLT_TABLE<br></td></tr
><tr
id=sl_svn2_13

 onmouseover="gutterOver(13)"

><td class="source">//255,255,255,255,255,252,223,201,183,168,156,145,136,129,122,116,110,105,101,97,93,90,87,84,81,79,76,74,72,70,68,67,65,64,62,61,59,58,57,56,55,54,53,52,51,50,49,48,47,47,46,45,45,44,43,43,42,42,41,40,40,39,39,38,38,37,37,37,36,36,35,35,35,34,34,33,33,33,32,32,32,32,31,31,31,30,30,30,30,29,29,29,29,28,28,28,28,27,27,27,27,26,26,26,26,26,26,25,25,25,25,25,24,24,24,24,24,24,23,23,23,23,23,23,23,22,22,22,22,22,22,22,21,21,21,21,21,21,21,21,20,20,20,20,20,20,20,20,20,19,19,19,19,19,19,19,19,19,19,19,18,18,18,18,18,18,18,18,18,18,18,17,17,17,17,17,17,17,17,17,17,17,17,17,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13<br></td></tr
><tr
id=sl_svn2_14

 onmouseover="gutterOver(14)"

><td class="source">//#END<br></td></tr
><tr
id=sl_svn2_15

 onmouseover="gutterOver(15)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_16

 onmouseover="gutterOver(16)"

><td class="source">// Original table - Celsius, NA MS5 sensor<br></td></tr
><tr
id=sl_svn2_17

 onmouseover="gutterOver(17)"

><td class="source">//#constant MAT_GAUGE_MIN 0<br></td></tr
><tr
id=sl_svn2_18

 onmouseover="gutterOver(18)"

><td class="source">//#constant MAT_GAUGE_MAX 200<br></td></tr
><tr
id=sl_svn2_19

 onmouseover="gutterOver(19)"

><td class="source">//#constant MAT_OFFSET 0<br></td></tr
><tr
id=sl_svn2_20

 onmouseover="gutterOver(20)"

><td class="source">//#DATA byte MAT_TABLE<br></td></tr
><tr
id=sl_svn2_21

 onmouseover="gutterOver(21)"

><td class="source">//103,102,102,101,100,100,99,99,98,97,97,96,95,95,94,93,93,92,91,91,90,90,89,88,88,87,86,86,85,84,84,83,82,82,81,81,80,79,79,78,77,77,76,75,75,74,73,73,72,72,71,70,70,69,68,68,67,66,66,65,64,64,63,63,62,61,61,60,59,59,58,57,57,56,55,55,54,54,53,52,52,51,50,50,49,48,48,47,46,46,45,45,44,43,43,42,41,41,40,39,39,38,37,37,36,36,35,34,34,33,32,32,31,30,30,29,28,28,27,27,26,25,25,24,23,23,22,21,21,20,19,19,18,18,17,16,16,15,14,14,13,12,12,11,10,10,9,9,8,7,7,6,5,5,4,3,3,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0<br></td></tr
><tr
id=sl_svn2_22

 onmouseover="gutterOver(22)"

><td class="source">//#END<br></td></tr
><tr
id=sl_svn2_23

 onmouseover="gutterOver(23)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_24

 onmouseover="gutterOver(24)"

><td class="source">//Table from Megaview - non turbo<br></td></tr
><tr
id=sl_svn2_25

 onmouseover="gutterOver(25)"

><td class="source">#constant MAP_GAUGE_MIN 10<br></td></tr
><tr
id=sl_svn2_26

 onmouseover="gutterOver(26)"

><td class="source">#constant MAP_GAUGE_MAX 121<br></td></tr
><tr
id=sl_svn2_27

 onmouseover="gutterOver(27)"

><td class="source">#DATA byte MAP_TABLE<br></td></tr
><tr
id=sl_svn2_28

 onmouseover="gutterOver(28)"

><td class="source">100,10,11,11,12,12,13,13,14,14,14,15,15,16,16,17,17,17,18,18,19,19,20,20,21,21,21,22,22,23,23,24,24,24,25,25,26,26,27,27,27,28,28,29,29,30,30,31,31,31,32,32,33,33,34,34,34,35,35,36,36,37,37,38,38,38,39,39,40,40,41,41,41,42,42,43,43,44,44,44,45,45,46,46,47,47,48,48,48,49,49,50,50,51,51,51,52,52,53,53,54,54,55,55,55,56,56,57,57,58,58,58,59,59,60,60,61,61,61,62,62,63,63,64,64,65,65,65,66,66,67,67,68,68,68,69,69,70,70,71,71,71,72,72,73,73,74,74,75,75,75,76,76,77,77,78,78,78,79,79,80,80,81,81,82,82,82,83,83,84,84,85,85,85,86,86,87,87,88,88,88,89,89,90,90,91,91,92,92,92,93,93,94,94,95,95,95,96,96,97,97,98,98,99,99,99,100,100,101,101,102,102,102,103,103,104,104,105,105,105,106,106,107,107,108,108,109,109,109,110,110,111,111,112,112,112,113,113,114,114,115,115,116,116,116,117,117,118,118,119,119,119,120,120,121,100<br></td></tr
><tr
id=sl_svn2_29

 onmouseover="gutterOver(29)"

><td class="source">#END<br></td></tr
><tr
id=sl_svn2_30

 onmouseover="gutterOver(30)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_31

 onmouseover="gutterOver(31)"

><td class="source">//Table from Megaview - Farenheight, GM sensor, -40 for actual<br></td></tr
><tr
id=sl_svn2_32

 onmouseover="gutterOver(32)"

><td class="source">#constant CLT_GAUGE_MIN 32<br></td></tr
><tr
id=sl_svn2_33

 onmouseover="gutterOver(33)"

><td class="source">#constant CLT_GAUGE_MAX 215<br></td></tr
><tr
id=sl_svn2_34

 onmouseover="gutterOver(34)"

><td class="source">#constant CLT_OFFSET -40<br></td></tr
><tr
id=sl_svn2_35

 onmouseover="gutterOver(35)"

><td class="source">#DATA byte CLT_TABLE<br></td></tr
><tr
id=sl_svn2_36

 onmouseover="gutterOver(36)"

><td class="source">210,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,252,249,246,244,241,238,235,232,230,228,225,223,220,218,216,214,212,210,209,207,205,203,202,200,198,197,195,194,193,192,190,189,188,186,185,184,182,181,179,178,178,177,176,175,174,173,172,171,170,169,168,167,165,164,163,162,161,161,160,159,158,158,157,156,155,155,154,153,152,151,151,150,149,148,147,146,145,145,144,143,142,142,141,141,140,139,139,138,138,137,136,136,135,134,134,133,132,131,131,130,129,128,128,127,126,125,125,124,124,123,123,122,122,121,121,120,119,119,118,118,117,116,116,115,114,114,113,112,112,111,110,109,109,108,107,107,106,106,105,105,104,104,103,102,102,101,101,100,99,99,98,97,97,96,95,95,94,93,92,91,91,90,89,89,88,87,87,86,86,85,84,84,83,82,82,81,80,80,79,78,77,76,75,74,73,72,71,71,70,69,69,68,67,66,66,65,64,63,62,61,60,59,58,56,55,53,53,52,51,50,49,48,47,45,44,42,41,39,37,35,34,32,31,29,27,25,22,19,17,14,12,8,4,0,0,0,0,0,0,210<br></td></tr
><tr
id=sl_svn2_37

 onmouseover="gutterOver(37)"

><td class="source">#END<br></td></tr
><tr
id=sl_svn2_38

 onmouseover="gutterOver(38)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_39

 onmouseover="gutterOver(39)"

><td class="source">//Table from Megaview - Farenheight, GM sensor, -40 for actual<br></td></tr
><tr
id=sl_svn2_40

 onmouseover="gutterOver(40)"

><td class="source">#constant MAT_GAUGE_MIN -40<br></td></tr
><tr
id=sl_svn2_41

 onmouseover="gutterOver(41)"

><td class="source">#constant MAT_GAUGE_MAX 215<br></td></tr
><tr
id=sl_svn2_42

 onmouseover="gutterOver(42)"

><td class="source">#constant MAT_OFFSET -40<br></td></tr
><tr
id=sl_svn2_43

 onmouseover="gutterOver(43)"

><td class="source">#DATA byte MAT_TABLE<br></td></tr
><tr
id=sl_svn2_44

 onmouseover="gutterOver(44)"

><td class="source">0,210,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,252,249,246,244,241,238,235,232,230,228,225,223,220,218,216,214,212,210,209,207,205,203,202,200,198,197,195,194,193,192,190,189,188,186,185,184,182,181,179,178,178,177,176,175,174,173,172,171,170,169,168,167,165,164,163,162,161,161,160,159,158,158,157,156,155,155,154,153,152,151,151,150,149,148,147,146,145,145,144,143,142,142,141,141,140,139,139,138,138,137,136,136,135,134,134,133,132,131,131,130,129,128,128,127,126,125,125,124,124,123,123,122,122,121,121,120,119,119,118,118,117,116,116,115,114,114,113,112,112,111,110,109,109,108,107,107,106,106,105,105,104,104,103,102,102,101,101,100,99,99,98,97,97,96,95,95,94,93,92,91,91,90,89,89,88,87,87,86,86,85,84,84,83,82,82,81,80,80,79,78,77,76,75,74,73,72,71,71,70,69,69,68,67,66,66,65,64,63,62,61,60,59,58,56,55,53,53,52,51,50,49,48,47,45,44,42,41,39,37,35,34,32,31,29,27,25,22,19,17,14,12,8,4,0,0,0,0,0,0,210<br></td></tr
><tr
id=sl_svn2_45

 onmouseover="gutterOver(45)"

><td class="source">#END<br></td></tr
><tr
id=sl_svn2_46

 onmouseover="gutterOver(46)"

><td class="source"><br></td></tr
><tr
id=sl_svn2_47

 onmouseover="gutterOver(47)"

><td class="source">#constant AFR_GAUGE_MIN 7408<br></td></tr
><tr
id=sl_svn2_48

 onmouseover="gutterOver(48)"

><td class="source">#constant AFR_GAUGE_MAX 22050<br></td></tr
><tr
id=sl_svn2_49

 onmouseover="gutterOver(49)"

><td class="source">#DATA word EGO_TABLE<br></td></tr
><tr
id=sl_svn2_50

 onmouseover="gutterOver(50)"

><td class="source">7408,7465,7523,7581,7638,7696,7754,7811,7869,7926,7984,8042,8099,8157,8215,8272,8330,8388,8445,8503,8561,8618,8676,8734,8791,8849,8906,8964,9022,9079,9137,9195,9252,9310,9368,9425,9483,9541,9598,9656,9714,9771,9829,9886,9944,10002,10059,10117,10175,10232,10290,10348,10405,10463,10521,10578,10636,10694,10751,10809,10866,10924,10982,11039,11097,11155,11212,11270,11328,11385,11443,11501,11558,11616,11674,11731,11789,11846,11904,11962,12019,12077,12135,12192,12250,12308,12365,12423,12481,12538,12596,12654,12711,12769,12826,12884,12942,12999,13057,13115,13172,13230,13288,13345,13403,13461,13518,13576,13634,13691,13749,13806,13864,13922,13979,14037,14095,14152,14210,14268,14325,14383,14441,14498,14556,14614,14671,14729,14786,14844,14902,14959,15017,15075,15132,15190,15248,15305,15363,15421,15478,15536,15594,15651,15709,15766,15824,15882,15939,15997,16055,16112,16170,16228,16285,16343,16401,16458,16516,16574,16631,16689,16746,16804,16862,16919,16977,17035,17092,17150,17208,17265,17323,17381,17438,17496,17554,17611,17669,17726,17784,17842,17899,17957,18015,18072,18130,18188,18245,18303,18361,18418,18476,18534,18591,18649,18706,18764,18822,18879,18937,18995,19052,19110,19168,19225,19283,19341,19398,19456,19514,19571,19629,19686,19744,19802,19859,19917,19975,20032,20090,20148,20205,20263,20321,20378,20436,20494,20551,20609,20666,20724,20782,20839,20897,20955,21012,21070,21128,21185,21243,21301,21358,21416,21474,21531,21589,21646,21704,21762,21819,21877,21935,21992,22050<br></td></tr
><tr
id=sl_svn2_51

 onmouseover="gutterOver(51)"

><td class="source">#END<br></td></tr
></table></pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
</td>
</tr></table>

 
<script type="text/javascript">
 var lineNumUnderMouse = -1;
 
 function gutterOver(num) {
 gutterOut();
 var newTR = document.getElementById('gr_svn2_' + num);
 if (newTR) {
 newTR.className = 'undermouse';
 }
 lineNumUnderMouse = num;
 }
 function gutterOut() {
 if (lineNumUnderMouse != -1) {
 var oldTR = document.getElementById(
 'gr_svn2_' + lineNumUnderMouse);
 if (oldTR) {
 oldTR.className = '';
 }
 lineNumUnderMouse = -1;
 }
 }
 var numsGenState = {table_base_id: 'nums_table_'};
 var srcGenState = {table_base_id: 'src_table_'};
 var alignerRunning = false;
 var startOver = false;
 function setLineNumberHeights() {
 if (alignerRunning) {
 startOver = true;
 return;
 }
 numsGenState.chunk_id = 0;
 numsGenState.table = document.getElementById('nums_table_0');
 numsGenState.row_num = 0;
 if (!numsGenState.table) {
 return; // Silently exit if no file is present.
 }
 srcGenState.chunk_id = 0;
 srcGenState.table = document.getElementById('src_table_0');
 srcGenState.row_num = 0;
 alignerRunning = true;
 continueToSetLineNumberHeights();
 }
 function rowGenerator(genState) {
 if (genState.row_num < genState.table.rows.length) {
 var currentRow = genState.table.rows[genState.row_num];
 genState.row_num++;
 return currentRow;
 }
 var newTable = document.getElementById(
 genState.table_base_id + (genState.chunk_id + 1));
 if (newTable) {
 genState.chunk_id++;
 genState.row_num = 0;
 genState.table = newTable;
 return genState.table.rows[0];
 }
 return null;
 }
 var MAX_ROWS_PER_PASS = 1000;
 function continueToSetLineNumberHeights() {
 var rowsInThisPass = 0;
 var numRow = 1;
 var srcRow = 1;
 while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {
 numRow = rowGenerator(numsGenState);
 srcRow = rowGenerator(srcGenState);
 rowsInThisPass++;
 if (numRow && srcRow) {
 if (numRow.offsetHeight != srcRow.offsetHeight) {
 numRow.firstChild.style.height = srcRow.offsetHeight + 'px';
 }
 }
 }
 if (rowsInThisPass >= MAX_ROWS_PER_PASS) {
 setTimeout(continueToSetLineNumberHeights, 10);
 } else {
 alignerRunning = false;
 if (startOver) {
 startOver = false;
 setTimeout(setLineNumberHeights, 500);
 }
 }
 }
 function initLineNumberHeights() {
 // Do 2 complete passes, because there can be races
 // between this code and prettify.
 startOver = true;
 setTimeout(setLineNumberHeights, 250);
 window.onresize = setLineNumberHeights;
 }
 initLineNumberHeights();
</script>

 
 
 <div id="log">
 <div style="text-align:right">
 <a class="ifCollapse" href="#" onclick="_toggleMeta('', 'p', 'ms-can-display', this)">Show details</a>
 <a class="ifExpand" href="#" onclick="_toggleMeta('', 'p', 'ms-can-display', this)">Hide details</a>
 </div>
 <div class="ifExpand">
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="changelog">
 <p>Change log</p>
 <div>
 <a href="/p/ms-can-display/source/detail?spec=svn2&r=2">r2</a>
 by ian350z@gmail.com
 on Apr 20, 2011
 &nbsp; <a href="/p/ms-can-display/source/diff?spec=svn2&r=2&amp;format=side&amp;path=/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc&amp;old_path=/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc&amp;old=">Diff</a>
 </div>
 <pre>test
</pre>
 </div>
 
 
 
 
 
 
 <script type="text/javascript">
 var detail_url = '/p/ms-can-display/source/detail?r=2&spec=svn2';
 var publish_url = '/p/ms-can-display/source/detail?r=2&spec=svn2#publish';
 // describe the paths of this revision in javascript.
 var changed_paths = [];
 var changed_urls = [];
 
 changed_paths.push('/trunk/OldCode');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/Ms1-4dgl');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc?r\x3d2\x26spec\x3dsvn2');
 
 var selected_path = '/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc';
 
 
 changed_paths.push('/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/PerlINIreader');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/PerlINIreader/Convert.pl');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader/Convert.pl?r\x3d2\x26spec\x3dsvn2');
 
 
 function getCurrentPageIndex() {
 for (var i = 0; i < changed_paths.length; i++) {
 if (selected_path == changed_paths[i]) {
 return i;
 }
 }
 }
 function getNextPage() {
 var i = getCurrentPageIndex();
 if (i < changed_paths.length - 1) {
 return changed_urls[i + 1];
 }
 return null;
 }
 function getPreviousPage() {
 var i = getCurrentPageIndex();
 if (i > 0) {
 return changed_urls[i - 1];
 }
 return null;
 }
 function gotoNextPage() {
 var page = getNextPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoPreviousPage() {
 var page = getPreviousPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoDetailPage() {
 window.location = detail_url;
 }
 function gotoPublishPage() {
 window.location = publish_url;
 }
</script>

 
 <style type="text/css">
 #review_nav {
 border-top: 3px solid white;
 padding-top: 6px;
 margin-top: 1em;
 }
 #review_nav td {
 vertical-align: middle;
 }
 #review_nav select {
 margin: .5em 0;
 }
 </style>
 <div id="review_nav">
 <table><tr><td>Go to:&nbsp;</td><td>
 <select name="files_in_rev" onchange="window.location=this.value">
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode?r=2&amp;spec=svn2"
 
 >/trunk/OldCode</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl?r=2&amp;spec=svn2"
 
 >/trunk/OldCode/Ms1-4dgl</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc?r=2&amp;spec=svn2"
 selected="selected"
 >...-4dgl/MegasquirtLookupTables.fnc</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl?r=2&amp;spec=svn2"
 
 >...OldCode/Ms1-4dgl/Ms1Display.4dgl</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader?r=2&amp;spec=svn2"
 
 >/trunk/OldCode/PerlINIreader</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader/Convert.pl?r=2&amp;spec=svn2"
 
 >...OldCode/PerlINIreader/Convert.pl</option>
 
 </select>
 </td></tr></table>
 
 
 
 <div id="review_instr" class="closed">
 <a class="ifOpened" href="/p/ms-can-display/source/detail?r=2&spec=svn2#publish">Publish your comments</a>
 <div class="ifClosed">Double click a line to add a comment</div>
 </div>
 
 </div>
 
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="older_bubble">
 <p>Older revisions</p>
 
 <a href="/p/ms-can-display/source/list?path=/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc&start=2">All revisions of this file</a>
 </div>
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="fileinfo_bubble">
 <p>File info</p>
 
 <div>Size: 7563 bytes,
 51 lines</div>
 
 <div><a href="//ms-can-display.googlecode.com/svn-history/r2/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc">View raw file</a></div>
 </div>
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 </div>
 </div>


</div>

</div>
</div>


<script src="http://www.gstatic.com/codesite/ph/806273160146606062/js/source_file_scripts.js"></script>

 <script type="text/javascript" src="https://kibbles.googlecode.com/files/kibbles-1.3.3.comp.js"></script>
 <script type="text/javascript">
 var lastStop = null;
 var initialized = false;
 
 function updateCursor(next, prev) {
 if (prev && prev.element) {
 prev.element.className = 'cursor_stop cursor_hidden';
 }
 if (next && next.element) {
 next.element.className = 'cursor_stop cursor';
 lastStop = next.index;
 }
 }
 
 function pubRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftDestroyed(data) {
 updateCursorForCell(data.cellId, 'nocursor');
 if (initialized) {
 reloadCursors();
 }
 }
 function reloadCursors() {
 kibbles.skipper.reset();
 loadCursors();
 if (lastStop != null) {
 kibbles.skipper.setCurrentStop(lastStop);
 }
 }
 // possibly the simplest way to insert any newly added comments
 // is to update the class of the corresponding cursor row,
 // then refresh the entire list of rows.
 function updateCursorForCell(cellId, className) {
 var cell = document.getElementById(cellId);
 // we have to go two rows back to find the cursor location
 var row = getPreviousElement(cell.parentNode);
 row.className = className;
 }
 // returns the previous element, ignores text nodes.
 function getPreviousElement(e) {
 var element = e.previousSibling;
 if (element.nodeType == 3) {
 element = element.previousSibling;
 }
 if (element && element.tagName) {
 return element;
 }
 }
 function loadCursors() {
 // register our elements with skipper
 var elements = CR_getElements('*', 'cursor_stop');
 var len = elements.length;
 for (var i = 0; i < len; i++) {
 var element = elements[i]; 
 element.className = 'cursor_stop cursor_hidden';
 kibbles.skipper.append(element);
 }
 }
 function toggleComments() {
 CR_toggleCommentDisplay();
 reloadCursors();
 }
 function keysOnLoadHandler() {
 // setup skipper
 kibbles.skipper.addStopListener(
 kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_top', 50);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_bottom', 100);
 // Register our keys
 kibbles.skipper.addFwdKey("n");
 kibbles.skipper.addRevKey("p");
 kibbles.keys.addKeyPressListener(
 'u', function() { window.location = detail_url; });
 kibbles.keys.addKeyPressListener(
 'r', function() { window.location = detail_url + '#publish'; });
 
 kibbles.keys.addKeyPressListener('j', gotoNextPage);
 kibbles.keys.addKeyPressListener('k', gotoPreviousPage);
 
 
 kibbles.keys.addKeyPressListener('h', toggleComments);
 
 }
 </script>
<script src="http://www.gstatic.com/codesite/ph/806273160146606062/js/code_review_scripts.js"></script>
<script type="text/javascript">
 function showPublishInstructions() {
 var element = document.getElementById('review_instr');
 if (element) {
 element.className = 'opened';
 }
 }
 var codereviews;
 function revsOnLoadHandler() {
 // register our source container with the commenting code
 var paths = {'svn2': '/trunk/OldCode/Ms1-4dgl/MegasquirtLookupTables.fnc'}
 codereviews = CR_controller.setup(
 {"token":"fa41ed2229a26f5ffed2bc42fa2f70d4","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/806273160146606062","projectName":"ms-can-display","projectHomeUrl":"/p/ms-can-display","absoluteBaseUrl":"http://code.google.com","relativeBaseUrl":"","urlPrefix":"p","loggedInUserEmail":"s2108253@gmail.com"}, '', 'svn2', paths,
 CR_BrowseIntegrationFactory);
 
 // register our source container with the commenting code
 // in this case we're registering the container and the revison
 // associated with the contianer which may be the primary revision
 // or may be a previous revision against which the primary revision
 // of the file is being compared.
 codereviews.registerSourceContainer(document.getElementById('lines'), 'svn2');
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);
 codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);
 
 
 
 
 
 
 
 var initialized = true;
 reloadCursors();
 }
 window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};

</script>
<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/806273160146606062/js/dit_scripts.js"></script>

 
 
 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/806273160146606062/js/core_scripts.js"></script>
 <script type="text/javascript" src="/js/codesite_product_dictionary_ph.pack.04102009.js"></script>
</div> 
<div id="footer" dir="ltr">
 
 <div class="text">
 
 &copy;2011 Google -
 <a href="/projecthosting/terms.html">Terms</a> -
 <a href="http://www.google.com/privacy.html">Privacy</a> -
 <a href="/p/support/">Project Hosting Help</a>
 
 </div>
</div>
 <div class="hostedBy" style="margin-top: -20px;">
 <span style="vertical-align: top;">Powered by <a href="http://code.google.com/projecthosting/">Google Project Hosting</a></span>
 </div>
 
 


 
 </body>
</html>

