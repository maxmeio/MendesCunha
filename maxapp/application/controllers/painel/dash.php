<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class created for skin cupcake
**/

class Dash extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->check_user();
	}


	public function index($modulo = NULL)
	{
		$data['logs']	=	$this->Model_logs->show_logs();

		$this->adm_template_load('lays/layout', 'dash', $data);
	}


	public function config()
	{
		// application/models/model_usuarios.php
		$model	=	load_model("usuarios");

		if(post("nome") != "" && post("email") != "" && post("username") != "")
		{
			$data = array(
				'nome'			=>	post("nome"),
				'email'			=>	post("email"),
				'username'		=>	post("username"),
				'password'		=>	do_hash(post("password"))
			);

			if(post("password") == "")
			{
				array_pop($data);
			}

			// application/models/my_model.php
			$user_id = $model->update($data, session('uid'), 'id');

			$data['retorno']	=	array('sucesso' => 'Atualizado com sucesso...!', 'error' => NULL);
		}
		else
		{
			$data['retorno']	=	array('sucesso' => NULL, 'error' => 'Todos os campos são obrigatórios!');
		}

		// application/models/my_model.php
		$data['res']			=	$model->get(array("id" => session('uid')), NULL, NULL);

		$this->adm_template_load('lays/layout', 'config', $data);
	}
	
	public function changepassword()
	{
		$model = load_model('usuarios');
		
		if(post('pass_atual') != "" && post('password') != "")
		{
			$password_atual = do_hash(post("pass_atual"));
			
			$sql['where']	=	array("id" => session('uid'));
			
			$data = $model->get($sql, NULL, NULL);
			
			if($data['password'] == $password_atual)
			{
				$data_update = array('password' => do_hash(post("password")));
				
				$user_id = $model->update($data_update, session('uid'), 'id');
				
				echo json_encode(array('mensagem' => 'Success'));
			} else {
				echo json_encode(array('mensagem' => 'Error'));
			}
		}
	}

    public function dados()
    {
        // application/models/model_usuarios.php
        //$model	=	load_model("usuarios");
		$data['notificacoes'] = $this->notificacoes();
		
		$model  =   load_model('generico', "dados");
		
		$sql['where']	=	array("usuario_id" => session('uid'));
		
		if($this->input->server('REQUEST_METHOD') == 'POST' || (!empty($_FILES))){

			if((post("telefone") != "" && post("pais") != "" && post("data_nascimento") != "") || (!empty($_FILES["arquivo"])))
			{

				$data['res']			=	$model->get($sql, NULL, NULL);

				if($data['res'] == NULL)
				{
					if($_FILES['arquivo']['tmp_name'])
                    {
                        // core/MY_Controller.php
                        $fileinfo	=	json_decode($this->upload($_FILES['arquivo'], 'arquivo', 'dados'));
                        $file		=	$fileinfo->status->file_name;
                        $folder		=	$fileinfo->folder;
                    }
                    else
                    {
                        $file		=	NULL;
                        $folder		=	post('folder');
                    }
					
					$data_insert = array(
						'nome'				=>	post("nome"),
						'telefone'		    =>	post("telefone"),
						'pais'			    =>	post("pais"),
						'estado'		    =>	post("estado"),
						'cidade'		    =>	post("cidade"),
						'sexo'		        =>	post("sexo"),
						'ocupacao'		    =>	post("ocupacao"),
						'biografia'		    =>	post("biografia"),
						'data_nascimento'   =>	fdata_db(post("data_nascimento")),
						'usuario_id'		=>	session('uid'),
						'folder'			=>	$folder,
						'arquivo'			=>	$file,
						'status'			=>	1,
						'excluido'			=>	0,
						'created'			=>	date("Y-m-d H:i:s")
					);

					$aluno_id = $model->insert($data_insert);

				}else{
					
					if($_FILES['arquivo']['tmp_name'])
                    {
                        // core/MY_Controller.php
                        $fileinfo	=	json_decode($this->upload($_FILES['arquivo'], 'arquivo', 'dados'));
                        $file		=	$fileinfo->status->file_name;
                        $folder		=	$fileinfo->folder;
                    }
                    else
                    {
                        $file		=	NULL;
                        $folder		=	post('folder');
                    }
					
					$data_update = array(
						'nome'				=>	post("nome"),
						'telefone'		    =>	post("telefone"),
						'pais'			    =>	post("pais"),
						'estado'		    =>	post("estado"),
						'cidade'		    =>	post("cidade"),
						'sexo'		        =>	post("sexo"),
						'ocupacao'		    =>	post("ocupacao"),
						'biografia'		    =>	post("biografia"),
						'data_nascimento'   =>	fdata_db(post("data_nascimento")),
						'folder'			=>	$folder,
						'arquivo'			=>	$file
					);
					
					if(!$_FILES['arquivo']['tmp_name'])
					{
						unset($data_update["arquivo"]);
						unset($data_update["folder"]);
					} else {
						unset($data_update["nome"]);
						unset($data_update["telefone"]);
						unset($data_update["pais"]);
						unset($data_update["data_nascimento"]);
						unset($data_update["ocupacao"]);
						unset($data_update["biografia"]);
					}

					$aluno_id = $model->update($data_update, session('uid'), 'usuario_id');
					
					if(isset($data_update["nome"]))
					{
						$model_user = load_model('usuarios');
						
						$data_user = array('nome' => $data_update['nome']);
				
						$user_id = $model_user->update($data_user, session('uid'), 'id');
						
						session('nome', $data_update['nome']);
					}
				}
				
				$data['retorno']	=	array('sucesso' => 'Atualizado com sucesso...!', 'error' => NULL);

				$data['res']			=	$model->get($sql, NULL, NULL);				
					
				$this->adm_template_load('lays/layout', 'dados', $data);

			}else{
				$data['retorno']	=	array('sucesso' => NULL, 'error' => 'Todos os campos são obrigatórios!');
			}
		} else {
			
			$user_id = session('uid');
			
			$data['res']			=	$model->get($sql, 'dados');
			
			######### QUANTIDADE DE AULAS AGENDADAS #########

			$sql2['select']		=	"COUNT(alunos_id) as horas";
			$sql2['where']		=	array('ci_aulas.status' => 1, 'ci_aulas.alunos_id' => $user_id, "data_local >= " => (date("Y-m-d H:i:s")));
			$sql2['total']		=	true;

			$data['aulas_agendadas']		=	$this->get_data('aulas', $pagina, $sql2);
			
			######### QUANTIDADE DE HORAS TOTAIS #########

			$sql3['select']		=	"COUNT(alunos_id) as horas";
			$sql3['where']		=	array('ci_aulas.status' => 3, 'ci_aulas.alunos_id' => $user_id);
			$sql3['total']		=	true;

			$data['horas_total']		=	$this->get_data('aulas', $pagina, $sql3);
			
            $this->adm_template_load('lays/layout', 'dados', $data);
			
        }
    }

	public function analytics()
	{
		$client = new SoapClient(NULL, array(
			'location' 	=>	'http://www.maxhostel.com.br/analytics/wsdl.php',
			'uri'		=>	'http://oab-rn.org.br/2013/painel',
			'trace'		=>	1)
		);

		/**
		 * Caso o cliente tenha sua propria conta no google insira o email e password no metodo abaixo.
		 * $result = $client->pageview($_ID, $email = NULL, $password = NULL);
		 */
		$result = $client->pageview('oab-rn.org.br', NULL, NULL);

		if(is_soap_fault($result))
		{
			trigger_error("SOAP FAULT: (faultcode: {$result->faultcode},
			faultstring: {$result->faultstring})", E_ERROR);
		}
		else
		{
			$days = array();

			foreach($result as $i => $value)
			{
				$dia = mktime(0, 0, 0, substr($i,4,2), substr($i,6,2), substr($i,0,4));

				array_push($days, array(
					"x" => date("Y-m-d", $dia),
					"y" => (int)$value['ga:visits'],
					"z" => (int)$value['ga:pageviews']
				));
			}

			echo json_encode($days);
		}
	}

	public function mensagens()
	{
		$model		=	$this->Model_contatos;

		// application/models/my_model.php
		$query		=	$model->get_query(NULL, array("excluido" => 0, "lido" => 0), NULL, TRUE, NULL, 5);
		
		$_ul = "<ul>";

			if($query->num_rows() > 0)
			{
				foreach($query->result() as $res)
				{
					$_ul .= "<li><a href='".site_url('painel/contatos/upd/'.$res->id.'/0')."'><span>".string_days($res->data)."</span>";
					$_ul .= "<h4>Nome:</h4> " . $res->nome . " [" . date("d/m/Y H:i", strtotime($res->data)) . "]";
					$_ul .= "</a><li>";
				}
			}
			else
			{
				$_ul .= "<li><a href='".site_url('painel/contatos')."'>";
				$_ul .= "<h4>Nenhum contato recebido!</h4>";
				$_ul .= "</a><li>";
			}

		$_ul .= "</ul>";

		// application/models/my_model.php
		$model->free_query($query);

		echo $_ul;
	}

}

/* End of file dash.php */
/* Location: ./application/controllers/dash.php */