<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Decisoes extends MY_Controller
{
    protected $_namemodel   =   'decisoes';

    public function __construct()
    {
        parent::__construct();
    }


    public function index($pagina = NULL)
    {
        // Definindo titulo da pagina
        $data['titulo']     =   "Decisões";
		
		###################     LISTA DAS NOTÍCIAS 		#########################	
		$sql['where']       =   array("status"  =>  1, "excluido"   =>  0);
        $sql['order']       =   array("field" => "id", "hang" => "DESC");
		
		$data['listagem']   =   $this->get_data($this->_namemodel, $pagina, $sql);
        $data['pagination'] =   $this->pagination($this->_namemodel, $sql, $pagina, NULL);
        $data['modulo']     =   $this->_namemodel;

        ###################     LISTA DAS ÁREAS 	 #########################	
		
		$sql_areas['where']      		=	array("status"  =>  1, "excluido"   =>  0);
		$sql_areas['order']      		=	array("field" => "id", "hang" => "ASC");
		$sql_areas['limit']	     		=  5;
		
		$data['areas']   				=   $this->get_data('areas', NULL, $sql_areas);
		
        $this->site_template_load('layout', 'listagem-decisoes', $data);
    }

    public function item($id = NULL, $titulo = NULL)
    {     
        if(!is_null($id))
        {					
            // Definindo titulo da pagina
            $data['titulo']         =   "Decisões";
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

            $this->site_template_load('layout', 'interna-decisoes', $data);
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
			redirect(site_url("decisoes"));
		}
		
		$data['titulo_principal']		=	"Mendes Cunha";
		$data['titulo']         =   "decisoes";

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

		$this->site_template_load('layout', 'decisoes', $data);
	}

}

/* End of file decisoes.php */
/* Location: ./application/controllers/site/decisoes.php */