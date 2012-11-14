<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/mystyle.css"/>
        <title>Home</title>
    </head>
    <body style="margin-right:100px; margin-left:100px;">
        <hr>
        <a id="top"/><h1 style="color:red;">clusterForum</h1></a>
        <!-- sign in-->
        <span>
            <FORM METHOD="LINK" ACTION="/signin">
            <INPUT TYPE="submit" VALUE="Sign In!">
            </FORM>
            <!-- sign up-->
            <FORM METHOD="LINK" ACTION="/signup">
            <INPUT TYPE="submit" VALUE="Sign Up!">
            </FORM>
        </span>
        <hr>
        <!-- create a post MUST be logged in -->
        <FORM METHOD="LINK" ACTION="/posts/create">
        <INPUT TYPE="submit" VALUE="Create a Post">
        </FORM>
        <!-- loop through dict and display posts from db -->
        <div class="posts" style="vertical-align:middle;">
            % for post in posts:
                <div class="post">
                    <h3><a href="post/${post.id}">${ post.name }</a></h3>
                    <div><span>Created: ${ post.date } ID: ${ post.id }</span></div>
                </div>
            % endfor
        </div>
        <h6 style="text-align:right"><a href="#top">Return To Top</a></h6>
    </body>
</html>