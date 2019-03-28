(function($, window) {
    $('#owl-vitrine').owlCarousel({
        loop: true,
        autoplay: false,
        margin: 0,
        nav: false,
        dots: false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    });
    $('#owl-especialidades').owlCarousel({
        loop: true,
        autoplay: false,
        margin: 0,
        nav: true,
        navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
        dots: false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4
            }
        }
    });
    $('#owl-planos').owlCarousel({
        loop: true,
        autoplay: false,
        margin: 30,
        nav: false,
        dots: false,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:5
            },
            1000:{
                items:9
            }
        }
    });
    $('#owl-menu').owlCarousel({
        loop: true,
        autoplay: true,
        margin: 20,
        nav: true,
        navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
        dots: false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:4
            },
            1000:{
                items:8
            }
        }
    });
    jQuery(document).ready(function($) { 
        $(".scroll").click(function(event) {
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 1500);
        });
    });
	$("form#frm-newsletter").submit(function(event)
	{
		event.preventDefault();
		
		var base_url = (window.location);
		
		if($('#email').val() != "")
		{
			$.ajax({
				type		:	"POST",
				url			:	base_url.protocol + "//" + base_url.host + "/hospitalrn/contato/newsletter",
				data		:	{email:$("#email").val()},
				dataType	:	"json",
				success		:	function(data)
				{
					if(data.status == '200')
					{
						showToastPosition("top-right", "Enviado!", "Contato enviado com sucesso. Em breve entraremos em contato.", 'success');
						$('#frm-newsletter').trigger("reset");
					}
					else if(data.status == '404')
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
			showToastPosition("top-right", "Atenção", "Insira todos os dados!", 'warning');
		}
	});
	$("form#frm-contato").submit(function(event)
	{
		event.preventDefault();
		
		var base_url = (window.location);
		
		if($('#nome').val() != "" && $('#email').val() != "" && $('#telefone').val() != "" && $('#mensagem').val() != "")
		{
			$.ajax({
				type		:	"POST",
				url			:	base_url.protocol + "//" + base_url.host + "/hospitalrn/contato/send",
				data		:	{nome:$("#nome").val(), email:$("#email").val(), telefone:$("#telefone").val(), mensagem:$("#mensagem").val()},
				dataType	:	"json",
				success		:	function(data)
				{
					if(data.status == '200')
					{
						showToastPosition("top-right", "Enviado!", "Contato enviado com sucesso. Em breve entraremos em contato.", 'success');
						$('#frm-contato').trigger("reset");
					}
					else if(data.status == '404')
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
			showToastPosition("top-right", "Atenção", "Insira todos os dados!", 'warning');
		}
	});
	showToastPosition = function(position, title, text, icon) {
		'use strict';
		console.log(title);
		resetToastPosition();
		$.toast({
			heading: String(title),
			text: String(text),
			position: String(position),
			icon: String(icon),
			stack: false,
			loaderBg: '#f96868'
		})
	};
	resetToastPosition = function() {
		$('.jq-toast-wrap').removeClass('bottom-left bottom-right top-left top-right mid-center'); // to remove previous position class
		$(".jq-toast-wrap").css({"top": "", "left": "", "bottom":"", "right": ""}); //to remove previous position style
	};
})(jQuery, window);