<section class="interna publicacoes">
	<div class="container">
		<h2><?=$res[0]['empresa'];?></h2>
		<img src="<?=base_url('_ups/decisoes/'.$res[0]['folder'].'/'.$res[0]['arquivo']);?>" alt="<?=$res[0]['empresa'];?>" class="img-responsive" />
		<p><?=$res[0]['descricao'];?></p>
		<div class="addthis_inline_share_toolbox_efnt"></div>
	</div><!-- container -->
</section><!-- interna -->