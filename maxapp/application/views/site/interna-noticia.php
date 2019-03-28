<section class="interna dicas-interna">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-9">
				<h2 class="titulo-geral"><?php echo $noticia['titulo']?></h2>

				<img src="<?php echo $noticia['foto']?>" class="img-responsive" alt="">
			
				<h4><?php echo $noticia['descricao']?></h4>
				<?php echo $noticia['noticia']?>
				<hr />
			</div><!-- md-9 -->
			<?php include 'components/sidebar.php'; ?>
		</div><!-- row -->
	</div><!-- container -->
</section><!-- interna -->