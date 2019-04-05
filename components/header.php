<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Base</title>

    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">

    <link rel='stylesheet' href='assets/css/bootstrap.min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/hover-min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/owl.carousel.min.css' type='text/css' />
    <link rel='stylesheet' href='assets/css/style.css' type='text/css' />
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
                            <li><a href="">HOME</a></li>
                            <li><a href="institucional.php">INSTITUCIONAL</a></li>
                            <li><a href="">EQUIPE</a></li>
                            <li><a href="">DECISÕES</a></li>
                            <li><a href="">ÁREAS DE ATUAÇÃO</a>
                                <ul>
                                    <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Direito Civil</a></li>
                                    <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Direito Empresarial</a></li>
                                    <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Direito imobiliário</a></li>
                                    <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Direito trabalhista</a></li>
                                    <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>Direito providenciário</a></li>
                                </ul>
                            </li>
                            <li><a href="">NOTÍCIAS</a></li>
                            <li><a href="">CONTATO</a></li>
                            <li class="search"><a href="javascript:;" data-toggle="modal" data-target="#myModal"><i class="fa fa-search"></i></a></li>
                        </ul><!-- .nav -->
                    </div><!-- .navbar-collapse -->
                </div><!-- container -->
            </nav><!-- .navbar -->
        </div><!-- .nav -->
    </header>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div><!-- modal-header -->
                <div class="modal-body">
                    <form action="/noticias" method="get">
                        <div class="form-group">
                            <label>O que voce busca?</label>
                            <input type="text" name="keywords" class="form-control">
                            <button type="submit" class="right btn btn-warning">Enviar</button>
                        </div><!-- form-group -->
                    </form>
                </div><!-- modal-body -->
            </div><!-- modal-content -->
        </div><!-- modal-dialog -->
    </div><!-- modal -->
