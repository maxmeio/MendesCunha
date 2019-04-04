<section class="topo-interna">
	<div class="borda1"></div>
	<div class="container">
		<h1>Notícias</h1>
		<ol class="breadcrumb pull-right">
			<li><a href="<?=site_url('/');?>">Home</a></li>
			<li class="active">Notícias</li>
		</ol>
	</div><!-- container -->
	<div class="borda2"></div>
</section><!-- topo-interna -->

<section class="listagem noticias">
	<div class="container">
		<div class="row">
			<?php foreach($listagem as $lista){ ?>
			<div class="col-md-4 col-sm-4">
				<div class="item">
					<a href="<?=url_site($lista, 'areas');?>">
						<img src="<?=base_url('_ups/areas/'.$lista['folder'].'/'.$lista['arquivo']);?>" alt="">
						<div class="conteudo">
							<h4><?=$lista['titulo'];?></h4>
							<p><?=word_limiter($lista['chamada'], 20, '...');?></p>
							<a href="<?=url_site($lista, 'areas');?>" class="btn-proximo"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
						</div><!-- conteudo -->
					</a>
				</div><!-- item -->
			</div><!-- md-4 -->
			<?php } ?>
		</div><!-- row -->
		<?=$pagination;?>
	</div><!-- container -->
</section><!-- listagem -->