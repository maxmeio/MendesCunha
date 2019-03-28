$(document).ready(function()
{
	$("form#frm-cadastro").submit(function()
	{
		if($('#name').val() != "" && $('#email').val() != "" && $('#password').val() != "" && $('#telefone').val() != "" && $('#pais').val() != "")
		{
			var username = $('#email').val();
			
			showToastPosition("top-right", "Aguarde", "Analisando os dados", 'info');
			$.ajax({
				type		:	"POST",
				url			:	"cadastrosend",
				data		:	{nome:$("#name").val(), email:$("#email").val(), username:username, password:$('#password').val(), telefone:$('#telefone').val(), pais:$('#pais').val()},
				dataType	:	"json",
				success		:	function(data)
				{
					if(data.status == 200)
					{
						showToastPosition("top-right", "Cadastro efetuado!", "Um momento por favor.", 'success');
						setTimeout("window.location.href='home'", 2000);
					}
					else if(data.status == 404)
					{
						showToastPosition("top-right", "Atenção", "Já existe um cadastro com esses dados!", 'warning');
					}
					else if(data.status == 500)
					{
						showToastPosition("top-right", "Atenção", "Insira todos os dados!", 'warning');	
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
			showToastPosition("top-right", "Atenção", "Insira os dados de cadastro!", 'warning');
		}
	});
});

function testAPI() 
{
	FB.api('/me', {fields: 'email, name, gender, birthday, locale, picture'}, function(response) {

		var nome = response.name;
		var email = response.email;
		var fid	= response.id;
		var foto_url = response.picture.data.url;
		var http_base = window.location.origin;

		showToastPosition("top-right", "Aguarde", "Analisando os dados", 'info');
		$.ajax({
			type		:	"POST",
			url			:	http_base + "/painel/cadastro/authenticface",
			data		:	{nome:nome, email:email, foto_url:foto_url},
			cache		:	false,
			dataType	:	"json",
			success : function(e)
			{
				if(e.type == 'login')
				{
					showToastPosition("top-right", "Seja Bem-vindo!", "Um momento por favor.", "success");
					setTimeout("window.location.href='"+http_base+"/painel/home'", 2000);
				}
				else if(e.type == 'signin')
				{
					showToastPosition("top-right", "Dados cadastrados com sucesso!", "Um momento por favor.", "success");
					setTimeout("window.location.href='"+http_base+"/painel/home'", 2000);
				}
			},
			error : function(jqXHR, textStatus, errorThrown)
			{
				showToastPosition("top-right", "Ocorreu um erro!", "Tente mais tarde, por favor!", 'danger');
			}
		});

	});
}

$(document).on("click", "a.link_logout", function(e)
{
	FB.logout(function(response) {
		FB.Auth.setAuthResponse(null, 'unknown');
	});
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

function statusChangeCallback(response) {
	if (response.status === 'connected') {
	// Logged into your app and Facebook.
	testAPI();
	} else {
	// The person is not logged into your app or we are unable to tell.
	}
}

function checkLoginState() {
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	});
}
	