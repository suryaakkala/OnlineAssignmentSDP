<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="style/bootstrap.min.css" rel="stylesheet">
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

    .hea {
        font-family: 'Arial', sans-serif;
        font-size: 2rem;
        font-weight: 700;
        color: #ffffff;
        text-align: center;
        padding: 1rem 1.5rem;
        margin: auto;
        background: linear-gradient(135deg, #1e5799 0%, #2989d8 50%, #207cca 100%);
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-transform: uppercase;
        letter-spacing: 1.5px;
        line-height: 1.5;
        width: 100%;
        margin-bottom: 50px;
    }

    .clr {
        --bg: #fff;
        --hover-bg: #000;
        --hover-text: #fff;
        color: #000;
        cursor: pointer;
        font-weight: 700;
        border: 1px solid var(--bg);
        border-radius: 4px;
        width: 100%;
        padding: 0.8em 2em;
        background: var(--bg);
        transition: 0.2s;
        margin-bottom: 0.4rem;
        box-shadow: 0 0 0 2px black;
    }

    .clr:hover {
        color: var(--hover-text);
        transform: translate(-0.25rem, -0.25rem);
        background: var(--hover-bg);
        box-shadow: 0.25rem 0.25rem var(--bg);
    }

    .clr:active {
        transform: translate(0);
        box-shadow: none;
    }

    .sign {
        font-size: 1.2rem;
        padding: 0.5rem 2.5rem;
        width: 100%;
        height: 47px;
        margin-bottom: 20px;
        border: none;
        outline: none;
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
        background: linear-gradient(270deg, rgba(2, 29, 78, 0.681) 0%, rgba(31, 215, 232, 0.873) 60%);
        color: rgb(4, 4, 38);
    }
</style>
</head>
<body>

<h1 class="hea">Faculty Login</h1>
<main class="form-signin">
    <form method="post" action="checkfacultylogin">
        <h3 class="text-center">Faculty Login Form</h3>
        <h4 align="center" style="color:red">
            <c:out value="${message}"></c:out><br/>
        </h4>
        
        <div class="form-floating">
            <input type="text" class="form-control" name="femail" id="floatingEmail" placeholder="Enter Email" required>
            <label for="floatingEmail">Enter Email</label>
        </div>
        <br/>
        <div class="form-floating">
            <input type="password" class="form-control" name="fpwd" id="floatingPassword" placeholder="Enter Password" required>
            <label for="floatingPassword">Enter Password</label>
        </div>
        <br/>
        <div class="d-flex justify-content-center">
            <button type="submit" class="sign">Login</button>
        </div>
        <div class="d-flex justify-content-center">
            <input type="reset" value="Clear" class="clr" />
        </div>
        <p class="mt-3 mb-3 text-body-secondary text-center">&copy; Surya Akkala, Sruthi Kanneti, Yasaswini Abburi</p>
    </form>
</main>
</body>
</html>
