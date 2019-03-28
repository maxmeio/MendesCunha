<?php
	$this->CI =& get_instance();
	$msg_header	=	(is_null($id)) ? "Cadastro de módulos do sistema" : "Atualização de módulos do sistema";
	$nameform	=	"modulos";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Módulos</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
			?>
			  <div class="col-md-12">
				<div class="form-group">
					<label for="titulo">Titulo</label>
					<input type="text" class="form-control" id="titulo" placeholder="Titulo" value="<?php echo $res['titulo']; ?>" name="titulo">
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  	<label for="url">Url</label>
					<input type="text" id="url" name="url" placeholder="Url" value="<?php echo $res['url']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  	<label for="model">Model</label>
					<input type="text" name="model" id="model" placeholder="Model" value="<?php echo $res['model']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-check">
					<label class="form-check-label">
					  <input type="checkbox" class="form-check-input" name="file" id="upload" value="<?php echo ($res['file'] == 1) ? 'checked="checked"' : '' ; ?>">
					  Upload
					</label>
				</div>	
			  </div>
			  <div class="col-md-12">
				  <div class="form-group row">
					  <button id="button_action" class="btn btn-success btn-large btn-block" type="submit">Enviar</button>
				  </div>
			  </div>
		  </form>
		</div>
	  </div>
	</div>
</div>