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