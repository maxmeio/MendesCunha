<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']					=	"Notícias";
		
		###################     LISTA DAS NOTÍCIAS	 #########################	
		
		$sql_destaque['where']      	=	array("status"  =>  1, "excluido"   =>  0, "data_pub <=" => (date("Y-m-d H:i:s")));
		$sql_destaque['order']      	=	array("field" => "data_pub", "hang" => "DESC");
		$sql_destaque['limit']	    	=   5;
		
		$data['noticias']   			=   $this->get_data('noticias', NULL, $sql_destaque);
				

		// core/MY_Controller.php
		$this->site_template_load('layout', 'noticias', $data);
	}
}

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */