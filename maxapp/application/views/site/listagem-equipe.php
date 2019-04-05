<section class="listagem noticias">
	<div class="container">
		<div class="row">
			<?php foreach($listagem as $lista){ ?>
			<div class="col-md-4 col-sm-4">
				<div class="item">
					<a href="<?=url_site($lista, 'equipe').'/'.url_title($lista['nome'], 'dash', true);?>">
						<img src="<?=base_url('_ups/equipe/'.$lista['folder'].'/'.$lista['arquivo']);?>" alt="">
						<div class="conteudo">
							<h4><?=$lista['nome'];?></h4>
							<p><?=word_limiter($lista['oab'], 20, '...');?></p>
							<a href="<?=url_site($lista, 'equipe');?>" class="btn-proximo"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
						</div><!-- conteudo -->
					</a>
				</div><!-- item -->
			</div><!-- md-4 -->
			<?php } ?>
		</div><!-- row -->
		<?=$pagination;?>
	</div><!-- container -->
</section><!-- listagem -->