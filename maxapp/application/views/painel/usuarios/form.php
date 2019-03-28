<?php
	$this->CI =& get_instance();
	$nameform	=	"usuarios";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Usuário</h4>
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
				  <label>E-mail</label>
					<input type="text" name="email" value="<?php echo $res['email']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Login</label>
				  <input type="text" name="username" value="<?php echo $res['username']; ?>" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group">
				  <label>Senha</label>
				  <input type="password" name="password" value="" class="form-control" />
				</div>
			  </div>
			  <div class="col-md-12">
				  <div class="form-group row">
					  <div class="col-sm-12">
						  <p class="card-description"></p>
					  </div>
				  </div>
			  </div>
			 <div class="col-md-12">
				  <div class="form-group row">
					  <div class="col-sm-12">
						  <table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Grupo</th>
									<th>Acesso</th>
								</tr>
							</thead>
							<tbody>
								<?php
									foreach($grupos as $lista_grupos)
									{
								?>
								<tr>
									<td><?php echo $lista_grupos['titulo']; ?></td>
									<td><input type="checkbox" id="checkbox" class="checkbox" name="grupo[]" value="<?php echo $lista_grupos['id']; ?>" <?php echo ($lista_grupos['checked']==1)?'checked':''; ?> /></td>
								</tr>
								<?php
									}
								?>
							</tbody>
						</table>
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