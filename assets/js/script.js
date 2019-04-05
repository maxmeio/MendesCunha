(function($, window) {
    $('.owl-vitrine').owlCarousel({
        loop: true,
        autoplay: true,
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

    $('.owl-noticias').owlCarousel({
        loop: true,
        autoplay: true,
        margin: 0,
        nav: false,
        dots: true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:4
            }
        }
    });

    $('.owl-equipe').owlCarousel({
        loop: true,
        autoplay: true,
        margin: 0,
        nav: false,
        dots: true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:4
            }
        }
    });

     $('.owl-decisoes').owlCarousel({
        loop: false,
        autoplay: false,
        margin: 30,
        nav: false,
        dots: true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:2
            }
        }
    });

    $("form#frm-newsletter").submit(function(event)
    {
        event.preventDefault();
        
        var base_url = (window.location);
        
        if($('#email-news').val() != "")
        {
            $.ajax({
                type        :   "POST",
                url         :   base_url.protocol + "//" + base_url.host + "/MendesCunha/contato/newsletter",
                data        :   {email:$("#email-news").val()},
                dataType    :   "json",
                success     :   function(data)
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
                error       :   function(jqXHR, textStatus, errorThrown)
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
                type        :   "POST",
                url         :   base_url.protocol + "//" + base_url.host + "/MendesCunha/contato/send",
                data        :   {nome:$("#nome").val(), email:$("#email").val(), telefone:$("#telefone").val(), mensagem:$("#mensagem").val()},
                dataType    :   "json",
                success     :   function(data)
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
                error       :   function(jqXHR, textStatus, errorThrown)
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
    $(function() {
        $('.scroll').on('click', function(e) {
            e.preventDefault();
            $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');
        });
    });
})(jQuery, window);
