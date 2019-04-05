<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

#######################################################################################
################################		PAINEL		###################################
#######################################################################################

// Migracao
$route['painel/migracao']								 	=	"painel/migracao/index";
$route['painel/migracao/(:any)/(:any)']				   		=	"painel/migracao/$1/$2";

// Login & Autenticacao
$route['painel/autentica']									=	"painel/login/authentic";
$route['painel/cadastrosend']								=	"painel/cadastro/send";
$route['painel/forget']								   		=	"painel/login/indexRecovery";
$route['painel/recovery']								   	=	"painel/login/recovery";
$route['painel/logout']								   		=	"painel/login/logout";
$route['painel/login']										=	"painel/login";
$route['painel/cadastro']									=	"painel/cadastro";
$route['painel/config']								   		=	"painel/dash/config";
$route['painel/dados']										=	"painel/dash/dados";
$route['painel/changepassword']								=	"painel/dash/changepassword";
$route['painel/agendamentodata']							=	"painel/agendamento/agendamentoData";
$route['painel/agendamentotutor']							=	"painel/agendamento/agendamentoTutor";
$route['painel/aulasprofhistorico']							=	"painel/aulasprof/aulasHistorico";
$route['painel/aulashistorico']								=	"painel/aulasaluno/aulasHistorico";
$route['painel/sendHorarios']								=	"painel/horarios/sendHorarios";
$route['painel/faleconosco']								=	"painel/contatosaluno/index";
$route['painel/relatorio_horas']							=	"painel/avaliacoes/relatorio_horas";
$route['painel/email']										=	"painel/dash/email";

// Inicial
$route['painel/mensagens']									=	"painel/dash/mensagens";
$route['painel/home']									 	=	"painel/dash/index";
$route['painel']										  	=	"painel/dash/index";

$route['download/(:any)/(:any)/(:any)/(:any)/(:any)']	 	=	"painel/files/download/$1/$2-$3-$4/$5";
$route['painel/files/upload/(:any)']					  	=	"painel/files/do_upload/$1";

// Generico
$route['painel/comentarios/(:any)/(:num)/(:num)/(:num)']  	=	"painel/comentarios/view/$1/$2/$3/$4";	// dir/controller/comentarios/modulo/id/pagination/id
$route['painel/comentarios/(:any)/(:num)/(:num)']		 	=	"painel/comentarios/modulo/$1/$2/$3";	// dir/controller/comentarios/modulo/id/pagination

$route['painel/(:any)/show/(:num)']					   		=	"painel/$1/show/$2";					// dir/controller/show/id
$route['painel/(:any)/upd/(:num)/(:num)']					=	"painel/$1/add_upd/$2/$3";				// dir/controller/upd/id/pagination
$route['painel/(:any)/uploaded']					 		=	"painel/$1/uploaded";					// dir/controller/upload
$route['painel/(:any)/status']								=	"painel/$1/status";						// dir/controller/status
$route['painel/(:any)/confirm']								=	"painel/$1/confirm";					// dir/controller/status
$route['painel/(:any)/cancel']								=	"painel/$1/cancel";						// dir/controller/status
$route['painel/(:any)/delete/arquivos']				   		=	"painel/$1/delete/arquivos";			// dir/controller/delete
$route['painel/(:any)/delete']								=	"painel/$1/delete";						// dir/controller/delete
$route['painel/(:any)/del']							   		=	"painel/$1/del";						// dir/controller/del
$route['painel/(:any)/send/(:num)']					   		=	"painel/$1/send/$2";					// dir/controller/send/pagination
$route['painel/(:any)/trash/(:num)']				  		=	"painel/$1/trash/$2";					// dir/controller/trash/pagination
$route['painel/(:any)/trash']						 		=	"painel/$1/trash";						// dir/controller/trash
$route['painel/(:any)/add']						   	   		=	"painel/$1/add_upd";					// dir/controller/add/pagination
$route['painel/(:any)/(:num)']								=	"painel/$1/index/$2";					// dir/controller/pagination
$route['painel/analytics']									=	"painel/dash/analytics";				// dir/controller/analytics
$route['painel/(:any)']							   	   		=	"painel/$1/index";						// dir/controller

#######################################################################################
#################################		SITE		###################################
#######################################################################################

// EXPRESSOES-REGULARES
#$route['solicitacoes']								  		=	   "site/inicial/seccionais_logout";
$route['home_teste']								  		=	"site/inicial/teste";
// $route['institucional']										=	"site/noticias/institucional";		// dir/controller/method/categoria/pagination
$route['institucional/(:num)']								=	"site/noticias/institucional/$1";		// dir/controller/method/categoria/pagination
$route['informativo']										=	"site/noticias/informativo";			// dir/controller/method/categoria/pagination
$route['informativo/(:num)']								=	"site/noticias/informativo/$1";			// dir/controller/method/categoria/pagination
$route['entrevistas']										=	"site/noticias/entrevistas";			// dir/controller/method/categoria/pagination
$route['entrevistas/(:num)']								=	"site/noticias/entrevistas/$1";			// dir/controller/method/categoria/pagination
$route['especiais']											=	"site/noticias/especiais";				// dir/controller/method/categoria/pagination
$route['especiais/(:num)']									=	"site/noticias/especiais/$1";			// dir/controller/method/categoria/pagination
$route['calendario/(:num)/(:num)/(:num)']			 		=	"site/eventos/data/$1/$2/$3";
$route['(:any)/(:num)/(:any)/(:num)']				 		=	"site/$1/item/$2/$3/$4";				// dir/controller/method/id/title/pagination
$route['comunicacao/(:num)/(:any)']							=	"site/noticias/item/$1/$2";				// dir/controller/method/id/title
$route['(:any)/(:num)/(:any)']								=	"site/$1/item/$2/$3";					// dir/controller/method/id/title
$route['(:any)/(:num)']							   			=	"site/$1/index/$2";						// dir/controller/method/pagination
$route['p/(:any)']											=	"site/paginas/index/$1";				// dir/controller/method/slug
$route['(:any)']									  		=	"site/$1/index";						// dir/controller/method

//NOTICIAS

// ESTATICOS
$route['informativos/send']						   			=	"site/informativos/send";
$route['busca']									   			=	"site/noticias/busca";
$route['contato/send']							 			=	"site/contato/send";
$route['json-calendar']						       			=	"site/inicial/json_calendar";
$route['home']												=	"site/inicial/index";
$route['default_controller']						  		=	"site/inicial/index";
$route['radio']						   						=	"site/radio/index";

/* End of file routes.php */
/* Location: ./application/config/routes.php */