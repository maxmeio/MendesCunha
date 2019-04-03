<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Institucional extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Institucional";
		
		###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_inst['where']      		=	array("status"  =>  1, "excluido"   =>  0, "slug" => "institucional");
		$sql_inst['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_inst['limit']	     		=  5;
		
		$data['institucional']   				=   $this->get_data('paginas', NULL, $sql_inst);

		// core/MY_Controller.php
		$this->site_template_load('layout', 'institucional', $data);
	}
}

/* End of file areas.php */
/* Location: ./application/controllers/site/inicial.php */