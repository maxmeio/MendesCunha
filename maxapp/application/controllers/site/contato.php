<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contato extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		// Definindo titulo da pagina
		$data['titulo']		=	"Contato";
		
		
		$this->site_template_load('layout', 'contato', $data);
	}
	
	public function send()
	{
		date_default_timezone_set("America/Fortaleza");

		if ($this->input->is_ajax_request()) 
		{
			$this->set_rules_validation();
			
			if($this->form_validation->run() == TRUE)
			{
				// application/helpers/basics_helper.php
				$model			=	load_model('generico', 'contatos');

				$data = array(
					'data'			=>	date("Y-m-d H:i:s"),
					'nome'			=>	post("nome"),
					'email'			=>	post("email"),
					'telefone'		=>	post("telefone"),
					'mensagem'		=>	post("mensagem"),
					'lido'			=>	0,
					'status'		=>	0,
					'excluido'		=>	0
				);

				// application/models/my_model.php
				$model->insert($data);

				$rows['row'] 				=	array(
					'nome'			=>	post("nome"),
					'email'			=>	post("email"),
					'telefone'		=>	post("telefone"),
					'mensagem'		=>	post("mensagem")
				);
				$this->load->library('email');
				$config['newline']          =	"\r\n";
				$config['mailtype']         =	'html';
				$config['validation']   	=	TRUE;
				$this->email->initialize($config);

				$this->email->from(post("email"));
				$this->email->to('carlos@maxmeio.com');
				$this->email->subject('Contato - Mendes Cunha');
				$body = $this->load->view('site/mail_contato', $rows, true);

				$this->email->message($body);
				$result = $this->email->send();
				
				echo json_encode(array('status' => '200', 'mensagem' => 'Dados enviados com sucesso'));
			}
			else
			{
				echo json_encode(array("status" => '404', 'mensagem' => 'Insira todos os dados'));
			}
		}
	}
	
	public function newsletter()
	{
		date_default_timezone_set("America/Fortaleza");

		if ($this->input->is_ajax_request()) 
		{
			$this->set_rules_validation();
			
			if($this->form_validation->run() == TRUE)
			{
				// application/helpers/basics_helper.php
				$model			=	load_model('generico', 'newsletter');

				$data = array(
					'data'			=>	date("Y-m-d H:i:s"),
					'email'			=>	post("email"),
					'lido'			=>	0,
					'status'		=>	0,
					'excluido'		=>	0
				);

				// application/models/my_model.php
				$model->insert($data);

				$rows['row'] 				=	array(
					'email'			=>	post("email")
				);
				$this->load->library('email');
				$config['newline']          =	"\r\n";
				$config['mailtype']         =	'html';
				$config['validation']   	=	TRUE;
				$this->email->initialize($config);

				$this->email->from(post("email"));
				$this->email->to('carlos@maxmeio.com');
				$this->email->subject('Newsletter - Mendes Cunha');
				$body = $this->load->view('site/mail_newsletter', $rows, true);

				$this->email->message($body);
				$result = $this->email->send();
				
				echo json_encode(array('status' => '200', 'mensagem' => 'Dados enviados com sucesso'));
			}
			else
			{
				echo json_encode(array("status" => '404', 'mensagem' => 'Insira todos os dados'));
			}
		}
	}

	private function set_rules_validation()
	{
		$config = array(
			array(
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'required',
				'errors'=>	array(
							'required' => 'Por favor, insira um email',
				)
			)
		);

		$this->form_validation->set_rules($config);
	}

}

/* End of file contato.php */
/* Location: ./application/controllers/site/contato.php */