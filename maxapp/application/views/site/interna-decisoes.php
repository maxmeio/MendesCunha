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

<section class="interna publicacoes">
	<div class="container">
		<h2><?=$res[0]['titulo'];?></h2>
		<img src="<?=base_url('_ups/noticias/'.$res[0]['folder'].'/'.$res[0]['arquivo']);?>" alt="<?=$res[0]['titulo'];?>" class="img-responsive" />
		<p><?=$res[0]['conteudo'];?></p>
		<div class="addthis_inline_share_toolbox_efnt"></div>
	</div><!-- container -->
</section><!-- interna -->