//
//
//                                          !!!   !!!     LOGIN      !!!     !!!
//                                          !!!   !!!     LOGIN      !!!     !!!
//
//
let form = document.getElementById('login');
let psw = document.getElementById('psw');
let usr = document.getElementById('usr');



function isUsernameValid() {
    if (usr.value.length > 0) {
        return true;
    } else {
        return false;
    }
};


//  function not used...
function isAdmin() {            
    if ((usr.value == adminUsr)&&(psw.value == adminPsw)) {
        return true;
    }
};


function isPasswordValid() {
    if (psw.value.length < 8) {
        return false;
    } else {
        let cond1 = false;
        let cond2 = false;
        let cond3 = false;
        let password = psw.value;
        let i = 0;

        while (i <= password.length) {
            character = password.charAt(i);
            if (!isNaN(character * 1)) {
                cond1 = true;
            } else {
                if (character == character.toUpperCase()) {
                    cond2 = true;
                }
                if (character == character.toLowerCase()) {
                    cond3 = true;
                }
            }
            i++;
        }
        if (!(cond1 && cond2 && cond3)) {
            return false;
        } else {
            return true;
        }
    }
};

usr.oninput = () => {
    if (isUsernameValid()) {
        if (usr.classList.contains('is-invalid')) {
            usr.classList.replace('is-invalid', 'is-valid');
        }
    } else {
        //usr.classList.add('borderRed');
        usr.classList.add('is-invalid');
    }
};

psw.oninput = () => {
    if (isPasswordValid()) {
        if (psw.classList.contains('is-invalid')) {
            psw.classList.replace('is-invalid', 'is-valid');
        }
    } else {
        //psw.classList.add('borderRed');
        psw.classList.add('is-invalid');
    }
};

form.onsubmit = () => {
    if (isUsernameValid() && isPasswordValid()) {
        return true;
    } else if (isUsernameValid()) {
        console.log('Field "PASSWORD" is wrong! \n Submit aborted');
        return false;
    } else if (isPasswordValid()) {
        console.log('Field "USERNAME" is empty! \n Submit aborted');
        return false;
    } else {
        console.log('Both "USERNAME" and "PASSWORD" are wrong! \n Submit aborted');
        return false;
    }
};



//
//
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//                                          !!!   !!!     REGISTRATION      !!!     !!!
//
//

let usrReg = document.getElementById('usr-reg');
let pswReg = document.getElementById('psw-reg');
let email = document.getElementById('email');
let check = document.getElementById('check-admin');
let registration = document.getElementById('registration');



function isEmailValid() {
    if (email.value == /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) {
        return true;
    } else {
        return false;
    }
}


email.oninput = () => {
    if (validateEmail()) {
        if (email.classList.contains('is-invalid')) {
            email.classList.replace('is-invalid', 'is-valid');
        }
    } else {
        //psw.classList.add('borderRed');
        email.classList.add('is-invalid');
    }
};



function isUsernameRegValid() {
    if (usrReg.value.length > 0) {
        return true;
    } else {
        return false;
    }
};


function isPasswordRegValid() {
    if (pswReg.value.length < 8) {
        return false;
    } else {
        let cond1 = false;
        let cond2 = false;
        let cond3 = false;
        let password = pswReg.value;
        let i = 0;

        while (i <= password.length) {
            character = password.charAt(i);
            if (!isNaN(character * 1)) {
                cond1 = true;
            } else {
                if (character == character.toUpperCase()) {
                    cond2 = true;
                }
                if (character == character.toLowerCase()) {
                    cond3 = true;
                }
            }
            i++;
        }
        if (!(cond1 && cond2 && cond3)) {
            return false;
        } else {
            return true;
        }
    }
};

usrReg.oninput = () => {
    if (isUsernameRegValid()) {
        if (usrReg.classList.contains('is-invalid')) {
            usrReg.classList.replace('is-invalid', 'is-valid');
        }
    } else {
        //usr.classList.add('borderRed');
        usrReg.classList.add('is-invalid');
    }
};

pswReg.oninput = () => {
    if (isPasswordRegValid()) {
        if (pswReg.classList.contains('is-invalid')) {
            pswReg.classList.replace('is-invalid', 'is-valid');
        }
    } else {
        //psw.classList.add('borderRed');
        pswReg.classList.add('is-invalid');
    }
};


registration.onsubmit = () => {
    if (isUsernameRegValid() && isPasswordRegValid() && isEmailValid()) {       //implementare anche gli altri controlli, in teoria...
        return true;
    } else {
        return false;
    }
};