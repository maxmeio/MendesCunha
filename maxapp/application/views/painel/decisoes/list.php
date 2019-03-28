<?php
	$this->CI =& get_instance();
	$nameform = "decisoes";
    $array_tipo = [0 => 'Admin', 1 => 'Tutor', 2 => 'Aluno'];
?>
<div class="card">
	<div class="card-body">
		<h4 class="card-title">Decisões</h4>
		<div class="d-flex table-responsive">
			<div class="btn-group">
			<?php
				if($this->Model_modulos->check_actions('add', $nameform) === TRUE) {
					echo "<a href='".site_url('painel/'.$nameform.'/add')."' data-title='Novo registro' class='btn btn-sm btn-success'><i class='mdi mdi-plus-circle-outline'></i> Add</a>";
				}
			?>
			</div>
		</div>

		<div class="table-responsive">
			<table class="table order-listing">
				  <thead>
					<tr>
						<th>ID</th>
						<th>Empresa</th>
						<th>Pessoa</th>
						<th>Descrição</th>
					</tr>
				  </thead>
				  <tbody>
				  <?php
						if(count($lista) > 0)
						{
							foreach($lista as $items)
							{
					?>
						<tr id="i_<?php echo $items['id']; ?>">
							<td><?php echo $items['id']; ?></td>
							<td><?php echo $items['empresa']; ?></td>
							<td><?php echo $items['pessoa']; ?></td>
							<td><?php echo $items['descricao']; ?></td>
							<td class="action">
								<?php
									echo btn_status(array("nameform"=>$nameform, "id"=>$items['id'], "title"=>status($items['status'], 'info')));
								?>
								<a href="<?=base_url('painel/decisoes/upd/'.$items['id'].'/0');?>" class="btn btn-outline-primary">Editar</a>
								<a href="javascript:void(0);" class="btn btn-outline-primary del" rel="<?=$nameform;?>" title="Excluir" id="<?=$items['id'];?>">Excluir</a>
							</td>
						</tr>
					<?php
							}
						}
						else
						{
					?>
							<tr>
								<td colspan="10" style="text-align:center;">
									Nenhum registro inserido
								</td>
							</tr>
					<?php								
						}
					?>
				  </tbody>
			</table>                    
		</div>
	</div>
</div>