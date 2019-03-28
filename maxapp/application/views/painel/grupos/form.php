<?php
	$this->CI =& get_instance();
	$msg_header	=	(is_null($id)) ? "Cadastro de grupos do sistema" : "Atualização de grupos do sistema";
	$nameform	=	"grupos";
	$pagina		=	(is_null($pagination)) ? 0 : $pagination ;
?>
<div class="row">
	<div class="col-12 grid-margin">
	  <div class="card">
		<div class="card-body">
		  <h4 class="card-title">Grupos</h4>
		  	<?php
				echo form_open(site_url('painel/'.$nameform.'/send/'.$pagina), array('id'=>'form_'.$nameform, 'autocomplete'=>'off', 'class'=>'form-horizontal'));
				echo form_hidden(array('id'=>$id, 'pagination'=>$pagina));
			?>
			  <div class="col-md-12">
				<div class="form-group row">
				  <label class="col-sm-1 col-form-label">Titulo</label>
				  <div class="col-sm-11">
					<input type="text" name="titulo" value="<?php echo $res['titulo']; ?>" class="form-control" />
				  </div>
				</div>
			  </div>
			  <div class="col-md-12">
				<div class="form-group row">
				  <label class="col-sm-1 col-form-label">E-mail</label>
				  <div class="col-sm-11">
					<input type="text" name="email" value="<?php echo $res['email']; ?>" class="form-control" />
				  </div>
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
									<th>Nome</th>
									<th>Acessar</th>
									<th>Adicionar</th>
									<th>Atualizar</th>
									<th>Deletar</th>
								</tr>
							</thead>
							<tbody>
								<?php
	                           		$lista_modulos = $this->CI->Model_modulos->get_list_modulos($id);
									$i = 0;
									foreach($lista_modulos as $lista_modulo)
									{
								?>
								<tr>
									<input name="modulo[]" type="hidden" value="<?php echo $lista_modulo['id'] ; ?>" />
										<td><?php echo $lista_modulo['nome']; ?></td>
										<td><input class="checkbox" type="checkbox" name="view[<?php echo $lista_modulo['id']; ?>]" value="1" <?php echo $lista_modulo['view']; ?> id="check" /></td>
										<td><input class="checkbox" type="checkbox" name="add[<?php echo $lista_modulo['id']; ?>]" value="1" <?php echo $lista_modulo['add']; ?> id="check" /></td>
										<td><input class="checkbox" type="checkbox" name="upd[<?php echo $lista_modulo['id']; ?>]" value="1" <?php echo $lista_modulo['upd']; ?> id="check" /></td>
										<td><input class="checkbox" type="checkbox" name="del[<?php echo $lista_modulo['id']; ?>]" value="1" <?php echo $lista_modulo['del']; ?> id="check" /></td>
								</tr>
								<?php
										$i++;
									}
								?>
								<tr>
									<td colspan="2">Total: <span class="red strong">[<?php echo $i; ?>]</span></td>
									<td colspan="3" style="text-align:right;">Marcar <a href="javascript:void(0);" id="marcar" class="btn btn-small btn-success">TODOS</a> <a href="javascript:void(0);" id="desmarcar" class="btn btn-small btn-light">NENHUM</a></td>
								</tr>
							</tbody>
						</table>
					  </div>
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