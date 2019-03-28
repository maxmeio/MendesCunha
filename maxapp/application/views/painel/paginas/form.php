<?php
	$this->CI =& get_instance();

	$nameform	=	"paginas";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Página</h4>
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
				  <textarea type="text" name="conteudo" id="conteudo" value=""><?php echo htmlspecialchars($res['conteudo']); ?></textarea>
				  <?php /*<textarea type="text" name="bio" value="" rows="4" class="form-control"><?php echo htmlspecialchars($tutor[0]['bio']); ?></textarea>*/?>
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
		if ($("#conteudo").length) {
        $('#conteudo').summernote({
            height: 300,
            tabsize: 2
        });
    }
	});
</script>