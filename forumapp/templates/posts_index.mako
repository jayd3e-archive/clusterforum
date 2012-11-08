<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css" media="screen" />
        <title>Home</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#bb0000;">
        <hr>
        <h1>clusterForum</h1>
        <!-- User database to be created! -->
        <form style="text-align:right;" name="input" action="/" method="get">
        Username: <input type="text" name="username">
        Password: <input type="password" name="password">
        <input type="submit" value="Submit"><br>
        <!-- link to sign up and sign up page to be created -->
        </form>
        <FORM METHOD="LINK" ACTION="/signup" style="text-align:right;">
        <INPUT TYPE="submit" VALUE="Sign Up!">
        </FORM>
        <hr>
        <FORM METHOD="LINK" ACTION="/posts/create">
        <INPUT TYPE="submit" VALUE="Create a Post">
        </FORM>
        <div class="posts" style="vertical-align:middle;">
            % for post in posts:
                <div class="post">
                    <span><h2 ><a href="post/${post.id}">${ post.name }</a></h2>Created: ${ post.date }<span>
                    <div>${ post.description }</div>
                    <div>${ post.id }</div>
                </div>
            % endfor
        </div>
    </body>
</html>