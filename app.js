// validation form blur event listeners

document.getElementById('name').addEventListener('blur', ValidateName);
document.getElementById('postcode').addEventListener('blur', validatePostcode);
document.getElementById('email').addEventListener('blur', validateEmail);
document.getElementById('phone').addEventListener('blur', validatePhone);

function ValidateName() {
    const name = document.getElementById('name');
    const re = /^[a-zA-Z]{2, 10}$/;
    if (!re.test(name.valie)) {
        name.classList.add('is-invalid');
    } else {
        name.classList.remove('is-invalid');
    }
}

function validatePostcode() {} // TODO 

function validateEmail() {
    const email = document.getElementById('email');
    const re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\.]+)\.([a-zA-Z]{2,5})$/;
    if (!re.test(email.value)) {
        email.classList.add('is-invalid');
    } else {
        email.classList, remove('is-invalid');
    }
}

function validatePhone() {
    const phone = document.getElementById('phone');
    //const re = /^\(?\d{3}\)?[-. ]?\d{3}[-. ]?\d{4}$/; // USA PHONE VALIDATION  
    const re = /^\+[44]\d[0-9]{11}/; //UK VALIDATION (MUST INCLUDE +44 AT START )
    if (!re.test(phone.value)) {
        phone.classList.add('is-invalid');
    } else {
        phone.classList.remove('is-invalid');
    }
}


// six or seven for uk postcode 



