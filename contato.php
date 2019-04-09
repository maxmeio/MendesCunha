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
		<div class="maps">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3969.3437000163053!2d-35.2067328850498!3d-5.807041058896659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7b2ffe2d3a7a969%3A0x39c075fde6b51eb3!2sMendes+Cunha+Advogados!5e0!3m2!1spt-BR!2sbr!4v1554753798819!5m2!1spt-BR!2sbr" height="534" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
	</div>
	
</section>

<?php include 'components/footer.php'; ?>