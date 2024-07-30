<!DOCTYPE html>
<html>
<head>
    <title>Withdraw</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ff4d4d, #4d79ff); /* Red to Blue Gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .withdraw-container {
            background-color: #ffffff; /* White background for the container */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            box-sizing: border-box;
        }

        h2 {
            color: #00796b; /* Teal color */
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #00796b; /* Teal color */
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #b2dfdb; /* Light teal border */
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #00796b; /* Teal color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #004d40; /* Darker teal on hover */
        }
    </style>
</head>
<body>
    <div class="withdraw-container">
        <h2>Withdraw Amount</h2>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount"><br><br>
            <input type="submit" value="Withdraw">
        </form>
    </div>
</body>
</html>
