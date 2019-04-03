<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Equipe extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Equipe";
		
		###################     LISTA DA EQUIPE 	 #########################	
		
		$sql_equipe['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_equipe['order']      		=	array("field" => "id", "hang" => "DESC");
		$sql_equipe['limit']	    	=  5;
		
		$data['equipe']   				=   $this->get_data('equipe', NULL, $sql_equipe);

		// core/MY_Controller.php
		$this->site_template_load('layout', 'equipe', $data);
	}
}

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */