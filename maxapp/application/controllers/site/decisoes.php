<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Decisoes extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Decisões";
		
		###################     LISTA DAS DECISÕES 	 #########################	
		
		$sql_decisoes['where']      	=	array("status"  =>  1, "excluido"   =>  0);
		$sql_decisoes['order']      	=	array("field" => "id", "hang" => "DESC");
		$sql_decisoes['limit']	   		=    5;
		
		$data['decisoes']   			=   $this->get_data('decisoes', NULL, $sql_decisoes);

		// core/MY_Controller.php
		$this->site_template_load('layout', 'decisoes', $data);
	}
}

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */