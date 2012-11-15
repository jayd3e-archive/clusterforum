<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Home</title>
    </head>
    <body>
    <div id="header">
        <a id="top"/><h1>clusterForum</h1></a>
        <!-- sign in-->
        <FORM METHOD="LINK" ACTION="/signin">
        <INPUT TYPE="submit" VALUE="Sign In!">
        </FORM>
        <!-- sign up-->
        <FORM METHOD="LINK" ACTION="/signup">
        <INPUT TYPE="submit" VALUE="Sign Up!">
        </FORM>
    </div>
    <div id="top">
        <!-- create a post MUST be logged in -->
        <FORM METHOD="LINK" ACTION="/posts/create">
        <INPUT TYPE="submit" VALUE="Create a Post">
        </FORM>
    </div>
    <div id="center">
        <!-- loop through dict and display posts from db -->
        <div class="posts" style="vertical-align:middle;">
            % for post in posts:
                <div class="post" id="post_border">
                    <h3><a href="post/${post.id}">${ post.name }</a></h3>
                    <div><span>Created: ${ post.date } ID: ${ post.id }</span></div>
                </div>
            % endfor
        </div>
    </div>
    <div id="footer">
        <h5><a href="#top">Return To Top</a></h5>
    <div>
    </body>
</html>