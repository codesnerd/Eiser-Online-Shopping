function validateAll()
{
    if(validateFullName() && validatePass() && confirmPass() && validateAddress())
    {
        return true;
    }
    else
    {
        alert("Data Invalid / Insufficient to Create an Account.");
        return false;
    }
}

function validateFullName()
{
    var fn = document.signup.fname.value.toLowerCase();
    var flag = true;
    /* Check if not a space present then ask for fullname again. */
    if (fn == "")
    {
        document.getElementById("fname_err").innerHTML = "First Name can't be Empty.";
        document.signup.fname.focus();
        flag = false;
    }
    else if(!(fn >= "a" && fn <= "z"))
    {
        document.getElementById("fname_err").innerHTML = "Enter a Valid Name.";
        document.signup.fname.focus();
        flag = false;
    }
    else
    {
        document.getElementById("fname_err").innerHTML = "";
        flag = true;
    }

    return flag;
}

function validatePass()
{
    var pass = document.signup.password;
    var flag = true;

    if (pass.value.length < 4)
    {
        document.getElementById("pass_err").innerHTML = "Minimum 4 Characters Required.";
        pass.focus();

        flag =  false;
    }
    else if (pass.value.length > 8)
    {
        document.getElementById("pass_err").innerHTML = "Maximum 8 Characters Allowed.";
        pass.focus();
        flag =  false;
    }
    else
    {
        document.getElementById("pass_err").innerHTML = "";
        flag = true;
    }

    return flag;
}

function confirmPass()
{
    var pass = document.signup.password;
    var cpass = document.signup.confirm_password;
    var flag = true;
    if (pass.value != cpass.value)
    {
        document.getElementById("conf_err").innerHTML = "Passwords do not Match.";
        cpass.focus();

        flag = false;
    }
    else
    {
        document.getElementById("conf_err").innerHTML = "";
        flag = true;
    }

    return flag;
}

function validateAddress()
{
    var address = document.signup.address.value;
    var flag;

    if (address == "")
    {
        document.getElementById("address_err").innerHTML = "Can't be Empty.";
        document.signup.address.focus();
        flag = false;
    }
    else
    {
        document.getElementById("address_err").innerHTML = "";
        flag = true;
    }
    
    return flag;
}