<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="style/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-image: url('images/desk.jpg');
        background-size: cover; /* Ensure the image covers the entire screen */
        background-repeat: no-repeat; /* Prevent tiling */
        background-attachment: fixed; /* Keep the background fixed during scrolling */
        background-position: center; /* Center the background image */
        
    }
    
    
        .form-signin {
        background: rgba(255, 255, 255, 0.7); /* Add a semi-transparent background to the form */
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 420px;
            max-height: 700px;
            padding: 15px;
            margin: auto;
        }
        .form-signin .form-floating:focus-within {
            z-index: 2;
        }
        .form-signin input[type="email"],
        .form-signin input[type="password"] {
            margin-bottom: -1px;
            border-radius: 0;
        }
        .sign {

  font-size: 1.2rem;
  padding: 0.5rem 2.5rem;
  width: 400px;
  height: 47px;
  margin-bottom: 40px;
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
  -webkit-box-reflect: below 10px linear-gradient(to bottom, rgba(0,0,0,0.0), rgba(0,0,0,0.4));
}

.sign:active {
  scale: 0.92;
}

.sign:hover {
  background: rgb(2,29,78);
  background: linear-gradient(270deg, rgba(2, 29, 78, 0.681) 0%, rgba(31, 215, 232, 0.873) 60%);
  color: rgb(4, 4, 38);
}
.mt-4 .btn {
    margin-bottom: 1rem; /* Add spacing between buttons */
}
/* From Uiverse.io by Custyyyy */ 
.bon {
 display: inline-block;
 border-radius: 7px;
 width: 300px;
 height: 47px;
 border: none;
 background: #1875FF;
 color: white;
 font-weight: 600; /* Make text bold */
 text-transform: uppercase;
 text-align: center;
 font-size: 1.2rem;
 box-shadow: 0px 14px 56px -11px #1875FF;
 padding: 0.5em; /* Adjusted to center text horizontally */
 transition: all 0.4s;
 cursor: pointer;
 overflow: hidden; /* Prevents overflow issues */
 margin-top: 10px;
}

.bon span {
 cursor: pointer;
 display: inline-block;
 position: relative;
 transition: 0.4s;
}

.bon span:after {
 content: ' Registration'; /* Add a space before "Registration" */
 position: absolute;
 opacity: 0;
 top: 0;
 right: -90px; /* Adjusted for better alignment */
 transition: 0.7s;
}

.bon:hover span {
 padding-right: 7em; /* Adjust padding to accommodate the additional text */
}

.bon:hover span:after {
 opacity: 1; /* Ensure this is a valid opacity value (max is 1) */
 right: 0;
}

/* From Uiverse.io by Custyyyy */ 
.bonf {
 display: inline-block;
 border-radius: 7px;
 width: 300px;
 height: 45px;
 border: none;
 background: #1875FF;
 color: white;
 font-weight: 600; /* Make text bold */
 text-transform: uppercase;
 text-align: center;
 font-size: 1.2rem;
 box-shadow: 0px 14px 56px -11px #1875FF;
 padding: 0.5em; /* Adjusted to center text horizontally */
 transition: all 0.4s;
 cursor: pointer;
 overflow: hidden; /* Prevents overflow issues */
 margin-top: 10px;
}

.bonf span {
 cursor: pointer;
 display: inline-block;
 position: relative;
 transition: 0.4s;
}

.bonf span:after {
 content: 'Login'; /* Add a space before "Registration" */
 position: absolute;
 opacity: 0;
 top: 0;
 right: -40px; /* Adjusted for better alignment */
 transition: 0.7s;
}

.bonf:hover span {
 padding-right: 3.4em; /* Adjust padding to accommodate the additional text */
}

.bonf:hover span:after {
 opacity: 1; /* Ensure this is a valid opacity value (max is 1) */
 right: 0;
}


.hea {
    font-family: 'Arial', sans-serif;
    font-size: 2rem;
    font-weight: 700;
    color: #ffffff;
    text-align: center;
    padding: 1rem 1.5rem;
    margin: auto; /* Center the heading */
    background: linear-gradient(135deg, #1e5799 0%, #2989d8 50%, #207cca 100%);
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-transform: uppercase;
    letter-spacing: 1.5px;
    line-height: 1.5; /* Improve line spacing for clarity */
    width: 100%; /* Limit width for better layout */
    word-wrap: break-word;
    margin-bottom: 80px;
}

@media (max-width: 1000px) {
    .hea {
        font-size: 1.5rem;
        padding: 0.8rem;
    }
}
/* From Uiverse.io by satyamchaudharydev */ 
/* inspired form gumroad website */
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



</style>

</head>
<body>
<h1 class="hea"> ONLINE ASSIGNMENT SUBMISSION </h1>
<main class="form-signin">
    
        <form method="post" action="checkadminlogin">
            
            <h1 class="h3 mb-3 fw-normal text-center">Please sign in</h1>

            <!-- Email Input -->
            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" placeholder="username" name="auname" required>
                <label for="floatingInput">Username</label>
            </div>

            <!-- Password Input -->
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="apwd" required>
                <label for="floatingPassword">Password</label>
            </div>

            <!-- Remember Me -->
            <div class="form-check text-start my-3">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Remember me
                </label>
            </div>
            <div class="d-flex justify-content-center">
            <!-- Clear Button -->
            <input type="reset" value="Clear" class="clr" />
			</div>
			<div class="d-flex justify-content-center">
            <!-- Submit Button -->
            <button class="sign" type="submit" value="Login" >Sign in</button>
			</div>
			
            <!-- Links for Faculty Login and Student Registration -->
            <p class="mt-3 mb-3 text-body-secondary text-center">&copy; Surya Akkala, Sruthi Kanneti, Yasaswini Abburi</p>
        </form>
    </main>
</body>
</html>