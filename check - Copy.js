function checkSurname() {
	var filter = /^[a-zA-Z0-9]{3,20}$/;
    $checker = this.name+"_check";
	$checker = document.getElementById($checker);
    $submit = document.getElementById("submit");

	if (filter.test(this.value)) {

        $checker.style.color = "green";
        $checker.style.visibility = "visible";
        $submit.removeAttribute("disabled");
        $checker.className = "icon fas fa-check-circle";
    }
    else {
        $checker.style.color = "red";
        $checker.style.visibility = "visible";
        $checker.className = "icon fas fa-times-circle";
        $submit.setAttribute("disabled", "");
    }
}

function checkFirstname() {
    var filter = /^[a-zA-Z0-9]{3,20}$/;
    $checker = this.name+"_check";
    $checker = document.getElementById($checker);
    $submit = document.getElementById("submit");

    if (filter.test(this.value)) {

        $checker.style.color = "green";
        $checker.style.visibility = "visible";
        $submit.removeAttribute("disabled");
        $checker.className = "icon fas fa-check-circle";
    }
    else {
        $checker.style.color = "red";
        $checker.style.visibility = "visible";
        $checker.className = "icon fas fa-times-circle";
        $submit.setAttribute("disabled", "");
    }
}

function checkSubject() {
    var filter = /^[a-zA-Z0-9]{3,20}$/;
    $checker = this.name+"_check";
    $checker = document.getElementById($checker);
    $submit = document.getElementById("submit");

    if (filter.test(this.value)) {

        $checker.style.color = "green";
        $checker.style.visibility = "visible";
        $submit.removeAttribute("disabled");
        $checker.className = "icon fas fa-check-circle";
    }
    else {
        $checker.style.color = "red";
        $checker.style.visibility = "visible";
        $checker.className = "icon fas fa-times-circle";
        $submit.setAttribute("disabled", "");
    }
}

var surname = document.getElementById('name');
var firstname = document.getElementById('first_name');
var subject = document.getElementById('subject');
surname.addEventListener('keyup', checkSurname);
firstname.addEventListener('keyup', checkFirstname);
subject.addEventListener('keyup', checkSubject);
