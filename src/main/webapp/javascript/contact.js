jQuery().ready(function() {
    handleContact();
});

function handleContact() {
    handleCancelContact();
    handleContactTypeSelection();
    handleSubmitContact();
}

function handleContactTypeSelection() {
	$("#contactType").on("change", function () { 
      var selectedContactType = $(this).val();
      if (selectedContactType == 'phone') {
      	$("#emailSpanContact").hide("fast");
      	$("#phoneSpanContact").show("fast");
      }
      else {
        $("#emailSpanContact").show("fast");
      	$("#phoneSpanContact").hide("fast");
      }
      clearContactErrors();	
    });
}

function handleCancelContact() {
	$("#cancelContact").on("click", function () { 
      loadContent("home.html");
    });
}

function handleSubmitContact() {
	$("#submitContact").on("click", function () {
      clearContactErrors();
      
      var fullName    = $.trim($("input#fullName").val());
      var contactType = $("select#contactType").val();
      var contactDestination = $.trim(getContactDestination(contactType));
      var qOrC = $.trim($("textarea#questionsOrComments").val());
      
      if (fullName=="") {
        showError("fullName", "fullName_error");
        return false;
      }
      
      if (contactDestination=="") {
      	showContactDestinationError(contactType);
        return false;
      }
      
      if (qOrC=="") {
      	showError("questionsOrComments", "questionsOrComments_error");
        return false;
      }
      
      $("#contactForm").submit();
    });
}

function clearContactErrors() {
  $("label#fullName_error").hide();
  $("label#eMailAddress_error").hide();
  $("label#phoneNumber_error").hide();
  $("label#questionsOrComments_error").hide();
}

function getContactDestination(contactType) {
  if (contactType == 'email') {
    return $("input#emailAddress").val();
  }
  else {
    return $("input#phoneNumber").val();
  }
}

function showContactDestinationError(contactType) {
	if (contactType=="phone") {
		showError("phoneNumber", "phoneNumber_error");
	}
	else {
		showError("eMailAddress", "eMailAddress_error");
	}
}

function showError(fieldId, errorId) {
	$("#"+fieldId).val("");
    $("#"+errorId).show();
    $("#"+fieldId).focus();
}