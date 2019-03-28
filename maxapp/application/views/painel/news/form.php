<?php
	$this->CI =& get_instance();
	$nameform	=	"news";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">News</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal', 'enctype'=>'multipart/form-data'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
			?>	
				<div class="col-md-12">
					<div class="form-group">
						<label>Email</label>
						<input type="text" name="email" value="<?php echo $res['email']; ?>" class="form-control" />
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