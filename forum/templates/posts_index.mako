<html>
    <head>
        <title>List of Posts</title>
    </head>
    <body>
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