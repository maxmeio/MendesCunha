	<section class="interna comunicacao">
		<div class="container">
			<h2 class="titulo-geral">COMUNICAÇÃO</h2>

			<ul class="nav nav-tabs">
			<?php
			foreach($categorias as $categoria) {
			?>	
				<li <?php if($categoria["id"] == $categoria_selecionada) echo 'class="active"';?>><a href="<?php echo base_url(); ?>noticias/<?php echo $categoria["id"]?>"><?php echo $categoria["titulo"]?></a></li>
			<?php
			}
			?>
			</ul>

			<?php
			foreach($lista as $lista_noticias)
			{
			?>
				<a href="<?php echo base_url(); ?>noticias/noticia/<?php echo $lista_noticias["id"]?>">
				<div class="conteudo">
					<div class="col-md-7 col-sm-7">
						<div class="content">

							<span><?php echo $lista_noticias['categoria']; ?></span>
							<h4><?php echo $lista_noticias['titulo']; ?></h4>
							<p><?php echo $lista_noticias['descricao']; ?></p>
						</div><!-- content -->
					</div><!-- md-7 -->
					<img src="<?php echo $lista_noticias['foto']; ?>" alt="">
				</div><!-- conteudo -->
				</a>
			<?php
			}
			?>
		</div><!-- container -->
	</section><!-- interna -->