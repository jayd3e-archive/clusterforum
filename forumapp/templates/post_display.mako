<html>
    <head>
        <title>Post</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#FFFFFF;">
        <hr>
        <h1 style="color:red"> clusterForum </h1>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
            <!--Displays the single post/thread -->
        <div class="post" style="vertical-align:middle;">
            <h1 >${ post.name }</h1>
            <div><h4><b>${ post.description }</h4></b></div>
            <div><span>Created: ${ post.date } ID: ${ post.id }</div>
        </div>
        <br>
        <br>
        <!-- need to add comments to the post still -->
        <div class="comments" style="vertical-align:middle;">
            % for comment in comments:
                <div class="comment">
                    <br>
                    <div><h4>${comment.description}<h4></div>
                    <div><span>Created: ${comment.date} by: Add User here eventually</span></div>
                </div>
            % endfor    
        </div>


        <!-- Option to post a comment -->
            <!-- still in work -->
        <form method="POST" style = "text-align:center;">
            <h4> Post a Comment </h4>
            <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
            </label>
            <input name="submit" type="submit"/>
        </form>
    </body>
</html>
