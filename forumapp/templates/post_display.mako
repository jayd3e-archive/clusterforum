<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>Post</title>
    </head>
    <body id="body">
        <div id="header">
            <a id="top"/><h1 id="title"> clusterForum: ${post.name}</h1></a>
        </div>
        <div id="navigation">
            <ul id="ul_index">
                <li id="li_index"><FORM METHOD="LINK" ACTION="/">
                <INPUT TYPE="submit" VALUE="Home"></li>
                <li id="li_index"><h4><a href="#comment">Comment On A Thread</a></h4></li>
                </FORM>
            </ul>
        </div>
        <div id="content">
                <!--Displays the single post/thread -->
            <div class="post" style="vertical-align:middle;">
                <h1 id="title">Title: ${ post.name }</h1>
                <div><h4><b>Details: ${ post.description }</h4></b></div>
                <div><span>Created: ${ post.date } ID: ${ post.id }</div>
            </div>
            <!-- need to add comments to the post still -->
            <div class="comments" style="vertical-align:middle;">
                % for comment in comments:
                    <div class="comment" id="post_border">
                        <br>
                        <div><h4>${comment.description}<h4></div>
                        <div><span>Created: ${comment.date} by: Add User here eventually</span></div>
                    </div>
                    <br>
                % endfor
            </div>
        </div>
        <div id="footer">
            <!-- Option to post a comment -->
                <!-- still in work -->
            <form method="POST" style = "text-align:center;">
                <a id="comment"/><h4> Post a Comment </h4></a>
                <textarea name="description" cols="100" rows="10">Enter your details here...</textarea><br>
                </label>
                <input name="submit" type="submit"/>
            </form>
            <h4 style="text-align:right"><a href="#top">Return To Top</a></h4>
        </div>
    </body>
</html>
