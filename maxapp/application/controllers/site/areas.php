<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Areas extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Áreas";
		
		###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);

		// core/MY_Controller.php
		$this->site_template_load('layout', 'areas', $data);
	}
}

/* End of file areas.php */
/* Location: ./application/controllers/site/inicial.php */