<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias extends MY_Controller
{
    protected $_namemodel   =   'noticias';

    public function __construct()
    {
        parent::__construct();
    }


    public function index($pagina = NULL)
    {
        // Definindo titulo da pagina
        $data['titulo']     =   "Notícias";
		
		###################     LISTA DAS NOTÍCIAS 		#########################	
		$sql['where']       =   array("status"  =>  1, "excluido"   =>  0, "data_pub <=" => (date("Y-m-d H:i:s")));
        $sql['order']       =   array("field" => "data_pub", "hang" => "DESC");
		
		$data['listagem']   =   $this->get_data($this->_namemodel, $pagina, $sql);
        $data['pagination'] =   $this->pagination($this->_namemodel, $sql, $pagina, NULL);
        $data['modulo']     =   $this->_namemodel;

        ###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);
		
        $this->site_template_load('layout', 'listagem-noticias', $data);
    }

    public function item($id = NULL, $titulo = NULL)
    {     
        if(!is_null($id))
        {					
            // Definindo titulo da pagina
            $data['titulo']         =   "Notícias";
            $data['id']             =   TRUE;

            // application/models/model_*.php
            $model                  =   load_model('generico', $this->_namemodel);

            $sql['where']           =   array('status'  =>  1, 'id' => $id);

            // core/MY_Controller.php
            $data['res']            =   $this->get_data($this->_namemodel, NULL, $sql);
            $data['modulo']         =   $this->_namemodel;

            ###################     LISTA DAS ÁREAS 	 #########################	
		
			$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
			$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
			$sql_areas['limit']	     		=  5;
			
			$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);

            $this->site_template_load('layout', 'interna', $data);
        }
        else
        {
            show_404("Página não encontrada");
        }
    }
	
	public function busca($pagina = NULL, $busca = NULL)
	{
		if(is_null($pagina) && post("busca") == "")
		{
			redirect(site_url("noticias"));
		}
		
		$data['titulo_principal']		=	"Mendes Cunha";
		$data['titulo']         =   "noticias";

		$buscando				=	(post("busca")) ? post("busca") : $busca ;
		$data['modulo']			=	$this->_namemodel;

		################### LISTAGEM ########################
		$sql1['where']			=	array(
				'status'		=>	1,
		);
		$sql1['like']			=	array(
			array(
				'field'		=>	'titulo',
				'search'	=>	$buscando,
				'match'		=>	'both'
			)
		);

		// core/MY_Controller.php
		$data['listagem']		=	$this->get_data($this->_namemodel, $pagina, $sql1);
		$data['paginacao']		=	$this->pagination($this->_namemodel, $sql1, $pagina, $buscando, 'busca');

		###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);

		$this->site_template_load('layout', 'noticias', $data);
	}
}

/* End of file noticias.php */
/* Location: ./application/controllers/site/noticias.php */