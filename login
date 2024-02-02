<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 50px;
        }
        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"], button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover, button:hover {
            background-color: #282e29;
        }
        button {
            width: auto;
            padding: 10px 18px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Sign Up</h2>
    <form id="signupForm" onsubmit="return false;">
        <label for="role">Select Role:</label>
        <select id="role" name="role" onchange="showFields()">
            <option value="practitioner">Medical Practitioner</option>
            <option value="parent">Parent</option>
        </select>

        <div id="practitionerFields">
            <label for="specialization">Area of Specialization</label>
            <input type="text" id="specialization" name="specialization" required>
        </div>

        <div id="parentFields" style="display: none;">
            <label for="homeAddress">Home Address</label>
            <input type="text" id="homeAddress" name="homeAddress" required>
        </div>

        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>

        <label for="phoneNumber">Phone Number</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Register">
        <button onclick="resetForm()">Reset</button>
    </form>
    <button onclick="location.href='loginpage.html'">Back to Login</button>
</div>

<script>
    function resetForm() {
        document.getElementById("signupForm").reset();
    }

    function showFields() {
        var role = document.getElementById("role").value;
        if (role === "practitioner") {
            document.getElementById("practitionerFields").style.display = "block";
            document.getElementById("parentFields").style.display = "none";
        } else if (role === "parent") {
            document.getElementById("practitionerFields").style.display = "none";
            document.getElementById("parentFields").style.display = "block";
        }
    }
</script>

</body>
</html>
