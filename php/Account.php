<?php
include ("connect.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="../css/sign_style.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
	<title>Account</title>
</head>
<body>
  <div class="cont">
                                <!-- ================= sign In ================== -->
    <form action="signin.php" method="POST" id="forms">

        <div class="form sign-in">
            <h2>Sign In</h2>
            <label class="input-control">
                <input type="email" name="Email" id="emails"  value="<?php if(isset($_GET['Email'])){echo $email;} ?>" placeholder="Email Address">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="password" name="Password" id="passwords" value="<?php if(isset($_GET['Password'])){ echo $password; }?>"  placeholder="Password">
                <div class="error">  
                  <?php if(isset($_GET['error'])) { echo $_GET['error']; } ?>
                </div>
            </label>
            <button type="submit" class="submit">Sign In</button>
        </div>
    </form>
                                <!-- ================= image ================== -->
    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and discover great amount of new opportunities!</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
                                <!-- ================= Sign Up ================== -->
      <form action="SignUp.php" method="get" id="form">
        <div class="form sign-up">
            <h2>Sign Up</h2>
            <label class="input-control">
                <input type="text" name="fname" id="fname" placeholder="First Name">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="text" name="lname" id="lname" placeholder="Last Name">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="email" name="email" id="email"  placeholder="Email">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="number" name="phone" id="phone" placeholder="Phone Number">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="password" name="password" id="password1" placeholder="Password">
                <div class="error"></div>
            </label>
            <label class="input-control">
                <input type="password" id="password2" placeholder="Confirm Password">
                <div class="error"></div>
            </label>
            <button type="submit" class="submit">Sign Up Now</button>
        </div>
      </form>
    </div>
   </div>
</div>



  
<script>
  document.querySelector(".img-btn").addEventListener("click", function () {
  document.querySelector(".cont").classList.toggle("s-signup");
});


// ============================ create variables =================================================== //
const form = document.getElementById("form");
const firstname = document.getElementById("fname");
const lastname = document.getElementById("lname");
const email = document.getElementById("email");
const phone = document.getElementById("phone");
const password1 = document.getElementById("password1");
const password2 = document.getElementById("password2");

form.addEventListener("submit", (e) => {
  e.preventDefault();
  validateInputs();
});

// ============================ set Errors function=================================================== //
const setError = (element, message) => {
  const inputControl = element.parentElement;
  const errorDisplay = inputControl.querySelector(".error");

  errorDisplay.innerText = message;
  inputControl.classList.add("error");
  inputControl.classList.remove("success");
};
// ============================ set Success function ================================================== //
const setSuccess = (element) => {
  const inputControl = element.parentElement;
  const errorDisplay = inputControl.querySelector(".error");
  errorDisplay.innerText = "";
  inputControl.classList.add("success");
  inputControl.classList.remove("error");
};
//======================= REGEX FORMS =============================//
let myRegex = /^[a-zA-Z-\s]+$/;
let phoneRe = /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/;
let emailRe = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
let passRe = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/;
// ================================== onclick function =============================================== //
const validateInputs = () => {
  // ======================= variables Values  ======================//
  const firstnameValue = firstname.value.trim();
  const lastnameValue = lastname.value.trim();
  const emailValue = email.value.trim();
  const phoneValue = phone.value.trim();
  const password1Value = password1.value;
  const password2Value = password2.value;


  const arr = [];
  //======================= first name validaton ====================//
  if (firstnameValue === "") {
    setError(firstname, "First Name is required");
    arr.push(false)
  } else if (firstnameValue.length > 50) {
    setError(
      firstname,
      "first name is too long, it should be less than 15 characters "
    );
    arr.push(false)
  } else if (myRegex.test(firstnameValue) === false) {
    setError(firstname, "first  name cannot contain numbers");
    arr.push(false)

  } else {
    setSuccess(firstname);
  }
  //======================= first name validaton =========================//
  if (lastnameValue === "") {
    setError(lastname, "last name is required , cannot be empty ");
    arr.push(false)
  } else if (lastnameValue.length > 50) {
    setError(
      lastname,
      "last name is too long, it should be less than 15 characters "
    );
    arr.push(false)
  } else if (myRegex.test(lastnameValue) === false) {
    setError(lastname, "last  name cannot contain numbers");
    arr.push(false)
  } else {
    setSuccess(lastname);
  }
  //======================= phone Validation =============================//
  if (phoneValue === "") {
    setError(phone, "phone number is required , cannot be empty ");
    arr.push(false)
  } else if (phoneValue.length > 50) {
    setError(phone, "phone number is too long");
    arr.push(false)
  } else if (phoneRe.test(phoneValue) === false) {
    setError(phone, "phone number is invalid");
    arr.push(false)
  } else {
    setSuccess(phone);
  }
  //======================= email Validation =============================//
  if (emailValue === "") {
    setError(email, "email is required , cannot be empty ");
    arr.push(false)
  } else if (emailValue.length > 50) {
    setError(email, "email is too long");
    arr.push(false)
  } else if (emailRe.test(emailValue) === false) {
    setError(email, "email is invalid");
    arr.push(false)
  } else {
    setSuccess(email);
  }
  //======================= group Validation =============================//
    if (password1Value === "") {
      setError(password1, "password is required , cannot be empty ");
      arr.push(false);
    } else if (password1Value.length > 50) {
      setError(password1, "password is too long");
      arr.push(false);
    } else if (passRe.test(password1Value) === false) {
      setError(password1, "password is invalid");
      arr.push(false);
    } else {
      setSuccess(password1);
    }

    if (password2Value === password1Value) {
      if (password2Value === "") {
        setError(password2, "password is required , cannot be empty ");
        arr.push(false);
      } else if (password2Value.length > 50) {
        setError(password2, "password is too long");
        arr.push(false);
      } else if (passRe.test(password2Value) === false) {
        setError(password2, "password is invalid");
        arr.push(false);
      } else {
        setSuccess(password2);
      }
    } else if (password1Value !== password2Value) {
      setError(password2, "Passwords does not match");
      arr.push(false);
    } else {
      setSuccess(password2);
    }

      if (arr.length === 0) {
        form.submit();
      }
};



const forms = document.getElementById("forms");
const emails = document.getElementById("emails");
const passwords = document.getElementById("passwords");



forms.addEventListener("submit", (e) => {
  e.preventDefault();
  validateInputss();
});

const validateInputss = () => {
  // ======================= variables Values  ======================//
  const emailsValue = emails.value;
  const passwordsValue = passwords.value;

  const arr1 = [];
  //======================= email Validation =============================//
  if (emailsValue === "") {
    setError(emails, "email is required , cannot be empty ");
    arr1.push(false);
  } else if (emailsValue.length > 50) {
    setError(emails, "email is too long");
    arr1.push(false);
  } else if (emailRe.test(emailsValue) === false) {
    setError(emails, "email is invalid");
    arr1.push(false);
  } else {
    setSuccess(emails);
  }
  //======================= group Validation =============================//
    if (passwordsValue === "") {
      setError(passwords, "password is required , cannot be empty ");
      arr1.push(false);
    } else if (passwordsValue.length > 50) {
      setError(passwords, "password is too long");
      arr1.push(false);
    } else if (passRe.test(passwordsValue) === false) {
      setError(passwords, "password is invalid");
      arr1.push(false);
    } else {
      setSuccess(passwords);
    }
  if (arr1.length === 0) {
    forms.submit();
  }
};
</script>

</body>
</html>