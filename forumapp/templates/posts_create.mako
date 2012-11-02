<!-- Create a post/thread -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <title>Create a Post</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#bb0000;">
        <hr>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
        <form method="POST" action="/posts/create" style = "text-align:center;">
            <h1> Create Post </h1>
            <label for="name">Title
                <input name="name" type="text"/>
            </label><br>
            <textarea name="description" cols="50" rows="5">Enter your details here...</textarea><br>
<!--             data is generated. <label for="date">Date
                <input name="date" type="text"/> -->
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>