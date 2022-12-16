function validateAll() {
  if (validatePass()) {
    return true;
  } else {
    alert("Data Invalid / Insufficient. Please Re-enter.");
    return false;
  }
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
