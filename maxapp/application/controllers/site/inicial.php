<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicial extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Inicial";
		
		###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);
		
		###################     LISTA DA EQUIPE 	 #########################	
		
		$sql_equipe['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_equipe['order']      		=	array("field" => "id", "hang" => "DESC");
		$sql_equipe['limit']	    	=  5;
		
		$data['equipe']   				=   $this->get_data('equipe', NULL, $sql_equipe);
		
		###################     LISTA DAS DECISÕES 	 #########################	
		
		$sql_decisoes['where']      	=	array("status"  =>  1, "excluido"   =>  0);
		$sql_decisoes['order']      	=	array("field" => "id", "hang" => "DESC");
		$sql_decisoes['limit']	   		=    5;
		
		$data['decisoes']   			=   $this->get_data('decisoes', NULL, $sql_decisoes);
		
		###################     LISTA DAS NOTÍCIAS - DESTAQUE 	 #########################	
		
		$sql_destaque['where']      	=	array("status"  =>  1, "excluido"   =>  0, "data_pub <=" => (date("Y-m-d H:i:s")));
		$sql_destaque['order']      	=	array("field" => "data_pub", "hang" => "DESC");
		$sql_destaque['limit']	    	=   5;
		
		$data['noticias']   			=   $this->get_data('noticias', NULL, $sql_destaque);
				

		// core/MY_Controller.php
		$this->site_template_load('layout', 'index', $data);
	}
}

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */