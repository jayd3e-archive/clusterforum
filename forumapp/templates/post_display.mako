<html>
    <head>
        <title>Post</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#bb0000;">
        <div class="post" style="vertical-align:middle;">
            <span><h2 >${ post.name }</a></h2>Created: ${ post.date }<span>
            <div>${ post.description }</div>
            <div>${ post.id }</div>
        </div>

        <form method="POST" action="/posts/create" style = "text-align:center;">
            <h4> Post a Comment </h4>
            <textarea name="description" cols="50" rows="5">Enter your details here...</textarea><br>
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>
