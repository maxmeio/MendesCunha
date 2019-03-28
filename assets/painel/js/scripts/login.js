$(document).ready(function()
{
	$("form#frm-login").submit(function()
	{
		if($('#username').val() != "" && $('#password').val() != "")
		{
			showToastPosition("top-right", "Aguarde", "Analisando os dados", 'info');
			$.ajax({
				type		:	"POST",
				url			:	"autentica",
				data		:	{username:$("#username").val(), password:$('#password').val()},
				dataType	:	"json",
				success		:	function(data)
				{
					if(data.status == 200)
					{
						showToastPosition("top-right", "Seja Bem-vindo!", "Um momento por favor.", 'success');
						setTimeout("window.location.href='home'", 2000);
					}
					else
					{
						showToastPosition("top-right", "Atenção", "Dados incorretos!", 'warning');
					}
				},
				error		:	function(jqXHR, textStatus, errorThrown)
				{
					showToastPosition("top-right", "Ocorreu um erro!", "Tente mais tarde, por favor!", 'danger');
				}
			});
		}
		else
		{
			showToastPosition("top-right", "Atenção", "Insira os dados de acesso!", 'warning');
		}
	});
	
	$("form#frm-recovery").submit(function()
	{
		if($('#username').val() != "")
		{
			showToastPosition("top-right", "Aguarde", "Analisando os dados", 'info');
			$.ajax({
				type		:	"POST",
				url			:	"recovery",
				data		:	{username:$("#username").val()},
				dataType	:	"json",
				success		:	function(data)
				{
					if(data.status == 200)
					{
						console.log(data.msg);
						showToastPosition("top-right", "E-mail enviado!", data.msg, 'success');
						setTimeout("window.location.href='home'", 2000);
					}
					else
					{
						showToastPosition("top-right", "Atenção", data.msg, 'warning');
					}
				},
				error		:	function(jqXHR, textStatus, errorThrown)
				{
					showToastPosition("top-right", "Ocorreu um erro!", "Tente mais tarde, por favor!", 'danger');
				}
			});
		}
		else
		{
			showToastPosition("top-right", "Atenção", "Insira os dados de acesso!", 'warning');
		}
	});
	
	showToastPosition = function(position, title, text, icon) {
        'use strict';
        resetToastPosition();
        $.toast({
            heading: String(title),
            text: String(text),
            position: String(position),
            icon: String(icon),
            stack: false,
            loaderBg: '#f96868'
        })
    }
	
	resetToastPosition = function() {
        $('.jq-toast-wrap').removeClass('bottom-left bottom-right top-left top-right mid-center'); // to remove previous position class
        $(".jq-toast-wrap").css({"top": "", "left": "", "bottom":"", "right": ""}); //to remove previous position style
    }
	
	
});



function gritter_alert(titulo, info, time, clas)
{
	var _t = (time == null) ? 3000 : time ;

	$.gritter.add({
		title	:	titulo,
		text	:	info,
		sticky	:	false,
		class_name: clas,
		time	:	_t
	});

	return false;
}

function checkLoginState() {
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
}