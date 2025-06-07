<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
    <style>
        /* Your existing CSS remains unchanged */
        body {
            background-image: url('images/desk.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }

        .form-signin {
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 420px;
            padding: 15px;
            margin: auto;
        }

        .sign {
            font-size: 1.2rem;
            padding: 0.5rem 2.5rem;
            width: 200px;
            height: 47px;
            margin: 10px 5px;
            border: none;
            border-radius: 0.4rem;
            cursor: pointer;
            text-transform: uppercase;
            background-color: rgb(14, 14, 26);
            color: rgb(234, 234, 234);
            font-weight: 700;
            transition: 0.6s;
            box-shadow: 0px 0px 60px #1f4c65;
        }
    </style>
    <script>
        function validateForm() {
            // Validate email format
            const emailField = document.querySelector('input[name="semail"]');
            const email = emailField.value;
            const emailRegex = /^[0-9]{10}@kluniversity\.in$/;

            if (!emailRegex.test(email)) {
                alert("Invalid Email ID format. Please enter 10 digits followed by @kluniversity.in.");
                emailField.focus();
                return false;
            }

            // Validate password complexity
            const passwordField = document.querySelector('input[name="spwd"]');
            const password = passwordField.value;
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$/;

            if (!passwordRegex.test(password)) {
                alert(
                    "Password must be at least 8 characters long and include:\n" +
                    "- At least one uppercase letter\n" +
                    "- At least one lowercase letter\n" +
                    "- At least one number\n" +
                    "- At least one special character (@, $, !, %, *, ?, &, #, etc.)"
                );
                passwordField.focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h3>Student Registration</h3>
    <div class="container form-signin">
        <form method="post" action="insertstudent" onsubmit="return validateForm();">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="sname" required />

            <label>Select Gender</label>
            <div>
                <input type="radio" name="sgender" class="form-check-input" value="Male" required />Male
                <input type="radio" name="sgender" class="form-check-input" value="Female" required />Female
                <input type="radio" name="sgender" class="form-check-input" value="Others" required />Others
            </div>

            <label>Enter Email ID</label>
            <input type="email" class="form-control" name="semail" required />

            <label>Enter Password</label>
            <input type="password" class="form-control" name="spwd" required />

            <label>Enter Department</label>
            <input type="text" class="form-control" name="sdept" required />

            <div class="d-flex justify-content-between mt-3">
                <input type="submit" value="Register" class="sign" />
                <input type="reset" value="Clear" class="sign" />
            </div>

            <p class="mt-3 mb-3 text-body-secondary text-center">&copy; Surya Akkala, Sruthi Kanneti, Yasaswini Abburi</p>
        </form>
    </div>
</body>
</html>
