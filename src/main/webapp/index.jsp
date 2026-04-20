<!DOCTYPE html>
<html>
<head>
    <title>Session Input</title>
</head>
<body>

<h2>Enter Details</h2>

<form action="welcome.jsp" method="post">
    Name: <input type="text" name="uname" required><br><br>
    Session Expiry Time (in minutes): 
    <input type="number" name="time" required><br><br>
    
    <input type="submit" value="Submit">
</form>

</body>
</html>