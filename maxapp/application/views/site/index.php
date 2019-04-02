<section class="vitrine">
    <div class="owl-carousel owl-theme owl-vitrine">
        <a class="item" href=""><img src="assets/images/foto-slide.jpg" alt=""></a>
    </div>
</section>

<section id="areas-anc" class="atuacao">
    <div class="container">
        <h2>Áreas de <strong>Atuação</strong></h2>
        <div class="items">

            <?php
                if(count($areas) > 0) {
                    foreach($areas as $items) {
                        ?>

                    <div class="item">
                        <img src="<?php echo base_url('_ups/areas').'/'.$items["folder"].'/'.$items["arquivo"]; ?>" style="width: 60px; height: 60px;">
                        <h3><?php echo $items["titulo"]; ?></h3>
                        <p><?php echo $items["descricao"]; ?></p>
                        <a href="">VER MAIS</a>
                    </div>

            <?php           
                    }
                } 
            ?>
        </div>
    </div>
</section>

<section id="noticias-anc" class="noticias">
    <div class="container">
        <h2>Notícias</h2>
        <div class="owl-carousel owl-theme owl-noticias">

            <?php
                if(count($noticias) > 0) {
                    foreach($noticias as $items) {
                        ?>

                    <div class="item">
                        <img src="<?php echo base_url('_ups/noticias').'/'.$items["folder"].'/'.$items["arquivo"]; ?>" alt="">
                        <div class="texto-noticia">
                            <h4><?php echo $items["titulo"]; ?></h4>
                            <p><?php echo $items["conteudo"]; ?></p>
                        </div>
                    </div>

            <?php           
                    }
                } 
            ?>
        </div>
        <a class="btn-geral" href="">VER TODAS</a>
    </div>
</section>

<section id="equipe-anc" class="equipe">
    <div class="container">
        <h2>Equipe</h2>
        <div class="owl-carousel owl-theme owl-equipe">

            <?php
                if(count($equipe) > 0) {
                    foreach($equipe as $items) {
                        ?>

                    <div class="item">
                        <img src="<?php echo base_url('_ups/equipe').'/'.$items["folder"].'/'.$items["arquivo"]; ?>" alt="">
                        <div class="texto-equipe">
                            <h4><?php echo $items["nome"]; ?></h4>
                            <p><?php echo $items["oab"]; ?></p>
                        </div>
                    </div>
            <?php           
                    }
                } 
            ?>

        </div>
    </div>
</section>

<section id="decisoes-anc" class="decisoes">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="bloco-decisoes">
                    <h2>Decisões</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vulputate nisl vel euismod pellentesque. Donec vehiculasve</p>
                    <a class="btn-geral" href="">VER TODAS</a>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="owl-carousel owl-theme owl-decisoes">
                    <?php
                        if(count($decisoes) > 0) {
                            foreach($decisoes as $items) {
                                ?>

                            <div class="item">
                                <p><?php echo $items["empresa"]; ?></p>
                                <h2><?php echo $items["pessoa"]; ?></h2>
                                <?php echo $items["descricao"]; ?>
                                <img src="<?php echo base_url('_ups/decisoes').'/'.$items["folder"].'/'.$items["arquivo"]; ?>" alt="">
                            </div>
                    <?php           
                            }
                        } 
                    ?>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="redes-sociais">
<div class="container">
    <div class="row">
        <h2>Redes Sociais</h2>
        <div class="col-sm-4">
            <a class="twitter-timeline" data-height="512" href="https://twitter.com/mendescunha?ref_src=twsrc%5Etfw">Tweets by mendescunha</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
        <div class="col-sm-4">
            <a class="twitter-timeline"  data-height="512" href="https://twitter.com/mendescunha?ref_src=twsrc%5Etfw">Tweets by mendescunha</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
        <div class="col-sm-4">
            <div class="fb-page" data-href="https://www.facebook.com/MendesCunha" data-tabs="timeline" data-height="370" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/MendesCunha" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/MendesCunha">Mendes Cunha Advogados</a></blockquote></div>
        </div>
    </div>
</div>  
</section>

<section class="newsletter">
    <div class="container">
        <div class="area-news">
            <div class="novidades">
                <h3>Receba nossas novidades no seu e-mail</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>

            <form id="frm-newsletter" class="form" method="post">
                <input type="text" name="email" class="form-control email-news" id="email-news" placeholder="Digite seu e-mail aqui">
                <button type="submit" class="btn-geral">ENVIAR</button>
            </form>
        </div>
    </div>
</section>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v3.2"></script>
