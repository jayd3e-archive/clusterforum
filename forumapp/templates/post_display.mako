<html>
    <head>
        <title>Post</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#FFFFFF;">
        <hr>
        <h1> clusterForum </h1>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
        <!-- Displays the single post/thread -->
        <div class="post" style="vertical-align:middle;">
            <h1 >${ post.name }</h1>
            <div><h4><b>${ post.description }</h4></b></div>
            <div><span>Created: ${ post.date } ID: ${ post.id }</div>
        </div>

        <!-- need to add comments to the post still -->

        <!-- Option to post a comment -->
        <form method="POST" action="../post/${post.id}" style = "text-align:center;">
            <h4> Post a Comment </h4>
            <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>
