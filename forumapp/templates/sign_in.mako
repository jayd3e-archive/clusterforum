<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
        <title>SIGN IN</title>
    </head>
    <body id="body">
        <div id="header">
            <h1 id="title"> clusterForum: Sign in </h1>
        </div>
        <div id="navigation">
             <FORM METHOD="LINK" ACTION="/">
            <INPUT TYPE="submit" VALUE="Home">
            </FORM>
        </div>
        <div id="content">
            <form method="POST" action="/signin" style="align:center">
                <table border="1;" id="signin_form">
                    <tr>
                    <td><label for="username">*Username: <input name="username" type="text"/></label></td>
                    <tr>
                    <td><label for="password">*Password: <input name="password" type="password"/></label></td>
                    <tr>
                    <td><input name="submit" type="submit"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="footer">
            <p> This is a forum created for practice purposes. Credit: ClusterFlunk development team. Nov.1 -Nov.28 2012 </p>
        </div>
    </body>
</html>