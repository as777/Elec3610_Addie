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
	
	$("#submit").bind("click", function() {
		
		var msg = "";
		
		if (pwdLength && pwdCfm) {
			$("#registerform").submit();
		} else if (!pwdLength) {
			alert("The password must be at least 8 characters.");
		} else if (!pwdCfm) {
			alert("The password confirmation does not match.");			
		}
		
	});
});