 <?php
	$this->CI =& get_instance();
	//$this->CI->load->library('ckeditor');
	$msg_header	=	(is_null($id)) ? "Cadastro de noticias do sistema" : "Atualização de noticias do sistema";
	$nameform	=	"noticias";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;

	date_default_timezone_set("America/Fortaleza");
?>

<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Notícia</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal', 'enctype'=>'multipart/form-data'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
				if(validation_errors()){
					echo '<div class="alert alert-warning">'.validation_errors().'</div>';
				}
			?>
			<div class="col-md-12">
				<div class="form-group">
					<label>Data de publicação</label>
					<div class="form-inline">
						<div class="form-group input-group date datepicker" style="width: 230px;" id="datepicker-popup2" data-date="<?php echo show_data($res['data_pub']); ?>" data-date-format="dd/mm/yyyy">
							<input name="data_pub" id="data-inicio" class="form-control" required="required" type="text" data-inputmask="'alias': 'date'" value="<?php echo show_data($res['data_pub']); ?>">
							<div class="input-group-addon input-group-text">
								<span class="mdi mdi-calendar"></span>
							</div>
						</div>
						<div class="input-group bootstrap-timepicker timepicker input-horario" style="width:230px;margin-left:10px;">
							<input name="time_pub" id="time-inicio" type="text" class="form-control timepicker-24hrs" value="<?php echo show_time($res['data_pub']); ?>">
							<span class="input-group-addon input-group-text">
							  <i class="mdi mdi-clock"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Título</label>
				  <input type="text" name="titulo" value="<?php echo $res['titulo']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Categoria</label>
					<select name="categoria" class="form-control">
						<?php	
							foreach($categorias as $lista_categorias)
							{
						?>
							<option value="<?php echo $lista_categorias['id']; ?>"><?php echo $lista_categorias['titulo']; ?></option>
						<?php
							}
						?>
					</select>
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Autor</label>
					<input type="text" name="autor" value="<?php echo $res['autor']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				  <div class="form-group">
				  	<label>Chamada</label>
					<textarea name="chamada" class="form-control" rows="5"><?php echo htmlspecialchars($res['chamada']); ?></textarea>
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
		if ($("#conteudo").length) {
        $('#conteudo').summernote({
            height: 300,
            tabsize: 2
        });
    }
	});
</script>