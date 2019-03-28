<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_login extends MY_Model
{
	protected $_tablename = 'usuarios';


	public function get_user($username = NULL, $password = NULL, $tipo = NULL)
	{
		if(!is_null($username) && !is_null($password))
		{
			$this->db->select('*');
			$this->db->where('username',	$username);
			$this->db->where('password',	do_hash($password));
			$this->db->where('status',		1);
			$this->db->where('excluido',	0);
			$query	=	$this->db->get($this->_tablename);
			$status	=	($query->num_rows() == 1) ? TRUE : FALSE ;

			return array("status"=>$status, "row"=>$query->row_array());
		}
		else
		{
			return FALSE;
			exit();
		}
	}

    public function get_aluno($email = NULL, $password = NULL)
    {
        if(!is_null($email) && !is_null($password))
        {
            $this->db->select('*');
            $this->db->where('email',	$email);
            $this->db->where('password',	do_hash($password));
            $this->db->where('status',		1);
            $this->db->where('excluido',	0);
            $query	=	$this->db->get($this->_tablename);
            $status	=	($query->num_rows() == 1) ? TRUE : FALSE ;

            return array("status"=>$status, "row"=>$query->row_array());
        }
        else
        {
            return FALSE;
            exit();
        }
    }
	
	public function get_aluno_nome($email = NULL, $nome = NULL)
    {
        if(!is_null($email) && !is_null($nome))
        {
            $this->db->select('*');
            $this->db->where('email',	$email);
            $this->db->where('nome',	$nome);
            $this->db->where('status',		1);
            $this->db->where('excluido',	0);
            $query	=	$this->db->get($this->_tablename);
            $status	=	($query->num_rows() == 1) ? TRUE : FALSE ;

            return array("status"=>$status, "row"=>$query->row_array());
        }
        else
        {
            return FALSE;
            exit();
        }
    }
	
	public function get_aluno_user($user = NULL)
    {
        if(!is_null($user))
        {
            $this->db->select('*');
            $this->db->where('username',	$user);
            $this->db->where('status',		1);
            $this->db->where('excluido',	0);
            $query	=	$this->db->get($this->_tablename);
            $status	=	($query->num_rows() == 1) ? TRUE : FALSE ;

            return array("status"=>$status, "row"=>$query->row_array());
        }
        else
        {
            return FALSE;
            exit();
        }
    }
	
	public function get_aluno_email($email = NULL)
    {
        if(!is_null($email))
        {
            $this->db->select('*');
            $this->db->where('email',	$email);
            $this->db->where('status',		1);
            $this->db->where('excluido',	0);
            $query	=	$this->db->get($this->_tablename);
            $status	=	($query->num_rows() == 1) ? TRUE : FALSE ;

            return array("status"=>$status, "row"=>$query->row_array());
        }
        else
        {
            return FALSE;
            exit();
        }
    }
	
	

	public function set_user($row = NULL,$aluno = false)
	{
		$this->db->select('grupo_id');
		$this->db->where('usuario_id', (int)$row['id']);
		$query	=	$this->db->get('grupos_usuarios');
		
		$rowgroup = $query->row_array();
		
		$rowdados = array();
		$modulo = '';
		
		if((int)$row['tipo'] == 1)
		{
			$this->db->select('*');
			$this->db->where('usuario_id', (int)$row['id']);
			$query_foto = $this->db->get('tutores');
		
			$rowdados = $query_foto->row_array();
			$modulo = tutores; 
		}
		else if((int)$row['tipo'] == 2 || $aluno == true)
		{
			$this->db->select('*');
			$this->db->where('usuario_id', (int)$row['id']);
			$query_foto = $this->db->get('dados');
		
			$rowdados = $query_foto->row_array();
			$modulo = 'dados';
		}
		
		$sessions = array(
			'uid'			=>	(int)$row['id'],
			'nome'			=>	$row['nome'],
			'email'			=>	$row['email'],
			'username'		=>	$row['username'],
			'tipo_user'		=>	(int)$row['tipo'],
			'setor_id'		=>	(int)$row['setor_id'],
			'acessos'		=>	($row['hits'] + 1),
			'data'			=>	date("d/m/Y h:i:s"),
			'num_reg'		=>	(int)$row['num_reg'],
			'logged_in'		=>	TRUE,
            'aluno'         =>  $aluno,
			'group'			=>	(int)$rowgroup['grupo_id'],
			'arquivo'		=>	$rowdados['arquivo'],
			'folder'		=>	$rowdados['folder'],
			'nivel'			=>	$rowdados['nivel_teste'],
			'first_login'	=>	$rowdados['first_login'],
			'telefone'		=>	$rowdados['telefone'],
			'modulo'		=>	$modulo
		);
		$this->session->set_userdata($sessions);

		// Acrescentando o numero de acesso a um usuario
		$this->db->set('hits',	($row['hits'] + 1));
		$this->db->where('id',	(int)$row['id']);
		$this->db->update($this->_tablename);

		$this->Model_logs->add((int)$row['id'], $this->_tablename, 'LOGIN', $_SERVER['REQUEST_URI']);
	}


	public function set_user_site($row = NULL)
	{
		$sessions = array(
			'uid'			=>	(int)$row['id'],
			'nome'			=>	$row['nome'],
			'email'			=>	$row['email'],
			'username'		=>	$row['username'],
			'tipo_user'		=>	(int)$row['tipo'],
			'setor_id'		=>	(int)$row['setor_id'],
			'logg_in'		=>	TRUE
		);
		$this->session->set_userdata($sessions);

		// Acrescentando o numero de acesso a um usuario
		$this->db->set('hits',	($row['hits'] + 1));
		$this->db->where('id',	(int)$row['id']);
		$this->db->update($this->_tablename);

		$this->Model_logs->add((int)$row['id'], $this->_tablename, 'LOGIN', $_SERVER['REQUEST_URI']);
	}

	public function set_pass_user($id)
	{
		$pass		=	$this->get_pass_random();
		$password	=	do_hash($pass);
		$this->db->set('password',	$password);
		$this->db->where('id',		(int)$id);
		$this->db->update($this->_tablename);

		$this->Model_logs->add((int)$id, $this->_tablename, 'UPD PASS', $_SERVER['REQUEST_URI']);

		return $pass;
	}


	private function get_pass_random()
	{
		$caracateres = 'abcdefghijklmnopqrstuyvwzABCDEFGHIJKLMNOPQRSTUYVWZ0123456789';
		$max = strlen($caracateres)-1;
		$password = NULL;
		for($i=0; $i < 12; $i++) {
			$password .= $caracateres{mt_rand(0, $max)};
		}
		return $password;
	}

}

/* End of file model_login.php */
/* Location: ./application/models/model_login.php */