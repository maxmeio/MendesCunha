$(function()
{
	var http_base = $("base").attr('href');
	
	var offset = (new Date().getTimezoneOffset() / 60);
	
	/*$(".tip").livequery(function(e)
	{
		$(this).unbind().tooltip();
	});
	
	$(".tip-left").livequery(function(e)
	{
		$(this).unbind().tooltip({placement:'left'});
	});
	
	$(".tip-bottom").livequery(function(e)
	{
		$(this).unbind().tooltip({placement:'bottom'});
	});*/

	 //document.getElementById('requisitos').disabled = true;
	 //document.getElementById('bolsa').disabled 		= true;
	 
	 //document.getElementById('cargo').disabled 		= false;
	 //document.getElementById('atribuicao').disabled = false;
	 //document.getElementById('perfil').disabled 	= false;
	 //document.getElementById('salario').disabled 	= false;

	$(".custom-checkbox").click(function() {
		// GET THE INPUT
		var activeInput = $(this).children("input");
		
		if(activeInput.is(':checked')) {
			// DESELECT IF ALREADY CHECKED
			$(activeInput).prop("checked", false);
		} else {
			// SELECT IF NOT CHECKED
			$(activeInput).prop("checked", true);
		}
		
		// IF RADIO REMOVE SELECTION FROM OTHER OPTIONS
		if(activeInput.is('[type=radio]')){
			var nonActiveInput = $(this).siblings().children("input");
			$(nonActiveInput).prop("checked", false);
		}
		
	});

	$('.pop').popover({
		title : $(this).data('title'),
		content : $(this).data('content'),
		placement : 'top'
	});


	$('a.info-help-crop').click(function(){
		$.gritter.add({
			title: 'Informações Úteis',
	        text: 'Selecione na imagem maior a parte desejada para recortar.',
	        sticky: true,
	        time: '5000'
		});
		return false;
	});


	$('a.info-help').click(function(){
		$.gritter.add({
			title: 'Informações Úteis',
	        text: 'Defina as opções abaixo e clique em <a>adicionar</a> para selecionar a(s) imagem(ns) em seu computador. <br /> Estas definições poderão ser usadas para filtar resultados nas páginas como notícias ou álbuns. <br />Após isto, clique em <a>Iniciar</a>.',
	        sticky: true,
	        //image: 'http://profile.ak.fbcdn.net/hprofile-ak-snc6/203244_1677040371_1334985872_q.jpg',
	        time: '5000'
		});
		return false;
	});


	$('a.info-help-files').click(function(){
		$.gritter.add({
			title: 'Informações Úteis',
	        text: 'Digite uma <u>data</u> e/ou escolha um <u>módulo</u> abaixo para refinar a lista. Clique em <i class="icon-refresh" style="font-size:15px;"></i> para atualizar a lista.',
	        sticky: true,
	        //image: 'http://profile.ak.fbcdn.net/hprofile-ak-snc6/203244_1677040371_1334985872_q.jpg',
	        time: '5000'
		});
		return false;
	});


	$('.visible-desktop #messages, .visible-desktop #notifications').click(function(e)
	{
		e.preventDefault();
	});


	$(".top-menu #messages").click(function()
	{
		el = $(this);
		$.post(http_base + "/mensagens", function(response)
		{
			el.unbind('click').popover({
				content		:	response,
				title		:	'Notificações',
				html		:	true,
				placement	:	'bottom',
				delay		:	{show: 500, hide: 100}
			}).popover('show');
		});
	});



	$("#marcar").click(function(e)
	{
		$("input#check").each(function()
		{
			$(this).attr("checked", "checked");
		});
	});



	$("#desmarcar").click(function(e)
	{
		$("input#check").each(function()
		{
			$(this).removeAttr("checked");
		});
	});


	if($(".analytics_item").length > 0)
	{
		Morris.Line({
			element: 'linechart',
			data: [
			       {x: '2012-01-01', y: 102},
			       {x: '2012-01-10', y: 172},
			       {x: '2012-01-20', y: 130},
			       {x: '2012-02-01', y: 198},
			       {x: '2012-02-10', y: 256},
			       {x: '2012-02-20', y: 211},
			       {x: '2012-03-01', y: 345},
			       {x: '2012-03-10', y: 456},
			       {x: '2012-03-20', y: 384},
			       {x: '2012-04-01', y: 584},
			       {x: '2012-04-10', y: 172},
			       {x: '2012-04-20', y: 130},
			       {x: '2012-05-01', y: 198},
			       {x: '2012-05-10', y: 256},
			       {x: '2012-05-20', y: 211},
			       {x: '2012-06-01', y: 345},
			       {x: '2012-06-10', y: 456},
			       {x: '2012-06-20', y: 384},
			       {x: '2012-06-01', y: 584}
			],
			xkey: 'x',
			ykeys: ['y'],
			smooth: false,
			lineColors: ['#42C1F7','#B3E6FC'],
			labels: ['Acessos']
		});
	}


	$('.slide_menu_left').click(function()
	{
		if($(".nav-collapse.collapse").hasClass('open_left'))
		{
			sidemenu_close();
		}
		else
		{
			sidemenu_open();
			$('.main_container').bind('click', function()
			{
				sidemenu_close();
			});

			var handler = function()
			{
				sidemenu_close();
			};

			$(window).bind('resize', handler);
		}
	});


	$('.widget-buttons a.collapse').click(function()
	{
		if ($(this).attr('data-collapsed') == 'false')
		{
			$(this).closest('.widget').find('.widget-body').slideUp();
			$(this).attr('data-collapsed', 'true').addClass('widget-hidden');
		}
		else
		{
			$(this).closest('.widget').find('.widget-body').slideDown();
			$(this).attr('data-collapsed', 'false').removeClass('widget-hidden');
		}
	});


	$(document).on("click", "a.pagination", function(e)
	{
		var _this			=	$(this);
		var page			=	_this.attr('page');
		var modulo			=	_this.attr('rel');
		var input_data		=	$(document).find("input#data").val();
		var input_modulos	=	$(document).find("select#modulos").val();

		$.ajax({
			type		:	"POST",
			url			:	http_base + "/" + modulo + "/arquivos",
			data		:	{pagina:page, data:input_data, modulo:input_modulos},
			cache		:	false,
			dataType	:	"json",
			beforeSend : function()
			{
				//gritter_alert("Aguarde um momento", "Pagina: " + page, 2000, 'gritter-light');
				$(document).find('#pagination-button').empty();
				$(document).find('tbody#pagination-arquivos').empty();
			},
			success : function(data)
			{
				if(data)
				{
					var table = null;
					for(var x=1; x < data[1].length; x++)
					{
						table    =	'<tr id="'+data[1][x].id+'" class="trdrag">';
						table  	+=	'<td class="handle"><i class="icon-move"></i></td>';
						table  	+=	'<td><img src="_ups/arquivos/'+data[1][x].folder+'/'+data[1][x].arquivo+'" width="70" /></td>';
						table  	+=	'<td>'+data[1][x].legenda+'</td>';
						//table  	+=	'<td>'+data[x].credito+'</td>';
						table	+=	'</tr>';
						$(document).find('tbody#pagination-arquivos').append(table);
					}
					$(document).find('#pagination-button').html(data[0]);

					$(".trdrag").unbind().draggable({
						appendTo	:	"body",
						helper		:	"clone",
						handle		:	".handle",
					    cursor		:	"move",
						revert		:	"invalid"
					});
				}
			},
			error : function(jqXHR, textStatus, errorThrown)
			{
				gritter_alert("Erro ao paginar", textStatus, 3000);
			}
		});
	});

	$(document).on("click", "a.btn-situacao", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var	tipo		=	_this.attr('data-tipo');
		var modulo		=	'cards';
		
		swal({
		title: tipo + ' card?',
		text: 'Gostaria de '+tipo+' card?',
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Confirm '
		}).then(function() {
			$.ajax({
				type		:	"POST",
				url			:	http_base + "/" + modulo + "/situacao",
				data		:	{id:id, tipo:tipo},
				cache		:	false,
				dataType	:	"json",
				success : function(e)
				{
					showToastPosition("top-right", "Pronto", "Card atualizado com sucesso!");
					
					setTimeout(location.reload.bind(location), 1500);
				},
				error : function(jqXHR, textStatus, errorThrown)
				{
					showToastPosition("top-right", "Erro", "Erro ao excluir!");
				}
			});
		});
	});

	$(document).on("click", "a.del", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');
		
		alertify.confirm('Deseja excluir este registro?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/del",
					data		:	{id:id},
					cache		:	false,
					dataType	:	"json",
					success : function(e)
					{
						showToastPosition("top-right", "Pronto", "Registro excluído com sucesso!");
	
						$(_this).parent().parent('tr').remove();
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						showToastPosition("top-right", "Erro", "Erro ao excluir!");
					}
				});
		    }
			else
			{
		    	showToastPosition("top-right", "Cancelado", "Exclusão cancelada!");
		    }
		});
	});

    $(document).on("click", "a.del-credito", function(e)
    {
        var _this		=	$(this);
        var id			=	_this.attr('id');
        var modulo		=	_this.attr('rel');

        alertify.confirm('Deseja excluir este registro?', function(e)
        {
            if(e)
            {
                $.ajax({
                    type		:	"POST",
                    url			:	http_base + "/" + modulo + "/del_credito",
                    data		:	{id:id},
                    cache		:	false,
                    dataType	:	"json",
                    success : function(e)
                    {
                        showToastPosition("top-right", "Pronto", "Registro excluído com sucesso!");

                        $(_this).parent().parent('tr').remove();
                    },
                    error : function(jqXHR, textStatus, errorThrown)
                    {
                        showToastPosition("top-right", "Erro", "Erro ao excluir!");
                    }
                });
            }
            else
            {
                showToastPosition("top-right", "Cancelado", "Exclusão cancelada!");
            }
        });
    });
	
	$(document).on("click", "a.del-horario", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		alertify.confirm('Deseja excluir este registro?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/delete",
					data		:	{id:id},
					cache		:	false,
					dataType	:	"json",
					beforeSend : function()
					{
						//gritter_alert("Aguarde um momento", "Excluindo o registro!", 2000, 'gritter-light');
					},
					success : function(e)
					{
						gritter_alert("Pronto", "Registro excluido com sucesso!", 2500, 'gritter-light');
	
						$(_this).parent().removeClass('marked');
						$(_this).parent().find("input[type='checkbox']").prop('checked', false);
						$(_this).remove();
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						gritter_alert("Erro ao excluir", textStatus, 3000);
					}
				});
		    }
			else
			{
		    	gritter_alert("Informação", "Exclusão cancelada", 3000);
		    }
		});
	});


	$(document).on("click", "a.del_files", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		alertify.confirm('Deseja excluir este arquivo?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/delete/arquivos",
					data		:	{id:id, modulo:modulo},
					cache		:	false,
					dataType	:	"json",
					beforeSend : function()
					{
						//gritter_alert("Aguarde um momento", "Excluindo o registro!", 2000, 'gritter-light');
					},
					success : function(e)
					{
						console.log('html: ' + e);

						gritter_alert("Pronto", "Registro excluido com sucesso!", 2500, 'gritter-light');

						$(_this).parent().parent('tr').remove();
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						gritter_alert("Erro ao excluir", textStatus, 3000);
					}
				});
		    }
			else
			{
		    	gritter_alert("Informação", "Exclusão cancelada", 3000);
		    }
		});
	});


	$(document).on("click", "a.status", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		$.ajax({
			type		:	"POST",
			url			:	http_base + "/" + modulo + "/status",
			data		:	{id:id},
			cache		:	false,
			dataType	:	"json",
			beforeSend : function()
			{
				//gritter_alert("Aguarde um momento", "Atualizando o registro!", 2000, 'gritter-light');
			},
			success : function(e)
			{
				showToastPosition("top-right", "Pronto", "Registro atualizado com sucesso!");

				$(_this).attr("data-original-title", e.msg);

				$(_this).html(e.msg);
			},
			error : function(jqXHR, textStatus, errorThrown)
			{
				showToastPosition("top-right", "Erro", "Erro ao excluir!");
			}
		});
	});
	
	$(document).on("click", "a.confirm", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		alertify.confirm('Deseja confirmar essa aula?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/confirm",
					data		:	{id:id},
					cache		:	false,
					dataType	:	"json",
					beforeSend : function()
					{
						//gritter_alert("Aguarde um momento", "Excluindo o registro!", 2000, 'gritter-light');
					},
					success : function(e)
					{
						gritter_alert("Pronto", "Aula confirmada com sucesso!", 2500, 'gritter-light');
						
						location.reload();
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						gritter_alert("Erro ao confirmar", textStatus, 3000);
					}
				});
		    }
			else
			{
		    	gritter_alert("Informação", "Aula não confirmada", 3000);
		    }
		});
	});
	
	$(document).on("click", "a.cancel", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		alertify.confirm('Deseja cancelar essa aula?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/cancel",
					data		:	{id:id},
					cache		:	false,
					dataType	:	"json",
					beforeSend : function()
					{
						//gritter_alert("Aguarde um momento", "Excluindo o registro!", 2000, 'gritter-light');
					},
					success : function(e)
					{
						gritter_alert("Pronto", "Aula cancelada com sucesso!", 2500, 'gritter-light');
						
						location.reload();
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						gritter_alert("Erro ao cancelar", textStatus, 3000);
					}
				});
		    }
			else
			{
		    	gritter_alert("Informação", "Aula não cancelada", 3000);
		    }
		});
	});
	
	$(document).on("click", "a.email", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');
		var	user_id		=	_this.attr('data-user');
		var	tutor_id	=	_this.attr('data-tutor');
		var data 		=	_this.attr('data-databra');
		var file		=	_this.attr('data-file');
		var folder 		=	_this.attr('data-folder');
		var link_aula 	=	_this.attr('data-link-aula');
		
		//console.log('aula_id = '+id+'; modulo = '+modulo+'; user_id = '+user_id+'; data_aula = '+data+'; folder: '+folder+'; file:'+file+';');

		alertify.confirm('Deseja enviar email da aula?', function(e)
		{
			if(e)
			{
				$.ajax({
					type		:	"POST",
					url			:	http_base + "/" + modulo + "/email",
					data		:	{id:id, user_id:user_id, tutor_id:tutor_id, data:data, file:file, folder:folder, link_aula:link_aula},
					cache		:	false,
					dataType	:	"json",
					beforeSend : function()
					{
						gritter_alert("Aguarde um momento", "Enviando o email!", 4000, 'gritter-light');
					},
					success : function(e)
					{
						gritter_alert("Pronto", "Email enviado com sucesso!", 2500, 'gritter-light');
						
						$(_this).attr("data-original-title", e.msg);

						$(_this).find("img").attr("src", "assets/painel/img/icons/dark/" + e.img + ".png");
						
					},
					error : function(jqXHR, textStatus, errorThrown)
					{
						gritter_alert("Erro ao cancelar", textStatus, 3000);
					}
				});
		    }
			else
			{
		    	gritter_alert("Informação", "Email não enviado", 3000);
		    }
		});
	});


	$(document).on("click", "a.destaque", function(e)
	{
		var _this		=	$(this);
		var id			=	_this.attr('id');
		var modulo		=	_this.attr('rel');

		$.ajax({
			type		:	"POST",
			url			:	http_base + "/" + modulo + "/destaque",
			data		:	{id:id},
			cache		:	false,
			dataType	:	"json",
			beforeSend : function()
			{
				//gritter_alert("Aguarde um momento", "Atualizando o registro!", 2000, 'gritter-light');
			},
			success : function(e)
			{
				gritter_alert("Pronto", "Registro atualizado com sucesso!", 2500, 'gritter-light');

				$(_this).attr("data-original-title", e.msg);

				$(_this).find("img").attr("src", "assets/painel/img/icons/dark/" + e.img + ".png");
			},
			error : function(jqXHR, textStatus, errorThrown)
			{
				gritter_alert("Erro ao excluir", textStatus, 3000);
			}
		});
	});
	
	$(document).on('change', '#tutor_select', function(e)
	{
		var professor_id 	=	$("#tutor_select option:selected").attr('value');
        var offset = (new Date().getTimezoneOffset() / 60);

		console.log(professor_id);
		
		$.ajax({
			type			:	"POST",
			url				:	http_base + "/agendamento/buscaHorario",
			data			:	{professor_id:professor_id},
			cache			:	false,
			dataType		:	"json",
			beforeSend		:	function(data)
			{
				
			},
			success	:	function(data)
			{
				console.log(data);
                $('#horarios_select').empty();
                for(var i = 0; i < data.length; i++)
                {
                    if(navigator.appName == 'Netscape'){
                        var date = new Date(data[i]['data'].replace(/-/g, "/"));
                    } else {
                        var date = new Date(data[i]['data']);
                    }

                    var start = new Date(date);
                    start.setHours(date.getHours() - (offset));

                    $('#horarios_select').append("<option id='option_"+data[i].id+"'>"+formatDataStr(start)+"</option>");

                }
			},
			error	:	function(jqXHR, textStatus, errorThrown)
			{
				
			}
			
		});
	});
	
	$(document).on('change', '#professor_selectstats', function(e)
	{
		var _this			=	$(this);
		var professor_id 	=	_this.attr('value');
		
		$.ajax({
			type			:	"POST",
			url				:	http_base + "/avaliacoes/graphProf",
			data			:	{professor_id:professor_id},
			cache			:	false,
			dataType		:	"json",
			beforeSend		:	function(e)
			{
				
			},
			success	:	function(e)
			{
				var array_data = valuetoArrayObj(e);
				chartBar.series[0].setData(array_data);
			},
			error	:	function(jqXHR, textStatus, errorThrown)
			{
				
			}
			
		});
	});
	
	$(document).on('submit', "#form-pass", function(e)
	{
		var pass_atual 		=	$('input[name=pass-atual]').val();
		var password		=	$('input[name=password]').val();
		
		$.ajax({
			type			:	"POST",
			url				:	http_base + "/changepassword/",
			data			:	{pass_atual:pass_atual, password:password},
			cache			:	false,
			dataType		:	"json",
			beforeSend		:	function(e)
			{
				
			},
			success :	function(e)
			{
				if(e.mensagem == 'Success'){
					$('#success-password').removeAttr('hidden');
					$('#error-password').attr('hidden', true);
				} else {
					$('#error-password').removeAttr('hidden');
					$('#success-password').attr('hidden', true);
				}
			},
			error	:	function(jqXHR, textStatus, errorThrown)
			{
				
			}
		});
		
		e.preventDefault();
	});
	
	$(document).on('submit', "#form_agendamento", function(e)
	{
		var id 	 = 	$("input[name='id']").val();
		var professor_id 	=	$("#horario option:selected").attr('data-professor');
		var id_horario 		=	$("#horario option:selected").attr('data-id');
		var data			=	$("#horario option:selected").attr('data-data');
		var horario			=	$("#horario option:selected").attr('value');
		
		var data_escape 	=	data.replace(/\//g, "_");
		
		$.ajax({
			type			:	"POST",
			url				:	http_base + "/agendamento/send/"+data_escape+'/'+horario+"/"+professor_id+"/"+id_horario,
			data			:	{},
			cache			:	false,
			dataType		:	"json",
			beforeSend		:	function(e)
			{
				
			},
			success	:	function(e)
			{
				alert("Aula agendada com sucesso");
				window.location.href = http_base + "/aulasaluno";
			},
			error	:	function(jqXHR, textStatus, errorThrown)
			{
				
			}
			
		});
	});
	
	function valuetoArrayObj(obj)
	{
		var arraydata = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		for (var i = 0; i < obj.length; i++)
		{
			arraydata[obj[i].mes] = parseInt(obj[i].numero_aulas);
		}
		return arraydata;
	};
	
	function changeGraph(data)
	{
		if(data.length > 0)
		{
			for(var i = 0; i < data.length; i++)
			{
				data[i].y = data[i]['mes'];
				data[i].y = parseInt(data[i].numero_aulas);
				delete data[i].mes;
				data[i].a = data[i]['numero_aulas'];
				data[i].a = parseInt(data[i].numero_aulas);
				delete data[i].numero_aulas;
			}
			
			return data;
		}
		
	}
	
	function buscaData(data)
	{
		$.ajax({
			type		:	"POST",
			url			:	http_base + "/agendamento/buscaData",
			data		:	{data:data},
			cache		:	false,
			dataType	:	"json",
			beforeSend	:	function()
			{
				//gritter_alert("Aguarde um momento", "Atualizando o registro!", 2000, 'gritter-light');
			},
			success	: function(e)
			{
				
			},
			error : function(jqXHR, textStatus, errorThrown)
			{
				gritter_alert("Falha ao buscar", textStatus, 3000);
			}
		});	
	}
	
	(function formatDataTable()
	{
		$('.table-data').each(function(){
			if(navigator.appName == 'Netscape'){
				var data = new Date($(this).html().replace(/-/g, "/"))
			} else {
				var data = new Date($(this).html());
			}
			console.log(data);
			data.setHours(data.getHours() - (offset));
			$(this).text(formatDataStr(data));
		});
	})();
	
	showToastPosition = function(position, title, text) {
        'use strict';
        resetToastPosition();
        $.toast({
            heading: String(title),
            text: String(text),
            position: String(position),
            icon: 'info',
            stack: false,
            loaderBg: '#545121'
        })
    }
	
	resetToastPosition = function() {
        $('.jq-toast-wrap').removeClass('bottom-left bottom-right top-left top-right mid-center'); // to remove previous position class
        $(".jq-toast-wrap").css({"top": "", "left": "", "bottom":"", "right": ""}); //to remove previous position style
    }
	
	$(document).on('click', '.btn-marcar', function(e)
	{	
		var _this 			=	$(this);
		var _tutor			=	_this.parent();
		var title			=	_tutor.attr('data-professor');
		var	data			=	_tutor.attr('data-data');
		var data_local		=	_tutor.attr('data-data_local');
		var horario			=	_tutor.attr('data-horario');
		var professor_id	=	_tutor.attr('data-professorid');
		
		console.log(title+'-'+data+'-'+data_local+'-'+horario+'-'+professor_id);
		
		swal({
			title: 'Confirmar horário?',
			text: 'Gostaria de confirmar horário com a tutora '+title+'?',
			type: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			cancelButtonColor: 'Cancelar ',
			confirmButtonText: 'Confirm '
		}).then(function(){
			$.ajax({
				type		:	"POST",
				url			:	http_base + "/agendamento/sendHorarios",
				data		:	{data: data, horario: horario, professor_id: professor_id, data_local: data_local},
				cache		:	false,
				dataType	:	"json",
				beforeSend : function()
				{
					$('#loading_modal').modal('show');
				},
				success : function(e)
				{
					if(e.status == '404'){
						swal({
							title: 'Ops!',
							type: 'info',
							text: e.message,
							showCloseButton: false,
							showCancelButton: true,
							confirmButtonText:
							  'Ok',
							cancelButtonText:
							  '<a href="'+http_base+'/inserircreditos'+'" style="color:#ffffff;">Adicionar créditos</a>'	
						}).then(function(){
							$('#loading_modal').modal('hide');
						})
					}else if(e.status == '200'){
						$('#loading_modal').modal('hide');
						swal(
							'Confirmado!',
							e.message,
							'success'
						).then(function(){
							location.reload();
						})
					}
					//$('#calendar').fullCalendar('removeEvents', event.id);
				},
				error : function(jqXHR, textStatus, errorThrown)
				{
					swal(
						'Error!',
						textStatus,
						'error'
					)
				}
			});
		});
	});
	
	/*$(".trdrag").draggable({
		appendTo	:	"body",
		helper		:	"clone",
		handle		:	".handle",
	    cursor		:	"move",
		revert		:	"invalid",
		drag		:	function(event, ui)
		{
			//ui.helper.find("td.action").remove();
		}
	});


	$("#trdropsort").droppable({
		activeClass	:	"ui-state-highlight",
		hoverClass	:	"ui-state-active",
		accept		:	":not(.ui-sortable-helper)",
		drop		:	function(event, ui)
		{
			var _this 		= $(this);
			var uiDrag		=	ui.draggable;
			var uiHtml		=	uiDrag.html();
			var arquivo_id	=	uiDrag.attr('id');
			var id			=	$(this).attr('rel');
			var modelo		=	$(this).attr('model');

			$.ajax({
	    		type		:	"POST",
	    		url			:	http_base + "/" + modelo + "/dragdrop",
	        	data		:	{arquivo_id:arquivo_id, id:id},
	    		cache		:	false,
	    		dataType	:	"json",
	    		beforeSend	:	function(e)
	    		{
	    			//$("div.widget-header .widget-buttons").find("img.img-status2").attr("src", http_base + "/../assets/painel/img/loading/3.gif");
	    		},
	    		success		:	function(e)
	    		{
	    			var div_action = "";

	    			div_action	+=	'<td class="action">';
	    			div_action	+=	'<a rel="'+modelo+'" class="btn btn-mini tip del_files" id="'+e.id+'" href="javascript:void(0);" data-original-title="Excluir">';
	    			div_action	+=	'<img alt="" src="'+http_base+'/../assets/painel/img/icons/dark/trashcan.png"></a>';
	    			div_action	+=	'</td>';

	    			$("<tr id='"+e.id+"'></tr>").html(uiHtml + div_action).appendTo(_this).find("td.handle").remove();
	    		},
	    		error		:	function(jqXHR, textStatus, errorThrown)
	    		{
	    			gritter_alert("Erro no processamento!", textStatus, 1000);
	    		}
	    	});
		}
	});

	$("a.prettyphoto").prettyPhoto({
		animation_speed:	'fast',
    	slideshow:			10000,
    	hideflash:			true,
    	show_title:			true,
    	deeplinking:		false,
    	keyboard_shortcuts:	false
	});*/

});

/*function showTutors(event, arrayGrouped){
	var arrayAux = [];
	var fotosrc = 'http://www.soulphia.dreamhosters.com/sistema/assets/painel/images/faces/face_1.png';
	$('.link-professor').remove();
	$.each(arrayGrouped, function(key, value){
		if(key == event.data_str){
			for (var i = 0; i < value.length; i++){
				if(value[i].folder !== '0'){
					fotosrc = 'http://www.soulphia.dreamhosters.com/sistema/_ups/tutores/'+value[i].folder+'/'+value[i].arquivo;
				}
				$('#col-tutoras').append('<a href="javascript:void(0);" class="link-professor link-action" id="list_'+value[i].professor_id+'">'+
					'<div class="wrapper d-flex align-items-center py-2 border-bottom">'+
							'<img class="img-sm rounded-circle" src="'+fotosrc+'" alt="profile">'+
					'<div class="wrapper ml-3">'+
							'<p class="ml-1 mb-1 tutor-bio" data-data="'+fmtdata(event.start)+'" data-datany="'+formatData(event.data_ny)+'" data-datautc="'+formatData(event.data_utc)+'" data-professorid="'+value[i].professor_id+'" data-horario="'+value[i].id+'">'+value[i].professor+'</p>'+
					'</div>'+
						'<div class="badge badge-pill badge-info ml-auto px-1 py-1 d-none"><i class="mdi mdi-check font-weight-bold"></i></div>'+
					'</div>'+
				'</a>');
			}
		}
	});
}*/

var offset = (new Date().getTimezoneOffset() / 60);

function arrayToEvent(arrayEvent)
{
	var arrayReturn = [];
	var color = '#00c292';

	for (var i = 0; i < arrayEvent.length; i++)
	{
		if (arrayEvent[i]['marcado'] == 1)
		{
			color = '#ffd711';
		}
		
		if(navigator.appName == 'Netscape'){
			var data = new Date(arrayEvent[i]['data'].replace(/-/g, "/"));
		} else {
			var data = new Date(arrayEvent[i]['data']);
		}

		var start = new Date(data);
		start.setHours(start.getHours() - (offset));

		var final = new Date(start);
		final.setHours(start.getHours() + 1);

		var obj = {start: start, end: final, color: color, id: arrayEvent[i]['id'], data: data, marcado: arrayEvent[i]['marcado']};
		
		arrayReturn.push(obj);
		color = '#00c292';
	}

	return arrayReturn;
}
			
function arrayToEventAux(arrayGrouped){
	var arrayEvent = Object.keys(arrayGrouped);
	var arrayReturn = [];
	var color = '#00c292';

	for (var i = 0; i < arrayEvent.length; i++)
	{	
		if(navigator.appName == 'Netscape'){
			var data = new Date(arrayEvent[i].replace(/-/g, "/"));
		} else {
			var data = new Date(arrayEvent[i]);
		}

		var start = new Date(data);
		start.setHours(data.getHours() - (offset));
		
		var final = new Date(start);
		final.setHours(start.getHours() + 1);

		var obj = {start: start, end: final, color: color, data: data, data_str: arrayEvent[i]};

		arrayReturn.push(obj);

		color = '#00c292';
	}

	return arrayReturn;
}

function formatData(date){
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();
	var hour = date.getHours();
	var minute = date.getMinutes();

	if (day < 10) {
		day = '0' + day;
	}

	if (month < 10) {
		month = '0' + month;
	}

	if (hour < 10) {
		hour = '0' + hour;
	}

	if (minute < 10) {
		minute = '0' + minute;
	}

	var dataResult = String(year) + '/' + String(month) + '/' + String(day) + " " + String(hour) + ':' + String(minute);

	return dataResult;
}

function formatDataStr(date){
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();
	var hour = date.getHours();
	var minute = date.getMinutes();

	if (day < 10) {
		day = '0' + day;
	}

	if (month < 10) {
		month = '0' + month;
	}

	if (hour < 10) {
		hour = '0' + hour;
	}

	if (minute < 10) {
		minute = '0' + minute;
	}
	
	var dataResult = String(day) + '/' + String(month) + '/' + String(year) + " " + String(hour) + ':' + String(minute);

	return dataResult;
}
		
function showData(){
	var today = new Date();
	var day = today.getDate();
	var month = today.getMonth() + 1;
	var year = today.getFullYear();

	if (day < 10) {
		day = '0' + day;
	}

	if (month < 10) {
		month = '0' + month;
	}

	var arrayDay = [String(year), String(month), String(day)];

	return (arrayDay);
}

function fmtdata(date) {
	return date.format("YYYY-MM-DD HH:mm");
}

function fmtarray(horaInicial, horaFinal, day){
	var arrayHorarios = [];
	for (var i = horaInicial; i < horaFinal; i++){
		if(i < 10){
			arrayHorarios.push(day+' 0'+i+':00');
		} else {
			arrayHorarios.push(day+' '+i+':00');
		}
	}
	return arrayHorarios;
}

function fmtjson(array){
	var arrayJsonHorarios = [];
	for (var i = 0; i < array.length; i++){
		arrayJsonHorarios.push(new Date(array[i]));
	}
	return arrayJsonHorarios;
}

function fmtday(date) {
	return date.format("YYYY-MM-DD");
}

function fmthour(date) {
	return parseInt(date.format("HH")) + 4;
}

function sidemenu_close()
{
	$(".main_container").stop().animate({
		'left' : '0'
	}, 250, 'swing');

	$(".nav-collapse.collapse").stop().animate({
		'left' : '-150px'
	}, 250, 'swing').removeClass('open_left');

	$('.main_container').unbind('click');

	if (typeof handler != 'undefined')
	{
		$(window).unbind('resize', handler);
	}
}


function sidemenu_open()
{
	$(".main_container").stop().animate({
		'left' : '150px'
	}, 250, 'swing');

	$(".nav-collapse.collapse").stop().animate({
		'left' : '0'
	}, 250, 'swing').addClass('open_left');
}


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


function f_alert(info, time)
{
	var _time = 0;
	_time = (time == null) ? 3000 : time ;

	$("#info_page").find('span').find('p').empty();

	$("#info_page")
		.stop(true, true)
		.clearQueue()
		.slideDown("normal", function(e) {
			clearTimeout($(this).data('timeout'));

			$(this)
				.find('span')
				.find("p")
				.empty()
				.html(info);

			var t = setTimeout(function(d)
			{
				$("#info_page").slideUp();
		    }, _time);

			$(this).data('timeout', t);
	});
}


function form_modal(modulo, id, extra)
{
	var f = (extra == null) ? 'form' : extra ;

	$("div#form-modal").modal({
        containerCss:{
            height	:	"80%",
            width	:	980
        },
        onOpen: function (dialog)
        {
            dialog.overlay.fadeIn('fast', function()
            {
                dialog.data.hide();
                dialog.container.fadeIn('slow', function()
                {
                	var _data = dialog.data;
                	$.ajax({
    					type		:	"POST",
    					url			:	http_base + "/modal/" + f + "/" + modulo,
    					data		:	{id:id, mod:modulo},
    					cache		:	false,
    					dataType	:	"html",
    					beforeSend : function()
    					{
    						_data.find('.widget-header h5').html('Editar registros');
    						_data.find('#content-body .widget-body').html('Carregando...');
    						_data.show();
    					},
    					success : function(e)
    					{
   							_data.find('#content-body .widget-body').html(e).slideDown('slow');

    					},
    					error : function(jqXHR, textStatus, errorThrown)
    					{
    						_data.find('#content-body .widget-body').show('pulsate', 3000).html('Processo não concluido. Tente mais tarde!');
    					}
    				});
                });
            });
        },
        onClose: function (dialog)
        {
        	dialog.container.slideUp('slow', function()
        	{
        		$.modal.close();
        		window.location.href = http_base + "/apps/#/" + modulo;
        	});
        },
        overlayClose:false
    });
}