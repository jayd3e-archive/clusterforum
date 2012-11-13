<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css" media="screen" />
        <title>Home</title>
    </head>
    <body style="margin-right:50px; margin-left:50px;">
        <hr>
        <h1 style="color:red;">clusterForum</h1>
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
                    <!--<div><h4><b>${ post.description }</b></h4></div>-->
                    <div><span>Created: ${ post.date } ID: ${ post.id }</span></div>
                </div>
            % endfor
        </div>
    </body>
</html>