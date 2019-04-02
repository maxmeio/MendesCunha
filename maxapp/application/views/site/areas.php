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