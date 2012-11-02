<!-- Sign Up HTML: should take in user info and store to user table -->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="mystyle.css" media="screen" />
            <title>New Users!</title>
    </head>
    <body style="margin-right:50px; margin-left:50px; background-color:#bb0000;">
        <hr> 
        <h1> Sign Up! </h1>
        <hr>
        <form style="vertical-align:middle;" method="POST" action="/sucess">
        <br>Username: <input type="text" name="username">
        <br>Password: <input type="text" name="password">
        <br>Email: <input type="text" name="email">
        <br>Age: <input type="text" name="age">
        <br><input type="submit" value="Submit"><br>
        <!-- link to sign up and sign up page to be created -->
        </form>
    </body>
</html>