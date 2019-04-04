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

                        <a href="membro/<?php echo $items["oid"]; ?>">VER MAIS</a>
                    </div>
            <?php           
                    }
                } 
            ?>

        </div>
    </div>
</section>