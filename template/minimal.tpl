<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Minimal Theme designed by Artur Kim (http://arturkim.com) for Tumblr | version 1.5 -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>{block:IndexPage}{Title}{/block:IndexPage}{block:SearchPage}Search results for: {SearchQuery}{/block:SearchPage}{block:PostSummary}{PostSummary}{/block:PostSummary}</title>
    {block:Description}<meta name="description" content="{MetaDescription}" />{/block:Description}
    <link rel="shortcut icon" href="{Favicon}" />
    <link rel="apple-touch-icon" href="{PortraitURL-128}"/>
    <link rel="alternate" type="application/rss+xml" href="{RSS}" />

    <!-- DEFAULT VARIABLES -->
    <meta name="color:Post Type Text" content="#555555"/>
    <meta name="color:Post Type Photo" content="#555555"/>
    <meta name="color:Post Type Photoset" content="#555555"/>
    <meta name="color:Post Type Quote" content="#555555"/>
    <meta name="color:Post Type Link" content="#555555"/>
    <meta name="color:Post Type Chat" content="#555555"/>
    <meta name="color:Post Type Video" content="#555555"/>
    <meta name="color:Post Type Audio" content="#555555"/>
    <meta name="image:Header" content=""/>
    <meta name="if:Show About Widget" content="1"/>
    <meta name="if:Show Stuff I Like Widget" content="1"/>
    <meta name="if:Show Latest Tweets Widget" content="0"/>
    <meta name="if:Show People I Follow Widget" content="1"/>
    <meta name="text:Number of Tweets" content="3"/>
    <meta name="text:Google Analytics ID" content="" />
    <meta name="text:Disqus Shortname" content="" />
    
    <link rel="stylesheet" href="http://yandex.st/highlightjs/6.2/styles/github.min.css">

    <style type="text/css" media="screen">
    /* Minimal Theme designed by Artur Kim (http://arturkim.com) for Tumblr | version 1.5 */

    /* RESET */
    html, body, div, span, applet, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    a, abbr, acronym, address, big, cite, code,
    del, dfn, em, font, img, ins, kbd, q, s, samp,
    small, strike, strong, sub, sup, tt, var,
    b, u, i, center,
    dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td {
        margin: 0; padding: 0; border: 0; outline: 0; font-size: 100%; vertical-align: baseline; background: transparent;
    }
    body { line-height: 1; }
    ol, ul { list-style: none; }
    blockquote, q { quotes: none; }
    blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
    :focus { outline: 0; }
    del { text-decoration: line-through; }
    table { border-collapse: collapse; border-spacing: 0; }

    /* GLOBAL ELEMENTS */
    body { background: #fff; }
    body, input, textarea { color: #000; font: 14px/20px "helvetica neue",helvetica,arial,sans-serif; }
    p, ul, ol, dd, pre { margin-bottom: 20px; }
    blockquote { border-left: 5px solid #ddd; color: #555; font-style: italic; margin-bottom: 20px; padding-left: 10px; }
    table { border: 1px solid #ccc; border-width: 1px 1px 0 1px; font-size: 14px; line-height: 20px; margin: 0 0 22px 0; text-align: left; }
    caption { text-align: left; }
    tr { border-bottom: 1px solid #ccc; }
    th, td { padding: .7em 1.25em; }
    hr { background-color: #ccc; border: 0; color: #555; height: 1px; margin-bottom: 20px; }
    a:link, a:visited { color: #555; }
    a:focus, a:hover, a:active { color: #dd3333; }
    h1, h2, h3, h4, h5, h6 {  font-weight:normal; clear:both; }
    img { background: #eee; }
    a img:focus, a img:hover, a img:active { background: #dd3333; }
    
    /* Code */
    pre {
        white-space: pre-wrap;
    }

    /* DEFAULT CSS */
    #header .menu {
        border-bottom: 1px solid #ccc;
        margin: 0 auto 3px;
        overflow: hidden;
        padding: 20px 0 10px;
        width: 900px;
    }
        #header #pages {
            float: left;
            width: 580px;
        }
            #header #pages ul {
                float: left;
                margin-bottom: 0;
            }
                #header #pages li {
                    float: left;
                    margin-right: 10px;
                    padding: 4px 10px 3px 0;
                }
                    #header #pages a, #header #pages a:visited {
                        color: #555;
                        font-size: 16px;
                        text-decoration: none;
                    }
                    #header #pages a:focus, #header #pages a:hover, #header #pages a:active {
                        color: #dd3333;
                    }
        #header #search {
            float: right;
        }
            #header #search input {
                border: 1px solid #ccc;
                line-height: 20px;
                padding: 4px;
            }
            #header #search input.search-button {
                background: #eee;
                color: #555;
                padding: 3px;
                width: 60px;
            }
    #header #branding {
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        margin: 0 auto 3px;
        {block:IfNotHeaderImage}padding: 40px 0;{/block:IfNotHeaderImage}
        width: 900px;
    }
        #header h1 a {
            color: #111;
            font: 80px Georgia,serif;
            font-weight: normal;
            line-height: 100px;
            text-decoration: none;
        }
        #header h1 a:focus, #header h1 a:hover, #header h1 a:active {
            color: #dd3333;
        }
        #header img {
            max-width: 900px;
        }
    #main {
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        clear: both;
        margin: 0 auto 3px;
        overflow: hidden;
        width: 900px;
    }
        #container {
            border-right: 1px solid #ccc;
            float: left;
            min-height: 400px;
            width: 580px;
        }
            .post-meta {
                border-bottom: 1px solid #ccc;
                color: #555;
                overflow: hidden;
                padding: 9px 0;
            }
                .post-meta .type {
                    float: left;
                }
                    .post-meta .type a {
                        border-bottom: 1px solid #ccc;
                        font-weight: bold;
                        padding: 0 10px 10px;
                        text-decoration: none;
                    }
                    .post-type-text .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Text};
                        color: {color:Post Type Text};
                    }
                    .post-type-photo .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Photo};
                        color: {color:Post Type Photo};
                    }
                    .post-type-photoset .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Photoset};
                        color: {color:Post Type Photoset};
                    }
                    .post-type-quote .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Quote};
                        color: {color:Post Type Quote};
                    }
                    .post-type-link .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Link};
                        color: {color:Post Type Link};
                    }
                    .post-type-chat .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Chat};
                        color: {color:Post Type Chat};
                    }
                    .post-type-video .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Video};
                        color: {color:Post Type Video};
                    }
                    .post-type-audio .post-meta .type a {
                        border-bottom: 1px solid {color:Post Type Audio};
                        color: {color:Post Type Audio};
                    }
                    .post-meta .type a:focus, .post-meta .type a:hover, .post-meta .type a:active {
                        margin-left: 5px;
                    }
                .post-meta .date, .post-meta .comments, .post-meta .note-count {
                    float: left;
                    padding: 0 10px;
                }
            .post-content {
                padding: 30px 30px 60px;
            }
            .post-content div:last-child, .post-content div:last-child p,
            .post-content div:last-child ul, .post-content div:last-child ol,
            .post-content div:last-child blockquote {
                margin-bottom: 0;
            }
                .post-content h3 {
                    font: 20px Georgia,serif;
                    margin-bottom: 20px;
                }
                    .post-content h3 a, .post-content h3 a:visited {
                        color: #111;
                        text-decoration: none;
                    }
                    .post-content h3 a:focus, .post-content h3 a:hover, .post-content h3:active {
                        color: #dd3333;
                    }
                .post-content img {
                    margin-bottom: 20px;
                    padding: 10px;
                }
                .post-type-text .post-content ul {
                    padding-left: 30px;
                }
                    .post-type-text .post-content ul ul {
                        margin-bottom: 0;
                    }
                    .post-type-text .post-content ul li {
                        list-style-type: disc;
                    }
                        .post-type-text .post-content ul ul li {
                            list-style-type: circle;
                        }
                .post-type-text .post-content ol {
                    padding-left: 30px;
                }
                    .post-type-text .post-content ol ol {
                        margin-bottom: 0;
                    }
                    .post-type-text .post-content ol li {
                        list-style-type: upper-latin;
                    }
                        .post-type-text .post-content ol ol li {
                            list-style-type: lower-latin;
                        }
                .post-type-photoset .post-content .html_photoset {
                    background: #eee;
                    margin-bottom: 20px;
                    padding: 10px;
                }
                .post-type-link .post-content .link-wrap {
                    margin-bottom: 20px;
                }
                .post-type-chat .post-content .label {
                    color: #333;
                    font-weight: bold;
                }
                .post-type-video .post-content .video-wrap {
                    background: #f0f0f0;
                    margin-bottom: 20px;
                    padding: 10px;
                }
                .post-type-audio .post-content .caption {
                    margin-top: 10px;
                }
                .tags {
                    font-size: 13px;
                }
                .tags a {
                    text-decoration: none;
                }
                .tags a:after {
                    content: ",";
                }
                .tags a:last-child:after {
                    content: "";
                }
            #disqus_thread {
                border-top: 1px solid #ccc;
                padding: 10px 30px 0;
            }
                #disqus_thread h3 {
                    color: #111;
                    font: 18px Georgia,serif;
                    margin: 20px 0 10px;
                }
                #dsq-content .dsq-subscribe-menu {
                    font-size: 12px;
                }
            #post-notes {
                border-top: 1px solid #ccc;
                padding: 30px;
            }
                #post-notes ol li {
                    border-bottom: 1px dotted #ccc;
                    padding: 10px 0;
                }
                    #post-notes ol li img {
                        background: none;
                        padding-right: 3px;
                        vertical-align: middle;
                    }
            .pagination {
                border-top: 1px solid #ccc;
                overflow: hidden;
                padding: 20px 0;
            }
                .pagination .previous-page {
                    float: left;
                }
                .pagination .next-page {
                    float: right;
                    margin-right: 30px;
                }
                    .pagination a {
                        font: 20px Georgia,serif;
                        text-decoration: none;
                    }
        #sidebar {
            float: left;
            padding-bottom: 30px;
            width: 319px;
        }
            #sidebar h3 {
                border-bottom: 1px dotted #ccc;
                color: #999;
                font-size: 14px;
                font-weight: bold;
                margin: 0 0 20px;
                padding: 9px 20px;
                text-transform: uppercase;
            }
                #sidebar h3 a, #sidebar h3 a:visited {
                    color: #999;
                    text-decoration: none;
                }
                #sidebar h3 a:focus, #sidebar h3 a:hover, #sidebar h3 a:active {
                    color: #dd3333;
                }

            #sidebar ul {
                margin-bottom: 0;
            }
            .widget {
                border-bottom: 1px solid #ccc;
                color: #333;
                font-size: 13px;
                padding: 0 20px 20px 20px;
            }
                .widget h3 {
                    font: 20px Georgia,serif;
                    margin-bottom: 20px;
                }
                    .widget h3 a, .widget h3 a:visited {
                        color: #000;
                        text-decoration: none;
                    }
                    .widget h3 a:focus, .widget h3 a:hover, .widget h3 a:active {
                        color: #dd3333;
                    }
                .widget img {
                    padding: 5px;
                    max-width: 250px;
                }
                .widget p:last-child, .widget ul:last-child, .widget ol:last-child, .widget blockquote:last-child {
                    margin-bottom: 0;
                }
            #about {
                overflow: hidden;
            }
                #about img {
                    background: #fff;
                    border: 1px solid #ccc;
                    float: left;
                    margin: 0 10px 0 0;
                    padding: 3px;
                }
            .like_post {
                border-bottom: 1px dotted #ccc;
                margin-bottom: 20px;
                padding-bottom: 20px;
            }
            .like_post:last-child {
                border: none;
                margin: 0;
                padding: 0;
            }
                .like_post ul {
                    padding-left: 20px;
                }
                    .like_post ul ul {
                        margin-bottom: 0;
                    }
                    .like_post ul li {
                        list-style-type: disc;
                    }
                        .like_post ul ul li {
                            list-style-type: circle;
                        }
                .like_post ol {
                    padding-left: 20px;
                }
                    .like_post ol ol {
                        margin-bottom: 0;
                    }
                    .like_post ol li {
                        list-style-type: upper-latin;
                    }
                        .like_post ol ol li {
                            list-style-type: lower-latin;
                        }
                .like_post p:last-child, .like_post ul:last-child, .like_post ol:last-child, .like_post blockquote:last-child {
                    margin-bottom: 0;
                }
            #tweets {
                margin-bottom: 10px;
            }
                #tweets .content {
                    margin-bottom: 10px;
                }
                    #tweets a {
                        text-decoration: none;
                    }
            #following_container {
                overflow: hidden;
                padding-bottom: 20px;
            }
                #following_container li {
                    display: inline;
                    padding: 0;
                    margin: 0;
                }
    #footer {
        border-top: 1px solid #ccc;
        clear: both;
        margin: 0 auto;
        overflow: hidden;
        width: 900px;
    }
        #colophon {
            color: #555;
            float: right;
            font-size: 12px;
            padding: 10px 0 20px;
        }
            #footer a {
                border-bottom: 1px dotted #555;
                text-decoration: none;
            }
    {CustomCSS}
    </style>
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <div id="access">
                <div class="menu">
                    <div id="pages">
                        <ul>
                            <li><a href="/">Home</a></li>
                            {block:HasPages}{block:Pages}<li><a href="{URL}">{Label}</a></li>{/block:Pages}{/block:HasPages}
                            {block:AskEnabled}<li class="ask"><a href="/ask" class="page">{AskLabel}</a></li>{/block:AskEnabled}
                            {block:SubmissionsEnabled}<li class="submit"><a href="/submit" class="page">{SubmitLabel}</a></li>{/block:SubmissionsEnabled}
                            <li class="archive"><a href="/archive">Archive</a></li>
                            <li class="mobile"><a href="/mobile">Mobile</a></li>
                            <li class="rss"><a href="{RSS}">RSS</a></li>
                        </ul>
                    </div><!-- #pages -->
                    <div id="search">
                        <form action="/search" method="get">
                            <input type="text" name="q" value="{SearchQuery}"/>
                            <input type="submit" value="Search" class="search-button"/>
                        </form>
                    </div><!-- #search -->
                </div><!-- .menu -->
            </div><!-- #access -->
            <div id="branding">
                <h1>
                    {block:IfHeaderImage}<a href="/"><img src="{image:Header}" alt="{Title}" /></a>{/block:IfHeaderImage}
                    {block:IfNotHeaderImage}<a href="/">{Title}</a>{/block:IfNotHeaderImage}
                </h1>
            </div><!-- #branding -->
        </div><!-- #header -->
        <div id="main">
            <div id="container">
                <div id="content">
                {block:Posts}
                    <div id="post-{PostID}" class="post {block:Text}post-type-text{/block:Text}{block:Photo}post-type-photo{/block:Photo}{block:Photoset}post-type-photoset{/block:Photoset}{block:Quote}post-type-quote{/block:Quote}{block:Link}post-type-link{/block:Link}{block:Chat}post-type-chat{/block:Chat}{block:Video}post-type-video{/block:Video}{block:Audio}post-type-audio{/block:Audio}">
                        <div class="post-meta">
                            <div class="type">
                                <a href="{Permalink}">{block:Text}Text{/block:Text}{block:Photo}Photo{/block:Photo}{block:Photoset}Photoset{/block:Photoset}{block:Quote}Quote{/block:Quote}{block:Link}Link{/block:Link}{block:Chat}Chat{/block:Chat}{block:Video}Video{/block:Video}{block:Audio}Audio{/block:Audio}</a>
                            </div><!-- .type -->
                        {block:Date}
                            <div class="date">
                                {Month} {DayOfMonthWithZero}, {Year}
                            </div><!-- .date -->
                        {/block:Date}
                        {block:IfDisqusShortname}
<div class="comments"><a class="dsq-comment-count" href="{Permalink}#disqus_thread">Comments</a></div>
                        {/block:IfDisqusShortname}
                        {block:NoteCount}
                            <div class="note-count">
                                <a href="{Permalink}#notes">{NoteCountWithLabel}</a>
                            </div><!-- .note-count -->
                        {/block:NoteCount}
                        </div><!-- .post-meta -->
                        <div class="post-content">
                        {block:Text}
                            {block:Title}<h3><a href="{Permalink}">{Title}</a></h3>{/block:Title}
                            {Body}
                        {/block:Text}
                        {block:Photo}
                            {LinkOpenTag}<img src="{PhotoURL-500}" class="photo" alt="{PhotoAlt}" />{LinkCloseTag}
                            {block:HighRes}<a href="{PhotoURL-HighRes}" class="high-res" target="_blank"></a>{/block:HighRes}
                            {block:Caption}<div class="caption">{Caption}</div>{/block:Caption}
                        {/block:Photo}
                        {block:Photoset}
                            {Photoset-500}
                            {block:Caption}<div class="caption">{Caption}</div>{/block:Caption}
                        {/block:Photoset}
                        {block:Quote}
                            <div class="quote-content">"{Quote}"</div>
                            {block:Source}<p class="quote-source">&mdash; {Source}</p>{/block:Source}
                        {/block:Quote}
                        {block:Link}
                            <div class="link-wrap"><a href="{URL}" {Target}>{Name}</a></div>
                            {block:Description}<div class="description">{Description}</div>{/block:Description}
                        {/block:Link}
                        {block:Chat}
                            {block:Title}<h3><a href="{Permalink}">{Title}</a></h3>{/block:Title}
                            <ul class="chat-wrap">
                            {block:Lines}
                                <li class="{Alt} user_{UserNumber}">
                                    {block:Label}<span class="label">{Label}</span>{/block:Label}
                                    {Line}
                                </li>
                            {/block:Lines}
                            </ul>
                        {/block:Chat}
                        {block:Video}
                            <div class="video-wrap">{Video-500}</div>
                            {block:Caption}<div class="caption">{Caption}</div>{/block:Caption}
                        {/block:Video}
                        {block:Audio}
                            <div class="audio-wrap">{AudioPlayerGrey}</div>
                            {block:Caption}<div class="caption">{Caption}</div>{/block:Caption}
                        {/block:Audio}
                        {block:HasTags}
                            <div class="tags">
                                <p>Tags: {block:Tags}<a href="{TagURL}" class="single-tag">{Tag}</a> {/block:Tags}</p>
                            </div>
                        {/block:HasTags}
                        </div><!-- post-content -->
                    </div><!-- .post -->
                    {block:IfDisqusShortname}
                    <script type="text/javascript">var disqus_url = "{Permalink}"; var disqus_title ="{block:PostTitle}{PostTitle}{/block:PostTitle}";</script>{block:Permalink}<div id="disqus_thread"></div>
<script type="text/javascript">
  /**
    * var disqus_identifier; [Optional but recommended: Define a unique identifier (e.g. post id or slug) for this thread] 
    */
  (function() {
   var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
   dsq.src = 'http://marekkalnik-blog.disqus.com/embed.js';
   (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript=marekkalnik-blog">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
{/block:Permalink}<script type="text/javascript">
var disqus_shortname = 'marekkalnik-blog';
(function () {
  var s = document.createElement('script'); s.async = true;
  s.src = 'http://marekkalnik-blog.disqus.com/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>
                    {/block:IfDisqusShortname}
                    {block:PostNotes}<div id="post-notes">{PostNotes}</div>{/block:PostNotes}
                {/block:Posts}
                {block:Pagination}
                    <div class="pagination">
                        {block:PreviousPage}<span class="previous-page"><a href="{PreviousPage}">&#171; Previous</a></span>{/block:PreviousPage}
                        {block:NextPage}<span class="next-page"><a href="{NextPage}">Next &#187;</a></span>{/block:NextPage}
                    </div><!-- .pagination -->
                {/block:Pagination}
                </div><!-- #content -->
            </div><!-- #container -->
            <div id="sidebar">
            {block:IfShowAboutWidget}
                <h3>About</h3>
                <div id="about" class="widget">
                    <img src="{PortraitURL-64}" alt="portrait" />
                    {block:Description}<div class="description"><p>{Description}</p></div>{/block:Description}
                </div>
            {/block:IfShowAboutWidget}
            <h3>License</h3>
            <div id="license" class="widget">
                    <a rel="license" href="http://creativecommons.org/licenses/by/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br />
                    All entries are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a>.
                    </div>
    		{block:IndexPage}{block:IfShowStuffILikeWidget}{block:Likes}
                <h3><a href="http://www.tumblr.com/liked/by/{Name}">Stuff I like</a></h3>
                <div id="likes_container" class="widget">
                    {Likes limit="5" summarize="100" width="279"}
                </div>
            {/block:Likes}{/block:IfShowStuffILikeWidget}{/block:IndexPage}
            {block:IndexPage}{block:IfShowLatestTweetsWidget}{block:Twitter}
                <h3>Latest Tweets</h3>
                <div id="twitter" class="widget">
                    <div id="tweets"></div> 
                    <p><a href="http://twitter.com/{TwitterUsername}">Follow me</a></p> 
                </div>

                <script type="text/javascript">
                    function recent_tweets(data) {
                        for (i=0; i<data.length; i++) {
                            if (i<{text:Number of Tweets}) {
                                document.getElementById("tweets").innerHTML = 
                                    document.getElementById("tweets").innerHTML + 
                                    '<a href="http://twitter.com/{TwitterUsername}/status/' + 
                                    data[i].id + '"><div class="content">' + data[i].text + 
                                    '</div></a>';
                            }
                        }
                        document.getElementById("twitter").style.display = 'block';
                    }
                </script>
            {/block:Twitter}{/block:IfShowLatestTweetsWidget}{/block:IndexPage}
            {block:IfShowPeopleIFollowWidget}{block:Following}
                <h3>People I follow</h3>
                <div id="following_container" class="widget">
                    <ul>
                        {block:Followed}
                            <li><a href="{FollowedURL}"><img src="{FollowedPortraitURL-30}" alt="{FollowedName}"/></a></li>
                        {/block:Followed}
                    </ul>
                </div>
            {/block:Following}{/block:IfShowPeopleIFollowWidget}
            </div><!-- #sidebar -->
        </div><!-- #main -->
        <div id="footer">
            <div id="colophon"><p>Powered by <a href="http://tumblr.com">Tumblr</a>. <a href="http://www.tumblr.com/theme/10375">Minimal Theme</a> designed by <a href="http://arturkim.com">Artur Kim</a>.</p></div>
        </div><!-- #footer -->
            <script src="http://yandex.st/highlightjs/6.2/highlight.min.js"></script>
    <script>
    window.onload = function() {
    var i, len;
    var elements = document.getElementsByTagName('pre');
    for (i = 0, len = elements.length; i < len; i++)
    {
      hljs.highlightBlock(elements[i], '    ');
    }
    };
    </script>
    </div><!-- #wrapper -->

{block:Twitter}<script type="text/javascript" src="/tweets.js"></script>{/block:Twitter}
{block:IfGoogleAnalyticsID}<script type="text/javascript">var gaJsHost=(("https:"==document.location.protocol)?"https://ssl.":"http://www.");document.write(unescape("%3Cscript src='"+gaJsHost+"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));</script><script type="text/javascript">try{var pageTracker=_gat._getTracker("{text:Google Analytics ID}");pageTracker._trackPageview()}catch(err){}</script>{block:IfGoogleAnalyticsID}
</body>
</html>
