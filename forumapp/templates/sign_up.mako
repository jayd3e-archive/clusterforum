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
        <form style="text-align:center;" method="POST" action="/sucess">
        <table border="1;" style="text-align:center;">
            <tr>
            <td>Username: <input type="text" name="username"></td>
            <tr>
            <td>Password: <input type="password" name="password"></td>
            <tr>
            <td>Email: <input type="text" name="email"></td>
            <tr>
            <td>Age: <input type="text" name="age"></td>
            <tr>
            <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
        <!-- link to sign up and sign up page to be created -->
        </form>
    </body>
</html>
