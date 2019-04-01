<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_decisoes extends MY_Model
{
	protected $_tablename	=	'decisoes';

	public selecionar($id=null) {
	  
	  	if (!is_null($download_id)) {
	        $this->db->where('id', $id); 
	        $query = $this->db->get("decisoes");
	        return $query->result();
		}

      $query = $this->db->get("decisoes");
      return $query->result();
	}
}

/* End of file model_noticias.php */
/* Location: ./application/models/model_noticias.php */