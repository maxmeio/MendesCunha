<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		if($this->agent->is_browser('MSIE') || $this->agent->is_browser('Internet Explorer'))
		{
			$this->adm_template_load('lays/laylog', 'login', NULL);
		}
		else
		{
			$this->adm_template_load('lays/laylog', 'login', NULL);
		}
	}


	public function logout()
	{
		$this->Model_logs->add($this->session->userdata('uid'), 'usuarios', 'LOGIN', $_SERVER['REQUEST_URI']);
		$this->session->sess_destroy();

		redirect(site_url('painel/login'), 'refresh');
		exit();
	}


	public function authentic()
	{
		if($this->input->is_ajax_request())
		{
			if(post('username') !== FALSE && post('password') !== FALSE)
			{
				$username	=	post('username');
				$password	=	post('password');

				$model		=	load_model('login');
				$info		=	$model->get_user($username, $password);

				if($info['status'] === TRUE)
				{
					$model->set_user($info['row']);
					echo json_encode(array("status" => 200));
					exit();
				}
				else
				{
					echo json_encode(array("status" => 404));
					exit();
				}
			}
			else
			{
				redirect(site_url('painel/login'), 'refresh');
			}
		}
	}
	
	public function indexRecovery()
	{
		$this->adm_template_load('lays/laylog', 'forget', NULL);
	}


	public function recovery()
	{
		if($this->input->is_ajax_request())
		{
			if(post('email') !== FALSE)
			{
				$email	=	post('email');

				$model 	= 	load_model('login');
				$query  =	$model->get_aluno_email($email);

				if(count($query['row']) <= 0)
				{
					echo json_encode(array("status" => 404, 'msg' => 'E-mail não encontrado. Verifique seu email e tente novamente!'));
					exit();
				}
				else
				{	
					$rows['row'] 				=	$query['row'];
					$rows['password'] 			=	$model->set_pass_user($rows['row']['id']);

					$this->load->library('email');
					$config['newline']          =	"\r\n";
					$config['mailtype']         =	'html';
					$config['validation']   	=	TRUE;
					$this->email->initialize($config);

					$this->email->from(config('email_from'), config('titulo_sistema'));
					$this->email->to($rows['row']['email']);
					$this->email->cc('programacao@maxmeio.com');
					$this->email->subject('Recuperação de Senha');
					$body = $this->load->view('painel/lays/laymail', $rows, true);

					$this->email->message($body);
					$this->email->send();

					echo json_encode(array("status" => 200, 'msg' => 'Acesse seu email para verificar sua senha.'));
					exit();
				}
				
			}
		}
	}

}

/* End of file login.php */
/* Location: ./application/controllers/login.php */