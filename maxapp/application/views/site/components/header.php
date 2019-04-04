<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Mendes Cunha</title>

    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">

    <link rel='stylesheet' href='assets/css/bootstrap.min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/hover-min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/owl.carousel.min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/style.css' type='text/css' />
    <link rel='stylesheet' href='assets/js/jquery-toast-plugin/src/jquery.toast.css' type='text/css' />
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
                        <a class="navbar-brand" href="index.php"><img class="logo" src="assets/images/logo-mendes-cunha.png" alt="Logo" /></a>
                    </div><!-- .navbar-header -->

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="home">HOME</a></li>
                            <li><a href="institucional">INSTITUCIONAL</a></li>
                            <li><a href="equipe">EQUIPE</a></li>
                            <li><a href="decisoes">DECISÕES</a></li>
                            <li><a href="areas">ÁREAS DE ATUAÇÃO</a>
                                <ul>
                                    <?php
                                        if(count($areas) > 0) {
                                            foreach($areas as $items) {
                                                ?>
                                                <li><a href=""><?php echo $items["titulo"]; ?></a></li>
                                    <?php           
                                            }
                                        } 
                                    ?>
                                </ul>
                            </li>
                            <li><a href="noticias">NOTÍCIAS</a></li>
                            <li><a href="contato">CONTATO</a></li>
                            <li class="search"><a href=""><i class="fa fa-search"></i></a></li>
                        </ul><!-- .nav -->
                    </div><!-- .navbar-collapse -->
                </div><!-- container -->
            </nav><!-- .navbar -->
        </div><!-- .nav -->
    </header>