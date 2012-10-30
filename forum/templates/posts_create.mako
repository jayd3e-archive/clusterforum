<html>
    <head>
        <title>Create a Post</title>
    </head>
    <body>
        <form method="POST" action="/posts/create">
            <label for="name">Name
                <input name="name" type="text"/>
            </label>
            <label for="description">Description
                <input name="description" type="text"/>
            </label>
<!--             <label for="date">Date
                <input name="date" type="text"/> -->
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>