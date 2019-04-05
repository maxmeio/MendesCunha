<?php include 'components/header.php'; ?>
<section class="contato">
	<div class="container">
		<div class="topo">
			<h2 class="titulo-geral">Contato</h2>
			<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li class="active">Contato</li>
			</ol>
		</div>
		<form>
			<div class="form-row">
				<div class="form-group">
					<label for="">Nome</label>
					<input type="text" class="form-control">
				</div>
				<div class="row">
					<div class="form-group col-md-7">
						<label for="">E-mail</label>
						<input type="email" class="form-control">
					</div>
					<div class="form-group col-md-5">
						<label for="">Telefone</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<label for="">Mensagem</label>
				<textarea class="form-control" name="" id="" rows="6"></textarea>
			</div>
			<a class="btn-geral" href="">ENVIAR</a>
		</form>

		<div class="topo">
			<h2 class="titulo-geral">Localização</h2>
		</div>
	</div>
	
</section>

<?php include 'components/footer.php'; ?>