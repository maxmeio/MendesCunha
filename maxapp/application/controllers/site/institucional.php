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
		
		$sql_inst['where']      		=	array("status"  =>  1, "excluido"   =>  0, "slug" => "institucional");
		$sql_inst['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_inst['limit']	     		=  5;
		
		$data['institucional']   				=   $this->get_data('paginas', NULL, $sql_inst);

		###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);

		// core/MY_Controller.php
		$this->site_template_load('layout', 'institucional', $data);
	}
}

/* End of file areas.php */
/* Location: ./application/controllers/site/inicial.php */