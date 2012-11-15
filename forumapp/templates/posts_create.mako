<!-- Create a post/thread -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Create a Post</title>
    </head>
    <body>
        <hr>
        <h1> clustForum </h1>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
        <!-- form to create a post -->
        <form method="POST" action="/posts/create" style = "text-align:center;">
            <h1> Create Post </h1>
            <label for="name">Title
                <input name="name" type="text"/>
            </label><br>
            <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>