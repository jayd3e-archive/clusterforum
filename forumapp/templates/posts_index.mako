<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Home</title>
    </head>
    <body id="body">
        <div id="header">
            <a id="top"/><h1 id="title">clusterForum</h1></a>
        </div>
        <div id="navigation">
            <ul id="ul_index">
                <li id="li_index">Welcome, ${user}</li>
                <li id ="li_index"><FORM METHOD="LINK" ACTION="/posts/create"><INPUT TYPE="submit" VALUE="Create a Post"></FORM></li>
                <li id ="li_index"><FORM METHOD="POST" ACTION="/"> Search: <INPUT TYPE="text" NAME="search"><input type="submit"</FORM></li>
                <li id ="li_index"><FORM METHOD="LINK" ACTION="/signin"><INPUT TYPE="submit" VALUE="Sign In!"></FORM></li>
                <li id ="li_index"><FORM METHOD="LINK" ACTION="/signup"><INPUT TYPE="submit" VALUE="Sign Up!"></FORM></li>
              </ul>
        </div>
        <div id="content">
            <!-- loop through dict and display posts from db -->
            <div class="posts" style="vertical-align:middle;">
                % for post in posts:
                    <div class="post" id="post_border">
                        <h3><a href="post/${post.id}">${ post.name }</a></h3>
                        <div><span>Created: ${ post.date } ID: ${ post.id }</span></div>
                    </div>
                    <br>
                % endfor
            </div>
        </div>
        <div id="footer">
            <ul id="pagination-flickr">
                <li class="previous-off">« Previous</li>
                <li class="active">1</li>
                <li><a href="?page=2">2</a></li>
                <li><a href="?page=3">3</a></li>
                <li><a href="?page=4">4</a></li>
                <li><a href="?page=5">5</a></li>
                <li><a href="?page=6">6</a></li>
                <li><a href="?page=7">7</a></li>
                <li class="next"><a href="?page=2">Next »</a></li>
            </ul>
            <br>
            <h5><a href="#top">Return To Top</a></h5>
        <div>
    </body>
</html>