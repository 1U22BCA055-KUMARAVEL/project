<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $kissan_id = intval($_POST['kissan_id']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    
    $sql = "INSERT INTO usr_table (kissan_id, password) VALUES ('$kissan_id', '$password')";
    
    if (dbQuery($sql)) {
        echo "Registration successful!";
    } else {
        echo "Error: Could not register.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        input[type="number"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background: #28a745;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }
        button:hover {
            background: #218838;
        }
        .text-center {
            margin-top: 15px;
        }
        .text-center a {
            color: #007bff;
            text-decoration: none;
        }
        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Sign Up</h2>
        <form method="post" action="signup.php">
            <label for="kissan_id">Kissan ID:</label>
            <input type="number" name="kissan_id" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" name="password" required>
            <br>
            <button type="submit">Sign Up</button>
        </form>
        <p class="text-center">Already a member? <a href="login.php">Login</a></p>
    </div>
</body>
</html>
