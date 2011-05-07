



<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico">
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = "fa41ed2229a26f5ffed2bc42fa2f70d4";
 
 
 var CS_env = {"token":"fa41ed2229a26f5ffed2bc42fa2f70d4","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/806273160146606062","projectName":"ms-can-display","projectHomeUrl":"/p/ms-can-display","absoluteBaseUrl":"http://code.google.com","relativeBaseUrl":"","urlPrefix":"p","loggedInUserEmail":"s2108253@gmail.com"};
 </script>
 
 
 <title>Convert.pl - 
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
 | <a href="https://www.google.com/accounts/Logout?continue=http%3A%2F%2Fcode.google.com%2Fp%2Fms-can-display%2Fsource%2Fbrowse%2Ftrunk%2FOldCode%2FPerlINIreader%2FConvert.pl%3Fr%3D2" 
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
 <span id="crumb_links" class="ifClosed"><a href="/p/ms-can-display/source/browse/trunk/?r=2">trunk</a><span class="sp">/&nbsp;</span><a href="/p/ms-can-display/source/browse/trunk/OldCode/?r=2">OldCode</a><span class="sp">/&nbsp;</span><a href="/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader/?r=2">PerlINIreader</a><span class="sp">/&nbsp;</span>Convert.pl</span>
 
 

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
><tr id="gr_svn2_52"

 onmouseover="gutterOver(52)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',52);">&nbsp;</span
></td><td id="52"><a href="#52">52</a></td></tr
><tr id="gr_svn2_53"

 onmouseover="gutterOver(53)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',53);">&nbsp;</span
></td><td id="53"><a href="#53">53</a></td></tr
><tr id="gr_svn2_54"

 onmouseover="gutterOver(54)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',54);">&nbsp;</span
></td><td id="54"><a href="#54">54</a></td></tr
><tr id="gr_svn2_55"

 onmouseover="gutterOver(55)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',55);">&nbsp;</span
></td><td id="55"><a href="#55">55</a></td></tr
><tr id="gr_svn2_56"

 onmouseover="gutterOver(56)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',56);">&nbsp;</span
></td><td id="56"><a href="#56">56</a></td></tr
><tr id="gr_svn2_57"

 onmouseover="gutterOver(57)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',57);">&nbsp;</span
></td><td id="57"><a href="#57">57</a></td></tr
><tr id="gr_svn2_58"

 onmouseover="gutterOver(58)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',58);">&nbsp;</span
></td><td id="58"><a href="#58">58</a></td></tr
><tr id="gr_svn2_59"

 onmouseover="gutterOver(59)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',59);">&nbsp;</span
></td><td id="59"><a href="#59">59</a></td></tr
><tr id="gr_svn2_60"

 onmouseover="gutterOver(60)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',60);">&nbsp;</span
></td><td id="60"><a href="#60">60</a></td></tr
><tr id="gr_svn2_61"

 onmouseover="gutterOver(61)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',61);">&nbsp;</span
></td><td id="61"><a href="#61">61</a></td></tr
><tr id="gr_svn2_62"

 onmouseover="gutterOver(62)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',62);">&nbsp;</span
></td><td id="62"><a href="#62">62</a></td></tr
><tr id="gr_svn2_63"

 onmouseover="gutterOver(63)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',63);">&nbsp;</span
></td><td id="63"><a href="#63">63</a></td></tr
><tr id="gr_svn2_64"

 onmouseover="gutterOver(64)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',64);">&nbsp;</span
></td><td id="64"><a href="#64">64</a></td></tr
><tr id="gr_svn2_65"

 onmouseover="gutterOver(65)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',65);">&nbsp;</span
></td><td id="65"><a href="#65">65</a></td></tr
><tr id="gr_svn2_66"

 onmouseover="gutterOver(66)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',66);">&nbsp;</span
></td><td id="66"><a href="#66">66</a></td></tr
><tr id="gr_svn2_67"

 onmouseover="gutterOver(67)"

><td><span title="Add comment" onclick="codereviews.startEdit('svn2',67);">&nbsp;</span
></td><td id="67"><a href="#67">67</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre class="prettyprint lang-pl"><table id="src_table_0"><tr
id=sl_svn2_1

 onmouseover="gutterOver(1)"

><td class="source">$mode=0;<br></td></tr
><tr
id=sl_svn2_2

 onmouseover="gutterOver(2)"

><td class="source">$cnt=0;<br></td></tr
><tr
id=sl_svn2_3

 onmouseover="gutterOver(3)"

><td class="source">$out=&#39;&#39;;<br></td></tr
><tr
id=sl_svn2_4

 onmouseover="gutterOver(4)"

><td class="source">$outf=&quot;uconf.dat&quot;;<br></td></tr
><tr
id=sl_svn2_5

 onmouseover="gutterOver(5)"

><td class="source">$ConParse=&#39;&#39;;<br></td></tr
><tr
id=sl_svn2_6

 onmouseover="gutterOver(6)"

><td class="source">$read=1;<br></td></tr
><tr
id=sl_svn2_7

 onmouseover="gutterOver(7)"

><td class="source">@conf = qw( MPH );<br></td></tr
><tr
id=sl_svn2_8

 onmouseover="gutterOver(8)"

><td class="source">@Wanted= qw(mat coolant seconds rpm ready crank startw warmup afrgt1 map <br></td></tr
><tr
id=sl_svn2_9

 onmouseover="gutterOver(9)"

><td class="source">            tps batteryVoltage vss1 gear);<br></td></tr
><tr
id=sl_svn2_10

 onmouseover="gutterOver(10)"

><td class="source">open(OUT, &quot;&gt;$outf&quot;);<br></td></tr
><tr
id=sl_svn2_11

 onmouseover="gutterOver(11)"

><td class="source">while (&lt;&gt;) {<br></td></tr
><tr
id=sl_svn2_12

 onmouseover="gutterOver(12)"

><td class="source">  if ((!$mode) &amp;&amp; (/\[OutputChannels\]/)) {<br></td></tr
><tr
id=sl_svn2_13

 onmouseover="gutterOver(13)"

><td class="source">     #print &quot;Begin serial output config section\n&quot;;<br></td></tr
><tr
id=sl_svn2_14

 onmouseover="gutterOver(14)"

><td class="source">     $mode=1;<br></td></tr
><tr
id=sl_svn2_15

 onmouseover="gutterOver(15)"

><td class="source">  } elsif ($mode) {<br></td></tr
><tr
id=sl_svn2_16

 onmouseover="gutterOver(16)"

><td class="source">		if (/^\[/) {<br></td></tr
><tr
id=sl_svn2_17

 onmouseover="gutterOver(17)"

><td class="source">      #print &quot;\nEnd of serial output config section\n&quot;;<br></td></tr
><tr
id=sl_svn2_18

 onmouseover="gutterOver(18)"

><td class="source">		  $mode=0;<br></td></tr
><tr
id=sl_svn2_19

 onmouseover="gutterOver(19)"

><td class="source">			break;<br></td></tr
><tr
id=sl_svn2_20

 onmouseover="gutterOver(20)"

><td class="source">		} elsif ((/^\#if\s+(.*)/) || (/^\#elif\s+(.*)/)) {<br></td></tr
><tr
id=sl_svn2_21

 onmouseover="gutterOver(21)"

><td class="source">			my $cs = $1;<br></td></tr
><tr
id=sl_svn2_22

 onmouseover="gutterOver(22)"

><td class="source">		  $read = 0;<br></td></tr
><tr
id=sl_svn2_23

 onmouseover="gutterOver(23)"

><td class="source">			foreach $c (@conf) {<br></td></tr
><tr
id=sl_svn2_24

 onmouseover="gutterOver(24)"

><td class="source">				if ($c eq $cs) {<br></td></tr
><tr
id=sl_svn2_25

 onmouseover="gutterOver(25)"

><td class="source">			     #print &quot;Found $c section\n&quot;;<br></td></tr
><tr
id=sl_svn2_26

 onmouseover="gutterOver(26)"

><td class="source">			     $ConParse=$c;<br></td></tr
><tr
id=sl_svn2_27

 onmouseover="gutterOver(27)"

><td class="source">			     $read=1;<br></td></tr
><tr
id=sl_svn2_28

 onmouseover="gutterOver(28)"

><td class="source">				}<br></td></tr
><tr
id=sl_svn2_29

 onmouseover="gutterOver(29)"

><td class="source">			}<br></td></tr
><tr
id=sl_svn2_30

 onmouseover="gutterOver(30)"

><td class="source">		} elsif ((/^\#else/) &amp;&amp; ($ConParse ne &#39;&#39;)) {<br></td></tr
><tr
id=sl_svn2_31

 onmouseover="gutterOver(31)"

><td class="source">			$read=0;<br></td></tr
><tr
id=sl_svn2_32

 onmouseover="gutterOver(32)"

><td class="source">		} elsif ((/^\#else/) &amp;&amp; ($ConParse eq &#39;&#39;)) {<br></td></tr
><tr
id=sl_svn2_33

 onmouseover="gutterOver(33)"

><td class="source">			#print &quot;Using else section\n&quot;;<br></td></tr
><tr
id=sl_svn2_34

 onmouseover="gutterOver(34)"

><td class="source">			$read=1;<br></td></tr
><tr
id=sl_svn2_35

 onmouseover="gutterOver(35)"

><td class="source">		} elsif (/^\#endif/) {<br></td></tr
><tr
id=sl_svn2_36

 onmouseover="gutterOver(36)"

><td class="source">			#print &quot;End of $ConParse section\n&quot;;<br></td></tr
><tr
id=sl_svn2_37

 onmouseover="gutterOver(37)"

><td class="source">			$ConParse=&#39;&#39;;<br></td></tr
><tr
id=sl_svn2_38

 onmouseover="gutterOver(38)"

><td class="source">			$read=1;<br></td></tr
><tr
id=sl_svn2_39

 onmouseover="gutterOver(39)"

><td class="source">			#            seconds  =  scalar,       U16,          0,           &quot;s&quot;,  1.000, 0.0<br></td></tr
><tr
id=sl_svn2_40

 onmouseover="gutterOver(40)"

><td class="source">			#} elsif (/\s+(\w+)\s+=\s+(\w+)\s?,\s+(\w\d+)\s?,\s+(\d+)\s?,\s+\&quot;(.+)\&quot;\s?,\s+/) {<br></td></tr
><tr
id=sl_svn2_41

 onmouseover="gutterOver(41)"

><td class="source">		} elsif ((/\s+(.*)\s+=\s+(.*)/) &amp;&amp; ($read)) {<br></td></tr
><tr
id=sl_svn2_42

 onmouseover="gutterOver(42)"

><td class="source">			my $n = $1;<br></td></tr
><tr
id=sl_svn2_43

 onmouseover="gutterOver(43)"

><td class="source">			my $rest = $2;<br></td></tr
><tr
id=sl_svn2_44

 onmouseover="gutterOver(44)"

><td class="source">			$rest =~ s/\s+//g;<br></td></tr
><tr
id=sl_svn2_45

 onmouseover="gutterOver(45)"

><td class="source">			$rest =~ s/\&quot;//g;<br></td></tr
><tr
id=sl_svn2_46

 onmouseover="gutterOver(46)"

><td class="source">			my @tarr = split(&#39;,&#39;, $rest);<br></td></tr
><tr
id=sl_svn2_47

 onmouseover="gutterOver(47)"

><td class="source">			$n =~ s/\s+//g;<br></td></tr
><tr
id=sl_svn2_48

 onmouseover="gutterOver(48)"

><td class="source">			foreach $w (@Wanted) {<br></td></tr
><tr
id=sl_svn2_49

 onmouseover="gutterOver(49)"

><td class="source">				if ($n eq $w) {<br></td></tr
><tr
id=sl_svn2_50

 onmouseover="gutterOver(50)"

><td class="source">     			if ($tarr[0] eq &quot;scalar&quot;) {<br></td></tr
><tr
id=sl_svn2_51

 onmouseover="gutterOver(51)"

><td class="source">	    			print &quot;$n: $tarr[1] offs:$tarr[2], unit:$tarr[3], scale:$tarr[4], trans:$tarr[5]\n&quot;;<br></td></tr
><tr
id=sl_svn2_52

 onmouseover="gutterOver(52)"

><td class="source">            $out .= &quot;1\n$n\n$tarr[1]\n$tarr[2]\n$tarr[3]\n$tarr[4]\n$tarr[5]\n&quot;;<br></td></tr
><tr
id=sl_svn2_53

 onmouseover="gutterOver(53)"

><td class="source">    				$cnt++;<br></td></tr
><tr
id=sl_svn2_54

 onmouseover="gutterOver(54)"

><td class="source">	    		} elsif ($tarr[0] eq &quot;bits&quot;) {<br></td></tr
><tr
id=sl_svn2_55

 onmouseover="gutterOver(55)"

><td class="source">     				$tarr[3] =~ /\[(\d):\d\]/;<br></td></tr
><tr
id=sl_svn2_56

 onmouseover="gutterOver(56)"

><td class="source">		     		$out .= &quot;0\n$n\n$tarr[2]\n$1\n&quot;;<br></td></tr
><tr
id=sl_svn2_57

 onmouseover="gutterOver(57)"

><td class="source">     				print &quot;bit $n, offs $tarr[2], loc:$1\n&quot;;<br></td></tr
><tr
id=sl_svn2_58

 onmouseover="gutterOver(58)"

><td class="source">     				$cnt++;<br></td></tr
><tr
id=sl_svn2_59

 onmouseover="gutterOver(59)"

><td class="source">     			}<br></td></tr
><tr
id=sl_svn2_60

 onmouseover="gutterOver(60)"

><td class="source">			  }<br></td></tr
><tr
id=sl_svn2_61

 onmouseover="gutterOver(61)"

><td class="source">			}<br></td></tr
><tr
id=sl_svn2_62

 onmouseover="gutterOver(62)"

><td class="source">		}<br></td></tr
><tr
id=sl_svn2_63

 onmouseover="gutterOver(63)"

><td class="source">	}<br></td></tr
><tr
id=sl_svn2_64

 onmouseover="gutterOver(64)"

><td class="source">}<br></td></tr
><tr
id=sl_svn2_65

 onmouseover="gutterOver(65)"

><td class="source">print OUT &quot;$cnt\n&quot;;<br></td></tr
><tr
id=sl_svn2_66

 onmouseover="gutterOver(66)"

><td class="source">print OUT &quot;$out&quot;;<br></td></tr
><tr
id=sl_svn2_67

 onmouseover="gutterOver(67)"

><td class="source">print &quot;Done, $cnt variables written to $outf\n&quot;;<br></td></tr
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
 &nbsp; <a href="/p/ms-can-display/source/diff?spec=svn2&r=2&amp;format=side&amp;path=/trunk/OldCode/PerlINIreader/Convert.pl&amp;old_path=/trunk/OldCode/PerlINIreader/Convert.pl&amp;old=">Diff</a>
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
 
 
 changed_paths.push('/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/PerlINIreader');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader?r\x3d2\x26spec\x3dsvn2');
 
 
 changed_paths.push('/trunk/OldCode/PerlINIreader/Convert.pl');
 changed_urls.push('/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader/Convert.pl?r\x3d2\x26spec\x3dsvn2');
 
 var selected_path = '/trunk/OldCode/PerlINIreader/Convert.pl';
 
 
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
 
 >...-4dgl/MegasquirtLookupTables.fnc</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/Ms1-4dgl/Ms1Display.4dgl?r=2&amp;spec=svn2"
 
 >...OldCode/Ms1-4dgl/Ms1Display.4dgl</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader?r=2&amp;spec=svn2"
 
 >/trunk/OldCode/PerlINIreader</option>
 
 <option value="/p/ms-can-display/source/browse/trunk/OldCode/PerlINIreader/Convert.pl?r=2&amp;spec=svn2"
 selected="selected"
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
 
 <a href="/p/ms-can-display/source/list?path=/trunk/OldCode/PerlINIreader/Convert.pl&start=2">All revisions of this file</a>
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
 
 <div>Size: 1913 bytes,
 67 lines</div>
 
 <div><a href="//ms-can-display.googlecode.com/svn-history/r2/trunk/OldCode/PerlINIreader/Convert.pl">View raw file</a></div>
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

<script src="http://www.gstatic.com/codesite/ph/806273160146606062/js/prettify/prettify.js"></script>
<script type="text/javascript">prettyPrint();</script>


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
 var paths = {'svn2': '/trunk/OldCode/PerlINIreader/Convert.pl'}
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

