<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categorias extends MY_Controller
{
	protected $_namemodel	=	'categorias';


	public function __construct()
	{
		parent::__construct();
		
		// application/core/my_controller.php
		$this->check_user();
		$this->Model_modulos->check_model('view', $this->uri->segment(2));
	}


	/*
	 * @tutorial Este metodo importa todas consultas do metodo da classe pai(index) em core/MY_Controller.php
	 */
	public function index($pagina = NULL)
	{
		parent::index($pagina);
		$data =	$this->_data;
		// Adicione aqui as condicoes especificas para este modulo

		$sql['total']		=	true;
		
		$data['lista']		=	$this->get_data($this->_namemodel, $pagina, $sql);
		$this->set_data($data);
		// core/MY_Controller.php
		$this->adm_template_load('lays/layout', $this->_namemodel . '/list', $this->_data);
	}


	/*
	 * @tutorial Este metodo importa todas consultas do metodo da classe pai(add_upd) em core/MY_Controller.php
	 */
	public function add_upd($id = NULL, $pagina = NULL)
	{
		parent::add_upd($id, $pagina);
		$data =	$this->_data;

		$this->set_data($data);

		// core/MY_Controller.php
		$this->adm_template_load('lays/layout', $this->_namemodel . '/form', $this->_data);
	}


	public function send($pagination = NULL)
	{
		$this->Model_modulos->check_model('upd', $this->uri->segment(2));

		if(!is_null($pagination) && post('pagination') == $pagination)
		{
			// application/helpers/basics_helper.php
			$model	=	load_model($this->_namemodel);

			if(post("id") != "")
			{
				$data = array(
					'titulo'			=>	post("titulo"),
					'status'		=>	0,
					'excluido'		=>	0
				);

				// application/models/my_model.php
				$noticias_id = $model->update($data, post("id"), 'id');
			}
			else
			{
				$data = array(
					'titulo'			=>	post("titulo"),
					'status'		=>	0,
					'excluido'		=>	0
				);

				// application/models/my_model.php
				$noticias_id = $model->insert($data);
			}

			// core/MY_Controller.php
			$this->adm_template_load('lays/layout', 'lays/form_info', array("message"=>"Atualizando...!"));

			redirect(site_url('painel/categorias'), 'refresh');
		}
	}
}

/* End of file categorias.php */
/* Location: ./application/controllers/painel/categorias.php */