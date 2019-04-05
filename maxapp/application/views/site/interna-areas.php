<section class="interna publicacoes">
	<div class="container">
		<h2><?=$res[0]['titulo'];?></h2>
		<img src="<?=base_url('_ups/areas/'.$res[0]['folder'].'/'.$res[0]['arquivo']);?>" alt="<?=$res[0]['titulo'];?>" class="img-responsive" />
		<p><?=$res[0]['descricao'];?></p>
		<div class="addthis_inline_share_toolbox_efnt"></div>
	</div><!-- container -->
</section><!-- interna -->