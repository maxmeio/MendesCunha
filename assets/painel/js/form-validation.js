(function($) {
    'use strict';
    $(function() {
        // validate the comment form when it is submitted
        $("#form_dados").validate({
			rules: {
				email: {
					required: true,
					email: true
				}
			},
			messages: {
				email: "Please enter a valid email address"
			},
          errorPlacement: function(label, element) {
            label.addClass('mt-2 text-danger');
            label.insertAfter(element);
          },
          highlight: function(element, errorClass) {
            $(element).parent().addClass('has-danger')
            $(element).addClass('form-control-danger')
          }
        });
        // validate signup form on keyup and submit
        $("#frm-cadastro").validate({
            rules: {
                firstname: "required",
                lastname: "required",
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
				telefone: {
                    required: true
                },
				pais: "required",
                topic: {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            messages: {
                firstname: "Please enter your firstname",
                lastname: "Please enter your lastname",
                username: {
                    required: "Por favor insira um usuário",
                    minlength: "Seu número de usuário precisa de no mínimo 2 caracteres"
                },
                password: {
                    required: "Por favor insira uma senha",
                    minlength: "Sua senha precisar ter no mínimo 5 caracteres"
                },
                confirm_password: {
                    required: "Por favor insira uma senha",
                    minlength: "Sua senha precisar ter no mínimo 5 caracteres",
                    equalTo: "Por favor insira a mesma senha como acima"
                },
                email: "Por favor insira um endereço de email válido",
				telefone: {
                    required: "Por favor insira um número de telefone"
                },
				pais: {
                    required: "Por favor selecione um país"
                },
                agree: "Please accept our policy"
            },
            errorPlacement: function(label, element) {
              label.addClass('mt-2 text-danger');
              label.insertAfter(element);
            },
            highlight: function(element, errorClass) {
              $(element).parent().addClass('has-danger')
              $(element).addClass('form-control-danger')
            }
        });
		$("#frm-login").validate({
            rules: {
                password: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                password: {
                    required: "Por favor insira uma senha"
                },
                email: "Por favor insira um endereço de email válido"
            },
            errorPlacement: function(label, element) {
              label.addClass('mt-2 text-danger');
              label.insertAfter(element);
            },
            highlight: function(element, errorClass) {
              $(element).parent().addClass('has-danger')
              $(element).addClass('form-control-danger')
            }
        });
        // propose username by combining first- and lastname
        $("#username").focus(function() {
            var firstname = $("#firstname").val();
            var lastname = $("#lastname").val();
            if (firstname && lastname && !this.value) {
                this.value = firstname + "." + lastname;
            }
        });
        //code to hide topic selection, disable for demo
        var newsletter = $("#newsletter");
        // newsletter topics are optional, hide at first
        var inital = newsletter.is(":checked");
        var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
        var topicInputs = topics.find("input").attr("disabled", !inital);
        // show when newsletter is checked
        newsletter.on("click", function () {
            topics[this.checked ? "removeClass" : "addClass"]("gray");
            topicInputs.attr("disabled", !this.checked);
        });
    });
})(jQuery);
