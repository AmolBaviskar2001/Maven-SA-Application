<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #74ebd5, #9face6);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .login-container {
      background: #fff;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.2);
      width: 350px;
      text-align: center;
    }
    .login-container h2 {
      margin-bottom: 20px;
      color: #333;
    }
    .input-field {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 10px;
      outline: none;
      transition: 0.3s;
    }
    .input-field:focus {
      border-color: #6a5acd;
      box-shadow: 0 0 5px rgba(106,90,205,0.5);
    }
    .btn {
      width: 100%;
      padding: 12px;
      background: #6a5acd;
      border: none;
      border-radius: 10px;
      color: white;
      font-size: 16px;
      cursor: pointer;
      margin-top: 15px;
      transition: background 0.3s;
    }
    .btn:hover {
      background: #5a4dbd;
    }
    .extra-links {
      margin-top: 15px;
      font-size: 14px;
    }
    .extra-links a {
      color: #6a5acd;
      text-decoration: none;
    }
    .extra-links a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <form>
      <input type="text" class="input-field" placeholder="Username" required>
      <input type="password" class="input-field" placeholder="Password" required>
      <button type="submit" class="btn">Login</button>
      <div class="extra-links">
        <p><a href="#">Forgot Password?</a></p>
        <p>Don't have an account? <a href="#">Sign Up</a></p>
      </div>
    </form>
  </div>

</body>
</html>

