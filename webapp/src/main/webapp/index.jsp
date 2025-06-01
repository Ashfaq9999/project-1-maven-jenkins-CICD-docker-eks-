<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wings Effect</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap');

        body {
            font-family: 'Rajdhani', sans-serif;
            background: black;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        .wings {
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .wing-effect::before,
        .wing-effect::after {
            content: "";
            position: absolute;
            width: 60%;
            height: 60%;
            background: radial-gradient(circle, rgba(0, 120, 215, 0.7) 0%, rgba(0, 43, 92, 0) 70%);
            top: 20%;
            left: -30%;
            transform: rotate(-30deg);
            border-radius: 50% 50% 0 0;
            opacity: 0.5;
            filter: blur(50px);
        }

        .wing-effect::after {
            left: auto;
            right: -30%;
            transform: rotate(30deg);
        }

        .bubble {
            position: absolute;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: linear-gradient(135deg, #0078D7, #00A3FF);
            opacity: 0.8;
            animation: blink 2.5s infinite alternate ease-in-out, zoom 2.5s infinite alternate ease-in-out;
        }

        .bubble-1 {
            top: 30%;
            left: 30%;
        }

        .bubble-2 {
            top: 40%;
            left: 50%;
            background: linear-gradient(135deg, #FF0055, #FFCC00);
        }

        @keyframes blink {
            0% { opacity: 0.6; }
            100% { opacity: 1; }
        }

        @keyframes zoom {
            0% { transform: scale(0.9); }
            100% { transform: scale(1.1); }
        }

        .container {
            position: relative;
            z-index: 1;
            width: 400px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.2);
            text-align: center;
        }

        h1 {
            font-size: 26px;
            color: #ffffff;
        }

        p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
        }

        input {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            text-align: center;
            outline: none;
        }

        .registerbtn {
            background: linear-gradient(90deg, #ff0055, #ffcc00);
            color: white;
            padding: 12px;
            width: 95%;
            border: none;
            border-radius: 12px;
            cursor: pointer;
        }

        .signin a {
            color: #ffcc00;
        }
    </style>
</head>
<body>
    <div class="wings wing-effect"></div>
    <div class="bubble bubble-1"></div>
    <div class="bubble bubble-2"></div>

    <div class="container">
        <h1> ASHFAQ Registrations</h1>
        <p>Keep your future updated and secure! 🔒</p>
        <hr>

        <form>
            <input type="text" placeholder="🧑‍🚀 Enter Username" required>
            <input type="tel" placeholder="📱 Mobile Number" pattern="[0-9]{10}" required>
            <input type="email" placeholder="📧 Email Address" required>
            <input type="password" placeholder="🔑 Password" pattern=".{6,}" required>
            <input type="password" placeholder="🔁 Confirm Password" required>
            <hr>
            <button type="submit" class="registerbtn">🔄 Register Now</button>
        </form>

        <div class="signin">
            <p>Already registered? <a href="#">Sign in</a> to continue! 💻</p>
        </div>
    </div>
</body>
</html>
