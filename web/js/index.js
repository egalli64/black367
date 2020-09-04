// ---
let form = document.getElementById('login');
let psw = document.getElementById('psw');
let usr = document.getElementById('usr');
let usrFlag = true;
let pswFlag = true;

function isUsernameValid() {
    if (usr.value.length > 0) {
        return true;
    } else {
        return false;
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
        window.open("/federico/blank.html");
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