<!-- Sign Up HTML: should take in user info and store to user table -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
            <title>New Users!</title>
    </head>
    <body id="body">
        <div id="header">
            <h1 id="title"> clusterForum: Sign Up! </h1>
        </div>
        <div id="navigation">
            <li id="li_index">
                <FORM METHOD="LINK" ACTION="/"><INPUT TYPE="submit" VALUE="Home"></FORM>
            </li>
        </div>
        <div id="content">
            <p> <b> clusterForum </b> is an online forum for general purposes. <br>
                Sign Up is free and your information is kept conifdential. <br>
                Remember to checkout the real deal @clusterflunk.com!
            </p>
            <form method="POST" action="/signup" style="text-align:center">
                <table border=1px id="signup_form">
                    <tr>
                    <td><label for="username">username
                        <input name="username" type="text"/></label></td>
                    </tr>
                    <tr>
                    <td><label for="password">password
                        <input name="password" type="password"/></label></td>
                    </tr>
                    <tr>
                    <td><label for="email">email
                        <input name="email" type="text"/></label></td>
                    </tr>
                    <tr>
                    <td><label for="age">age
                        <input name="age" type="text"/></label></td>
                    </tr>
                    <tr>
                    <td><input name="submit" type="submit" value="Submit"/></td>
                    </tr>
                </table>
            </form>
            <p style="text-align:left;"> * indicates required fields
            </p>
        </div>
        <div id="footer">
            <p> This is a forum created for practice purposes. Credit: ClusterFlunk development team. Nov.1 -Nov.28 2012
            </p>
        </div>
    </body>
</html>
