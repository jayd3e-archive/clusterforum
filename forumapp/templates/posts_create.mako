<!-- Create a post/thread -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <title>Create a Post</title>
    </head>
    <body id="pagewrap">
        <hr>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
        <form method="POST" action="/posts/create">
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