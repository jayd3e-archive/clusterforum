<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Post</title>
    </head>
    <body>
    <div>
        <a id="top"/><h1> clusterForum </h1></a>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <h5 style="text-align:left"><a href="#comment">Comment On A Thread</a></h5>
        <hr>
            <!--Displays the single post/thread -->
        <div class="post" style="vertical-align:middle;">
            <h1 >${ post.name }</h1>
            <div><h4><b>${ post.description }</h4></b></div>
            <div><span>Created: ${ post.date } ID: ${ post.id }</div>
        </div>
    </div>
    <div>
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
    </div>
    <div>
        <!-- Option to post a comment -->
            <!-- still in work -->
        <form method="POST" style = "text-align:center;">
            <a id="comment"/><h4> Post a Comment </h4></a>
            <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
            </label>
            <input name="submit" type="submit"/>
        </form>
    </div>
    <div>
        <h6 style="text-align:right"><a href="#top">Return To Top</a></h6>
    </div>
    </body>
</html>
