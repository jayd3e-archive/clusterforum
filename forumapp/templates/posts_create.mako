<!-- Create a post/thread -->
<html>
    <head>
        <title>Create a Post</title>
    </head>
    <body>
        <hr>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        
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
        <hr>
        </form>
    </body>
</html>