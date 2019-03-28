<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contato extends MY_Controller
{
	protected $_namemodel	=	'contatos';

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
	}


	public function index()
	{
		$this->site_template_load('layout', 'fale-conosco', NULL);
	}
	
	public function send()
	{

		// application/helpers/basics_helper.php
		$model	=	load_model($this->_namemodel);

		$dados =	$this->_data;

		// Carrega a biblioteca email
		$from_email = post('email'); 
		$to_email = "{email do destinatário}";
			
		// Nome do remetente
		$nome 		= post('nome');
		// Mensagem
		$mensagem 	= post('mensagem');

		// configuração do protocolo
		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => '{host smtp}',
			'smtp_port' => 587,
			'smtp_user' => '{usuário smtp}',
			'smtp_pass' => '{senha do usuário smtp}',
			'smtp_crypto' => 'tls',
			'mailtype'  => 'text'
		);

		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");
	
		// Define remetente e destinatário
		$this->email->from($from_email, $nome); // Remetente
		$this->email->to($to_email, "{Nome do destinatário}"); // Destinatário

		// Define o assunto do email
		$this->email->subject('{assunto do email}'); 
		$this->email->message($mensagem); 


		//Send mail 
		if($this->email->send()) {
			$data = array(
				'nome'			=>	post("nome"),
				'email'			=>	post("email"),
				'telefone'		=>	post("telefone"),
				'mensagem'		=>	post("mensagem"),
				'data'			=>	date("Y-m-d H:i:s"),
				'status'		=>	0,
				'excluido'		=>	0
			);

			// application/models/my_model.php
			$model->insert($data);

			$this->session->set_flashdata("email_sent","Email Enviado com sucesso!");
		} 
		else 
			$this->session->set_flashdata("email_sent","Erro no envio do email!");
		
		$this->set_data($dados);
		$this->site_template_load('layout', 'fale-conosco', $this->_data);
		redirect('contato', 'location');
		//exit();
	}
	
	public function newsletter()
	{
		
	}

	private function set_rules_validation()
	{
		
	}

}

/* End of file contato.php */
/* Location: ./application/controllers/site/contato.php */