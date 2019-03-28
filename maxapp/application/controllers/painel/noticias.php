<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias extends MY_Controller
{
	protected $_namemodel	=	'noticias';


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
		// Adicione aqui as condicoes especificas para este modulo
		
		/*$sql['order']		=	array("field" => "data", "hang" => "DESC");
		//$sql['limit']		=	20;
		
		$data['lista']		=	$this->get_data($this->_namemodel, $pagina, $sql);*/

		// core/MY_Controller.php
		$this->adm_template_load('lays/layout', $this->_namemodel . '/list', $this->_data);
	}

	public function categoria($id_categoria) {
		return get_noticias(null, $id_categoria);
	}


	/*
	 * @tutorial Este metodo importa todas consultas do metodo da classe pai(add_upd) em core/MY_Controller.php
	 */
	public function add_upd($id = NULL, $pagina = NULL)
	{
		parent::add_upd($id, $pagina);
		$data =	$this->_data;

		// application/models/model_noticias.php
		$model					=	load_model($this->_namemodel);
		$data['categorias']		=	$model->get_categorias();

		$this->set_data($data);

		// core/MY_Controller.php
		$this->adm_template_load('lays/layout', $this->_namemodel . '/form', $this->_data);
	}


	public function send($pagination = NULL)
	{

		$this->Model_modulos->check_model('upd', $this->uri->segment(2));

		$this->set_rules_validation();
		if($this->form_validation->run() == TRUE)
		{
			if(!is_null($pagination) && post('pagination') == $pagination)
			{
				// application/helpers/basics_helper.php
				$model	=	load_model('generico', $this->_namemodel);

				if(post("id") != "")
				{
					// core/MY_Controller.php
                    if($_FILES['arquivo']['tmp_name'])
                    {
                        // core/MY_Controller.php
                        $fileinfo	=	json_decode($this->upload($_FILES['arquivo'], 'arquivo'));
                        $file		=	$fileinfo->status->file_name;
                        $folder		=	$fileinfo->folder;
                    }
                    else
                    {
                        $file		=	NULL;
                        $folder		=	post('folder');
                    }
					
					if($fileinfo->status->file_name)
					{
						$result = $this->resize($fileinfo->status->full_path, $fileinfo->status->file_path);
					}
				
					$data_update = array(
							'data'			=>	date('Y-m-d H:i:s'),
							'data_pub'		=>	format_data_db(post("data_pub").' '.post("time_pub")),
							'titulo'		=>	post("titulo"),
							'categoria'		=>	(int)post("categoria"),
							'chamada'		=>	stripslashes(strip_tags(post("chamada"))),
							'conteudo'		=>	stripslashes(post("conteudo", FALSE)),
							'autor'	        =>	post("autor"),
							'folder'		=>	$folder,
							'arquivo'		=>	$file
					);

					if(!$_FILES['arquivo']['tmp_name'])
					{
						unset($data_update["arquivo"]);
						unset($data_update["folder"]);
					}

					// application/models/my_model.php
					$noticia_id = $model->update($data_update, post("id"), 'id');
				}
				else
				{
					if($_FILES['arquivo']['tmp_name'])
                    {
                        // core/MY_Controller.php
                        $fileinfo	=	json_decode($this->upload($_FILES['arquivo'], 'arquivo'));
                        $file		=	$fileinfo->status->file_name;
                        $folder		=	$fileinfo->folder;
                    }
                    else
                    {
                        $file		=	NULL;
                        $folder		=	post('folder');
                    }
					
					if($fileinfo->status->file_name)
					{
						$result = $this->resize($fileinfo->status->full_path, $fileinfo->status->file_path);
					}

					$data_insert = array(
							'data'			=>	date('Y-m-d H:i:s'),
							'data_pub'		=>	format_data_db(post("data_pub").' '.post("time_pub")),
							'titulo'		=>	post("titulo"),
							'categoria'		=>	(int)post("categoria"),
							'chamada'		=>	stripslashes(strip_tags(post("chamada"))),
							'conteudo'		=>	stripslashes(post("conteudo", FALSE)),
							'autor'	        =>	post("autor"),
							'folder'		=>	$folder,
							'arquivo'		=>	$file,
							'status'		=>	0,
							'excluido'		=>	0
					);

					// application/models/my_model.php
					$noticia_id = $model->insert($data_insert);
				}
			}

			redirect(site_url('painel/'.$this->_namemodel.'/'.$pagination), 'refresh');
		}
		$this->adm_template_load('lays/layout', $this->_namemodel . '/form', $this->_data);
	}

	private function set_rules_validation()
	{
		$config = array(
			array(
				'field' => 'titulo',
				'label' => 'Titulo',
				'rules' => 'required'
			)
		);

		$this->form_validation->set_rules($config);
	}
	
	private function resize($source = NULL, $new = NULL)
	{
		$configCrop		=	array(
			'image_library'		=>	'gd2',
			'source_image'		=>	$source,
			'new_image'			=>	$new,
			'maintain_ratio'	=>	TRUE,
			'quality'			=>	100,
			'width'				=>	690,
			'height'			=>	460
		);
		
		$this->image_lib->initialize($configCrop);
		
		if (!$this->image_lib->resize())
		{
			$data = array('error' => $this->image_lib->display_errors(), 'result' => FALSE);
		}else
		{
			$data = array('error' => FALSE, 'result' => TRUE);
		}
		
		return $data;
	}
}

/* End of file noticias.php */
/* Location: ./application/controllers/painel/noticias.php */