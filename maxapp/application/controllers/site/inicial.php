<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicial extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
        $this->site_template_load('layout', 'index', NULL);
	}
}

/* End of file inicial.php */
/* Location: ./application/controllers/site/inicial.php */