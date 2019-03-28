<section class="interna fale-conosco">
	<div class="container">
		<?php
			echo '<div style="color:red;"><h2>'.$this->session->flashdata('email_sent').'</h2></div>';
		?>
		<div class="row">
			<div class="col-md-8 col-sm-8">
				<h2 class="titulo-geral">Fale Conosco</h2>
				<form action="contato/send" method="post">
					<input name="nome" type="text" placeholder="Seu nome" class="form-control">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<input name="email" type="email" placeholder="E-mail" class="form-control">
						</div><!-- md-6 -->
						<div class="col-md-6 col-sm-6">
							<input name="telefone" type="text" placeholder="Telefone" class="form-control">
						</div><!-- md-6 -->
					</div><!-- row -->
					<textarea name="mensagem" placeholder="Mensagem" class="form-control"></textarea>
					<button type="submit" class="btn-geral pull-right">enviar <i class="fa fa-angle-right" aria-hidden="true"></i></button>
				</form>
			</div><!-- md-8 -->
			<div class="col-md-4 col-sm-4">
				<aside>
					<h2 class="titulo-geral">Contatos</h2>
					<h4>ENDEREÇO</h4>
					<address>Av. Afonso Pena, 754 - Tirol, Natal - RN, 59020-100</address>
					<hr />
					<h4>Telefone</h4>
					<address>(84) 4009-1000</address>
					<hr />
				</aside>
			</div><!-- md-4 -->
		</div><!-- row -->
	</div><!-- container -->
</section><!-- interna -->