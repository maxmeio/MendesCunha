<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias extends MY_Controller
{
    protected $_namemodel   =   'noticias';

    public function __construct()
    {
        parent::__construct();
    }


    public function index($id_categoria = null)
    {
        // application/models/model_noticias.php
       
        parent::index($categoria, $pagina);
		$data =	$this->_data;
		// Adicione aqui as condicoes especificas para este modulo

        // $data['lista']		=	$this->get_data($this->_namemodel, $pagina, $sql);
        
        // application/models/model_noticias.php
		$model				    =	load_model($this->_namemodel);
        $data['categorias']		=	$model->get_categorias();
        
        if (is_null($id_categoria)) {
            $data['lista']          =   $model->get_noticias(null, $data['categorias'][0]['id']);
            $data['categoria_selecionada']      =   $data['categorias'][0]['id'];    
        } else {
            $data['lista']          =   $model->get_noticias(null, $id_categoria);
            $data['categoria_selecionada']      =   $id_categoria;
        }
        

		$this->set_data($data);
        
        $this->site_template_load('layout', 'listagem-noticias', $this->_data);
    }

    public function noticia()
    {
		$data =	$this->_data;
		// Adicione aqui as condicoes especificas para este modulo

		$sql['where']		=	    array("id" => (int)$this->uri->segment(3));
		
		$data['noticia']		=	    $this->get_data($this->_namemodel, $pagina, $sql)[0];
        
        $this->set_data($data);
		// core/MY_Controller.php
        $this->site_template_load('layout', 'interna-noticia', $this->_data);
        
    }

    public function item($id = NULL, $titulo = NULL)
    {     
        
    }
	
	public function busca($pagina = NULL, $busca = NULL)
	{

	}

}

/* End of file albuns.php */
/* Location: ./application/controllers/site/albuns.php */