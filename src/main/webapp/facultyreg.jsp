<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style/facreg.css"/>
<title>Faculty Registration</title>
<style>
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
    .form-control, .form-check-input {
        margin-bottom: 1rem;
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
    .sign:hover {
        background: linear-gradient(270deg, rgba(2,29,78,0.681) 0%, rgba(31,215,232,0.873) 60%);
        color: rgb(4, 4, 38);
    }
    h3 {
        font-family: 'Arial', sans-serif;
        font-size: 2rem;
        font-weight: 700;
        color: #ffffff;
        text-align: center;
        padding: 1rem;
        margin: 20px auto;
        background: linear-gradient(135deg, #1e5799 0%, #2989d8 50%, #207cca 100%);
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-transform: uppercase;
        letter-spacing: 1.5px;
    }
</style>
<script>
    function validateForm() {
        // Validate Password
        const password = document.querySelector('input[name="fpwd"]').value;
        const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (!passwordPattern.test(password)) {
            alert('Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character.');
            return false;
        }

        // Validate Email
        const email = document.querySelector('input[name="femail"]').value;
        const emailPattern = /^[a-zA-Z\d._%+-]+@gmail\.com$/;
        if (!emailPattern.test(email)) {
            alert('Email must be a valid Gmail address ending with @gmail.com.');
            return false;
        }

        return true;
    }
</script>
</head>
<body>
<h3>Faculty Registration Form</h3>
<div class="container form-signin">
    <form method="post" action="insertfaculty" onsubmit="return validateForm();">
        <label>Enter Name</label>
        <input type="text" class="form-control" name="fname" required />

        <label>Select Gender</label>
        <div>
            <input type="radio" name="fgender" class="form-check-input" value="Male" required />Male
            <input type="radio" name="fgender" class="form-check-input" value="Female" required />Female
            <input type="radio" name="fgender" class="form-check-input" value="Others" required />Others
        </div>

        <label>Enter Email ID</label>
        <input type="email" class="form-control" name="femail" required />

        <label>Enter Password</label>
        <input type="password" class="form-control" name="fpwd" required />

        <label for="fdept">Select Department</label>
        <select id="fdept" class="form-control" name="fdept" required>
            <option value="">---Select---</option>
            <option value="CSE">CSE</option>
            <option value="ECE">ECE</option>
            <option value="CS&IT">CS&IT</option>
            <option value="MECH">MECH</option>
        </select>

        <div class="d-flex justify-content-between mt-3">
            <input type="submit" value="Register" class="sign" />
            <input type="reset" value="Clear" class="sign" />
        </div>

        <p class="mt-3 mb-3 text-body-secondary text-center">&copy; Surya Akkala, Sruthi Kanneti, Yasaswini Abburi</p>
    </form>
</div>
</body>
</html>
