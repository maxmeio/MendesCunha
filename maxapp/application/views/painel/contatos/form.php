<?php
	$this->CI =& get_instance();
	$nameform	=	"contatos";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Contatos</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal', 'enctype'=>'multipart/form-data'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
			?>	
				<div class="col-md-12">
					<div class="form-group">
						<label>Nome</label>
						<input type="text" name="nome" value="<?php echo $res['nome']; ?>" class="form-control" />
					</div>
			  </div>

				<div class="col-md-12">
					<div class="form-group">
						<label>Email</label>
						<input type="text" name="email" value="<?php echo $res['email']; ?>" class="form-control" />
					</div>
			  </div>

				<div class="col-md-12">
					<div class="form-group">
						<label>Telefone</label>
						<input type="text" name="telefone" value="<?php echo $res['telefone']; ?>" class="form-control" />
					</div>
			  </div>

				<div class="col-md-12">
					<div class="form-group">
						<label>Mensagem</label>
						<input type="text" name="mensagem" value="<?php echo $res['titulo']; ?>" class="form-control" />
					</div>
			  </div>

			  <div class="col-md-12">
				  <div class="form-group row">
					  <button id="button_action" class="btn btn-success btn-large btn-block" type="submit" rel="<?php echo $this->input->post("mod"); ?>">Enviar</button>
				  </div>
			  </div>
		  </form>
		</div>
	  </div>
	</div>
</div>