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