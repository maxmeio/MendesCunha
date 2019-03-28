<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Hospital Rio Grande</title>

    <link rel="icon" href="<?php echo base_url(); ?>/assets/site/images/favicon.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">

    <link rel='stylesheet' href='<?php echo base_url(); ?>/assets/site/css/bootstrap.min.css' type='text/css' />
    <link rel='stylesheet' href='<?php echo base_url(); ?>/assets/site/css/hover-min.css' type='text/css' />
    <link rel='stylesheet' href='<?php echo base_url(); ?>/assets/site/css/owl.carousel.min.css' type='text/css' />
    <link rel='stylesheet' href='<?php echo base_url(); ?>/assets/site/css/lightbox.min.css' type='text/css' />
    <link rel='stylesheet' href='<?php echo base_url(); ?>/assets/site/css/style.css' type='text/css' />
</head>

<body>
    <header>
        <div class="nav menu">
            <nav class="navbar navbar-default" id="meuMenu">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand hidden-xs" href="index.php"><img class="logo" src="<?php echo base_url(); ?>/assets/site/images/logo-hospital-rio-grande.png" alt="Logo" /></a>
                        <a class="navbar-brand visible-xs" href="index.php"><img class="logo" src="<?php echo base_url(); ?>/assets/site/images/logo-hospital-rio-grande-mobile.png" alt="Logo" /></a>

                        <div class="icons-right">
                            <img src="<?php echo base_url(); ?>/assets/site/images/atendimento.png" alt="">
                            <div class="redes-sociais">
                                <ul>
                                    <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href=""><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                </ul>
                            </div><!-- redes-sociais -->
                        </div><!-- icons-right -->
                    </div><!-- .navbar-header -->
                </div><!-- container -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <div class="container">
                        <ul class="nav navbar-nav">
                            <li><a href="">INSTITUCIONAL</a></li>
                            <li><a href="<?=site_url('noticias');?>">COMUNICAÇÃO</a>
                                <ul>
                                    <li><a href="#">Submenu</a></li>
                                    <li><a href="#">Submenu</a></li>
                                    <li><a href="#">Submenu</a></li>
                                </ul>
                            </li>
                            <li><a href="">DICAS DE SAÚDE</a></li>
                            <li>
                                <a href="#">ESPECIALIDADES MÉDICAS</a>
                                <div class="sub-menu2">
                                    <div class="container">
                                        <div class="owl-carousel owl-theme" id="owl-menu">
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                            <div class="item">
                                                <a href="">
                                                    <img src="<?php echo base_url(); ?>/assets/site/images/icon.png" alt="">
                                                    <h4>cardiologia</h4>
                                                </a>
                                            </div><!-- .item -->
                                        </div><!-- owl-carousel -->
                                    </div><!-- container -->
                                </div><!-- sub-menu2 -->
                            </li>
                            <li><a href="">PORTAL DO PACIENTE</a></li>
                            <li><a href="">Convênios e Planos</a></li>
                            <li><a href="">PORTAL DO MÉDICO</a></li>
                            <li><a href="<?=site_url('contato');?>">FALE CONOSCO</a></li>
                        </ul><!-- .nav -->
                    </div><!-- container -->
                </div><!-- .navbar-collapse -->                
            </nav><!-- .navbar -->
        </div><!-- .nav -->
    </header>
		<?php echo $contents ?>      
		<section class="mapas">
			<div id="map"></div>
	    	<script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/mapa.js'></script>
			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDzGKKYG5gC8N5HOtL2l0QQuf4bxYrKlo8&callback=initMap"></script>
		</section><!-- mapas -->

        <footer>
			<div class="item">
				<div>
					<img src="<?php echo base_url(); ?>/assets/site/images/atendimento-footer.png" alt="">
					<div class="redes-sociais">
						<h2>Nossas Redes Sociais</h2>
						<ul>							
		                    <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		                    <li><a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		                    <li><a href=""><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
		                </ul>
		            </div><!-- redes-sociais -->
		            <div class="endereco">
		            	<address>Av. Afonso Pena, 754 - Tirol, Natal - RN, 59020-100<br />(84) 4009-1000</address>
		            </div><!-- endereco -->
	            </div>
			</div><!-- item -->
			<div class="item">
				<div>
					<h2>receba as nossas<br /><span>novidades</span></h2>
					<form>
						<input type="text" placeholder="seu e-mail">
						<button>cadastrar <i class="fa fa-angle-right" aria-hidden="true"></i></button>
					</form>
				</div>
			</div><!-- item -->
        </footer>

        <script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/jquery.js'></script>
        <script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/bootstrap.min.js'></script>
        <script src="https://use.fontawesome.com/6963733f46.js"></script>
        <script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/owl.carousel.min.js'></script>
        <script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/lightbox.min.js'></script>
        <script type='text/javascript' src='<?php echo base_url(); ?>/assets/site/js/script.js'></script>
    </body>
</html>