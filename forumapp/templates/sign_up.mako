<!-- Sign Up HTML: should take in user info and store to user table -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/style/mystyle.css"/>
            <title>New Users!</title>
    </head>
    <body>
        <hr> 
        <h1> Sign Up! </h1>
        <hr>
        <p> <b> clusterForum </b> is an online forum for general purposes. <br>
            Sign Up is free and your information is kept conifdential. <br>
            Remember to checkout the real deal @clusterflunk.com! </p>
        <!-- Sign up fields -->
            <!-- TO DO: set params on each -->
        <form method="POST" action="/signup" style="text-align:center;">
            <table border="1;" style="text-align:center;">
                <tr>
                <td><label for="username">*Username: <input name="username" type="text"/></label></td>
                <tr>
                <td><label for="password">*Password: <input name="password" type="password"/></label></td>
                <tr>
                <td><label for="email">*Email: <input name="email" type="text"/></label></td>
                <tr>
                <td><label for="age">*Age: <input name="age" type="text"/></label></td>
                <tr>
                <td><input name="submit" type="submit"/></td>
                </tr>
            </table>
            <p style="text-align:left;"> * indicates required fields </p>
        </form>
    </body>
</html>
