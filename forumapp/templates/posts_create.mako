<!-- Create a post/thread -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/mysytle.css">
        <title>Create a Post</title>
    </head>
    <body style="margin-right:100px; margin-left:100px;">
        <hr>
        <h1 style="color:red"> clustForum </h1>
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