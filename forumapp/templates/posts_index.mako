<!-- main: displays allows login etc -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css" media="screen" />
        <title>Home</title>
    </head>
    <body id = "bgcolor">
        <hr>
        <h1>clusterForum</h1>
        <!-- User database to be created! -->
        <form style="text-align:right;" name="input" action="html_form_action.asp" method="get">
        Username: <input type="text" name="username">
        Password: <input type="text" name="password">
        <input type="submit" value="Submit"><br>
        <!-- link to sign up and sign up page to be created -->
        <button type="button">Sign Up!</button>
        </form>
        <hr>
        <FORM METHOD="LINK" ACTION="/posts/create">
        <INPUT TYPE="submit" VALUE="Create a Post">
        </FORM>
        <div class="posts">
            % for post in posts:
                <div class="post">
                    <h2>${ post.name }</h2>
                    <span>${ post.id }</span>
                    <div>${ post.description }</div>
                    <div>${ post.date }</div>
                </div>
            % endfor
        </div>
    </body>
</html>