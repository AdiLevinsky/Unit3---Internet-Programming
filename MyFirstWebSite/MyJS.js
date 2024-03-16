
function validateForm(isRegForm) {
    var countErrors = 0;
    resetErrorMsg();

    if (validateMail() == false)
        countErrors++;
    if (validatePwd() == false)
        countErrors++;
    if (validateName("userFname") == false)
        countErrors++;
    if (validateName("userLname") == false)
        countErrors++;
    if (validatePhone() == false)
        countErrors++;
    if (isRegForm && validateDate() == false)
        countErrors++;
    if (validateRadio() == false)
        countErrors++;
    if (validateCheckbox() == false)
        countErrors++;
    if (validateSelect() == false)
        countErrors++;

    if (countErrors == 0)
        return true;
    return false;
}


function resetErrorMsg() {
    var errFields = document.getElementsByClassName("ErrMsg");
    for (var i = 0; i < errFields.length; i++) {
        errFields[i].innerHTML = "";
    }
}

function validateMail() {
    var mail = document.getElementById("userMail").value;
    if (mail == "") {
        document.getElementById("userMailErr").innerHTML = "דואל לא יכול להיות ריק";
        return false;
    }
    var index = mail.indexOf("@");
    if (index <= 0 || index >= mail.length) {
        document.getElementById("userMailErr").innerHTML = "התו @ חייב להופיע באמצע הדואל";
        return false;
    }
    //TODO - יש לבדוק עבור כל מופע של התו . שהתנאי הבא מתקיים עבורו
    index = mail.indexOf(".");
    if (index <= 0 || index >= mail.length) {
        document.getElementById("userMailErr").innerHTML = "התו . חייב להופיע באמצע הדואל";
        return false;
    }
    return true;
}

function validatePwd() {
    var pwd = document.getElementById("userPwd").value;
    if (pwd == "") {
        document.getElementById("userPwdErr").innerHTML = "סיסמה לא יכולה להיות ריקה";
        return false;
    }
    if (pwd.length < 6) {
        document.getElementById("userPwdErr").innerHTML = "הסיסמה חייבת להכיל לפחות 6 תווים";
        return false;
    }
    for (var i = 0; i < pwd.length; i++) {
        if (!((pwd[i] >= "a" && pwd[i] <= "z") || (pwd[i] >= "A" && pwd[i] <= "Z"))) {
            document.getElementById("userPwdErr").innerHTML = "הסיסמה חייבת להיות מורכבת מאותיות אנגליות בלבד";
            return false;
        }
    }
    return true;
}

function validateName(fieldId) {
    var name = document.getElementById(fieldId).value;
    if (name == "") {
        document.getElementById(fieldId + "Err").innerHTML = "השדה לא יכול להיות ריק";
        return false;
    }
    if (name.length < 2) {
        document.getElementById(fieldId + "Err").innerHTML = "אורך השדה חייב להיות באורך מינימלי של 2 תווים";
        return false;
    }
    for (var i = 0; i < name.length; i++) {
        if (!((name[i] >= "א" && name[i] <= "ת") || (name[i] >= "a" && name[i] <= "z") || (name[i] >= "A" && name[i] <= "Z"))) {
            document.getElementById(fieldId + "Err").innerHTML = "השדה חייב להיות מורכב מאותיות בלבד";
            return false;
        }
    }
    return true;
}

function validatePhone() {
    var phone = document.getElementById("userPhone").value;
    if (phone == "") {
        document.getElementById("userPhoneErr").innerHTML = "מספר טלפון לא יכול להיות ריק";
        return false;
    }
    if (phone.length < 10 || phone.length > 11) {
        document.getElementById("userPhoneErr").innerHTML = "מספר הטלפון חייב להכיל בין 10 ל- 11 תווים";
        return false;
    }
    if (phone[0] != 0) {
        document.getElementById("userPhoneErr").innerHTML = "הספרה הראשונה במספר הטלפון חייבת להיות 0";
        return false;
    }
    if (phone.indexOf("-") < 0) {
        document.getElementById("userPhoneErr").innerHTML = "מספר הטלפון חייב להכיל מקף";
        return false;
    }
    for (var i = 0; i < phone.length; i++) {
        if (!((phone[i] >= "0" && phone[i] <= "9")) && phone[i] != "-") {
            document.getElementById("userPhoneErr").innerHTML = "מספר הטלפון חייב להכיל ספרות / מקף בלבד";
            return false;
        }
    }
    return true;
}

function validateDate() {
    var bDay = document.getElementById("userBDay").value; //YYYY-MM-DD
    if (bDay == "") {
        document.getElementById("userBDayErr").innerHTML = "תאריך לידה לא יכול להיות ריק";
        return false;
    }
    var birthday = bDay.split("-");
    var day = birthday[2];
    var month = birthday[1];
    var year = birthday[0];

    // ... Do your checks on the Date here...

    return true;
}

function validateRadio() {
    var radioBtns = document.getElementsByName("userGender");
    for (var i = 0; i < radioBtns.length; i++) {
        if (radioBtns[i].checked)
            return true;
    }
    document.getElementById("userGenderErr").innerHTML = "יש לסמן את אחת האפשרויות";
    return false;
}

function validateCheckbox() {
    var checkboxes = document.getElementsByName("userColors");
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked)
            return true;
    }
    document.getElementById("userColorsErr").innerHTML = "יש לבחור לפחות צבע אחד";
    return false;
}

function validateSelect() {
    var select = document.getElementById("userDistrict").value;
    if (select == "choose") {
        document.getElementById("userDistrictErr").innerHTML = "אנא בחר אזור מגורים";
        return false;
    }
    return true;
}

function togglePassword(imgElem) {
    var pwd = document.getElementById("userPwd");
    if (pwd.type === "password") {
        pwd.type = "text";
        imgElem.src = "/Images/hide.png";
    }
    else {
        pwd.type = "password";
        imgElem.src = "/Images/show.png";
    }
}



