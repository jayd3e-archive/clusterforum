<html>
    <head>
        <title>SIGN IN</title>
    </head>
    <body style="margin-right:100px; margin-left:100px;">
        <hr>
        <h1 style="color:red"> clusterForum </h1>
        <FORM METHOD="LINK" ACTION="/">
        <INPUT TYPE="submit" VALUE="Home">
        </FORM>
        <hr>
        <form method="POST" action="/signin" style="text-align:center;">
            <table border="1;" style="align:center;">
                <tr>
                <td><label for="username">*Username: <input name="username" type="text"/></label></td>
                <tr>
                <td><label for="password">*Password: <input name="password" type="password"/></label></td>
                <tr>
                <td><input name="submit" type="submit"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>