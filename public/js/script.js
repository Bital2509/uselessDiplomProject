var loginButton = document.getElementById("login");
var registerButton = document.getElementById("register");

var loginBox = document.getElementById("loginBox");
var registerBox = document.getElementById("registerBox");

loginButton.addEventListener('click', function () {
    if (registerBox.classList.contains('registration_active')) {
        registerBox.classList.remove('registration_active');
    }
    loginBox.classList.toggle("login_active");
});

registerButton.addEventListener('click', function () {
    if (loginBox.classList.contains('login_active')) {
        loginBox.classList.remove('login_active');
    }
    registerBox.classList.toggle("registration_active");
});