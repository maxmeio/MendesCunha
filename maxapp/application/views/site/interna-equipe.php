<section class="interna publicacoes">
	<div class="container">
		<h2><?=$res[0]['nome'];?></h2>
		<img src="<?=base_url('_ups/equipe/'.$res[0]['folder'].'/'.$res[0]['arquivo']);?>" alt="<?=$res[0]['nome'];?>" class="img-responsive" />
		<p><?=$res[0]['oab'];?></p>
		<div class="addthis_inline_share_toolbox_efnt"></div>
	</div><!-- container -->
</section><!-- interna -->