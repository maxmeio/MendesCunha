<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_noticias extends MY_Model
{
	protected $_tablename	=	'noticias';

	public function get_categorias($id_categoria = null)
	{
		$listas = array();
		if(is_null($id_categoria))
		{
			$this->db->select('id, titulo');
			$this->db->where('status', 1);
			$this->db->where('excluido', 0);
			$this->db->order_by("id");
			$query = $this->db->get('categorias');
			foreach($query->result() as $lista)
			{
				array_push($listas,array(
					"id"		=>	$lista->id,
					"titulo"	=>	$lista->titulo
				));
			}
		}

		return $listas;
	}

	public function get_noticias($id_noticia = null, $id_categoria = null)
	{
		$listas = array();
		if(is_null($id_noticia))
		{
			if (is_null($id_categoria)) {
				$this->db->select('noticias.id, categorias.id as id_categoria, categorias.titulo as categoria, noticias.titulo, noticias.descricao, noticias.foto, noticias.noticia');
				$this->db->from('noticias');		
				$this->db->join('categorias', 'categorias.id=noticias.categoria');
				$this->db->order_by("id", "desc");
				
				$query = $this->db->get();
				foreach($query->result() as $lista)
				{
					array_push($listas,array(
						"id"			=>	$lista->id,
						"id_categoria"	=>  $lista->id_categoria,
						"categoria"		=>	$lista->categoria,
						"titulo"		=>	$lista->titulo,
						"descricao"		=>	$lista->descricao,
						"foto"			=>	$lista->foto,
						"noticia"		=>	$lista->noticia,
						"data"			=>	$lista->data,
					));
				}	
			} else {
				$this->db->select('noticias.id, categorias.id as id_categoria, categorias.titulo as categoria,noticias.titulo, noticias.descricao, noticias.foto, noticias.noticia');
				$this->db->from('noticias');		
				$this->db->join('categorias', 'categorias.id=noticias.categoria');
				$this->db->where('categorias.id', $id_categoria);
				$this->db->order_by("id", "desc");
				
				$query = $this->db->get();
				foreach($query->result() as $lista)
				{
					array_push($listas,array(
						"id"			=>	$lista->id,
						"id_categoria"	=>  $lista->id_categoria,
						"categoria"		=>	$lista->categoria,
						"titulo"		=>	$lista->titulo,
						"descricao"		=>	$lista->descricao,
						"foto"			=>	$lista->foto,
						"noticia"		=>	$lista->noticia,
						"data"			=>	$lista->data,
					));
				}
			}			
		}else {
			$this->db->select('noticias.id, categorias.id as id_categoria, categorias.titulo as categoria, noticias.titulo, noticias.descricao, noticias.foto, noticias.noticia');
			$this->db->from('noticias');		
			$this->db->join('categorias', 'categorias.id=noticias.categoria');
			$this->db->order_by("id", "desc");
			
			$query = $this->db->get();
			foreach($query->result() as $lista)
			{
				array_push($listas,array(
					"id"			=>	$lista->id,
					"id_categoria"	=>  $lista->id_categoria,
					"categoria"		=>	$lista->categoria,
					"titulo"		=>	$lista->titulo,
					"descricao"		=>	$lista->descricao,
					"foto"			=>	$lista->foto,
					"noticia"		=>	$lista->noticia,
					"data"			=>	$lista->data,
				));
			}
		}

		return $listas;
	}
}

/* End of file model_noticias.php */
/* Location: ./application/models/model_noticias.php */