<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to ELS</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(90deg, #ffffff, #f0f4ff);
            font-family: 'Roboto', Arial, sans-serif;
            color: #333333;
            overflow: hidden;
        }

        .splash-container {
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }

        .logo {
            width: 180px;
            height: 180px;
            border-radius: 50%;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            animation: bounce 2s ease-in-out infinite, fadeIn 1.5s ease-out;
        }

        .title {
            margin-top: 20px;
            font-size: 2.2rem;
            font-weight: bold;
            text-transform: capitalize;
            letter-spacing: 1.5px;
            color: lightgreen;
            animation: slideInFromTop 1.5s ease-in-out;
        }

        .subtitle {
            margin-top: 10px;
            font-size: 1.3rem;
            color: #8f94fb;
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
        }

        @keyframes slideInFromTop {
            from {
                opacity: 0;
                transform: translateY(-40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="splash-container">
        <img src="images/logos.jpg" alt="ELS Logo" class="logo">
        <div class="title">Employee Leave Management System</div>
        <div class="subtitle">Developed by Lohitha Tamatam</div>
    </div>

    <script>
        // Redirect to index.jsp after 5 seconds
        setTimeout(() => {
            window.location.href = "index.jsp";
        }, 5000);
    </script>
</body>
</html>
