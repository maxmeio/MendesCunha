 <?php
	$this->CI =& get_instance();
	//$this->CI->load->library('ckeditor');
	$msg_header	=	(is_null($id)) ? "Cadastro de areas do sistema" : "Atualização de areas do sistema";
	$nameform	=	"areas";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;

	date_default_timezone_set("America/Fortaleza");
?>

<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Área</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal', 'enctype'=>'multipart/form-data'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
				if(validation_errors()){
					echo '<div class="alert alert-warning">'.validation_errors().'</div>';
				}
			?>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Título</label>
				  <input type="text" name="titulo" value="<?php echo $res['titulo']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Conteúdo</label>
				  <textarea type="text" name="descricao" id="descricao" value=""><?php echo htmlspecialchars($res['descricao']); ?></textarea>
				  <?php /*<textarea type="text" name="bio" value="" rows="4" class="form-control"><?php echo htmlspecialchars($tutor[0]['bio']); ?></textarea>*/?>
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <div class="form-control">
					  <label for="arquivo" class="col-form-label">Imagem</label>
					  <input type="file" name="arquivo" accept="image/*" class="form-control"/>
				  </div>
                </div>
			  </div>
			  <?php if($res['arquivo'] != ""){ ?>
			  <div class="col-md-12">
				<div class="form-group">
					<label class="col-form-label">Imagem Atual</label>
					<div class="form-control">
						<img src="<?php echo site_url('_ups/' . $nameform . '/' . $res['folder'] . "/" . $res['arquivo']); ?>"/>
					</div>
				</div>
			  </div>
			  <?php } ?>
			  <div class="col-md-12">
				  <div class="form-group row">
					  <div class="col-sm-12">
						  <p class="card-description"></p>
					  </div>
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
<script src="<?=base_url('assets/painel/node_modules/summernote/dist/summernote-bs4.min.js');?>"></script>
<script>
	$(document).ready(function(){
		if ($("#descricao").length) {
        $('#descricao').summernote({
            height: 300,
            tabsize: 2
        });
    }
	});
</script>