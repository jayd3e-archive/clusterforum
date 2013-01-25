<!-- Create a post/thread -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Create a Post</title>
    </head>
    <body id="body">
        <div id="header">
            <h1 id="title"> clusterForum: Create Post </h1>
        </div>
        <div id="navigation">
            <FORM METHOD="LINK" ACTION="/">
            <INPUT TYPE="submit" VALUE="Home">
            </FORM>
        </div>
        <!-- form to create a post -->
        <div id="content">
            <form method="POST" action="/posts/create" style = "text-align:center;">
                <h1 id="title"> Create Post </h1>
                <label for="name">Title
                    <input name="name" type="text"/>
                </label>
                <br>
                <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
                </label>
                <input name="submit" type="submit"/>
            </form>
        </div>
        <div id="footer">
            <p> This is a forum created for practice purposes. Credit: ClusterFlunk development team. Nov.1 -Nov.28 2012 </p>
        </div>
    </body>
</html>