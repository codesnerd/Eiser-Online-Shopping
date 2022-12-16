function validateAll() {
  if (validateMail() && validatePass()) {
    return true;
  } else {
    alert("Data Invalid / Insufficient. Please Re-enter.");
    return false;
  }
}

function liveMailCheck(event) {
  var email = document.login.mail.value;
  var k = event.key;

  if (
    "+-;'/,!#$%^&*()".indexOf(k) > -1 ||
    "0123456789".indexOf(k) == 0 ||
    "0123456789".indexOf(k) > email.indexOf("@")
  ) {
    return false;
  } else {
    return true;
  }
}

function validateMail() {
  /* I have yet to check for valid mailing addresses. */
  var email = document.login.mail.value;
  var flag = false;

  if (email == "") {
    document.getElementById("mail_err").innerHTML = "Can't be Empty.";
    document.login.mail.focus();
    flag = false;
  } else {
    document.getElementById("mail_err").innerHTML = "";
    flag = true;
  }

  return flag;
}

function validatePass() {
  var pass = document.login.password;
  var flag = false;

  if (pass.value.length < 4) {
    document.getElementById("pass_err").innerHTML =
      "Minimum 4 Characters Required.";
    pass.focus();

    flag = false;
  } else if (pass.value.length > 8) {
    document.getElementById("pass_err").innerHTML =
      "Maximum 8 Characters Allowed.";
    pass.focus();
    flag = false;
  } else {
    document.getElementById("pass_err").innerHTML = "";
    flag = true;
  }

  return flag;
}
