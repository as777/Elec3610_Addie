var pwdLength = false;
var pwdCfm = false;

$(document).ready(function(){
	
	$('#password').on('keyup', function() {
		if (this.value.length >= 8) {
			$('#password').css('background-color', 'initial');
			pwdLength = true;
		} else {
			$('#password').css('background-color', '#FFAFA1');
			pwdLength = false;
		}
	});
	
	$('#rpassword').on('keyup', function() {
		if ($(this).val() == $('#password').val()) {
			$('#rpassword').css('background-color', 'initial');
			pwdCfm = true;
		} else {
			$('#rpassword').css('background-color', '#FFAFA1');
			pwdCfm = false;
		}
	});
});

function validateForm(event)
{
//    event.preventDefault();
    if ($("[name=interests]:checked").length < 3) 
    {
		var warning = document.getElementById('warningInterests');
		warning.style.display = 'block';
		return false;
	}
    else if (!pwdLength)
    {
		alert("The password must be at least 8 characters.");
		return false;
	}
    else if (!pwdCfm)
    {
		alert("The password confirmation does not match.");	
		return false;
	}
    else {
		warning.style.display = 'none';
		$("#registerform").submit();
    }
}