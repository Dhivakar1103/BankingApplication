<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit Form</title>
    <link rel="stylesheet" href="dep.css">
</head>
<body>
    <div class="deposit-container">
        <h2>Deposit Form</h2>
        <form action="/submit-deposit" method="post">
            <div class="input-container">
                <label for="account-number">Account Number</label>
                <input type="text" id="account-number" name="account-number" required>
            </div>
            <div class="input-container">
                <label for="amount">Amount</label>
                <input type="text" id="amount" name="amount" required>
            </div>
            <input type="submit" value="Deposit">
        </form>
    </div>
</body>
</html>
