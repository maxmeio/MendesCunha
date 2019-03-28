<?php
	$this->CI =& get_instance();
?>
	
<div class="usuario-index d-block d-md-none">
	<div class="profile-image">
		<?php if(session('folder')){ ?>
			<img src="<?=base_url('_ups/'.session('modulo').'/'.session('folder').'/'.session('arquivo'));?>" alt="<?php echo session("nome"); ?>"/>
		<?php }else{ ?>
			<img src="<?=base_url('assets/painel/images/faces/face_1.png');?>"/>
		<?php } ?>
		<span class="online-status online"></span> <!--change class online to offline or busy as needed-->
	</div>
	<div class="profile-name">
		<p class="name">
			<?php echo session("nome"); ?>
		</p>
		<?php if(session("tipo_user") == 2){ ?>
			<p class="designation">
				<?=$array_nivel[session('nivel')];?>
			</p>
		<?php }else if(session("tipo_user") == 1){ ?>
			<p class="designation">
				Tutor
			</p>
		<?php } ?>
	</div>
</div><!-- usuario-index -->

<div class="lista-tutorial d-block d-md-none">
	<ul>
		<li>
			<h2>2</h2>
			<div class="dados">
				<h4>Classes have been scheduled</h4>
				<p>The next will be on Aug 5</p>
			</div><!-- dados -->
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</li>
		<li>
			<h2>8</h2>
			<div class="dados">
				<h4>Credits Available</h4>
				<p>Expire on Sep 15 - 10 days remaining</p>
			</div><!-- dados -->
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</li>
		<li>
			<h2>5</h2>
			<div class="dados">
				<h4>Homeworks - Flashcards</h4>
				<p>Check the flashcards now</p>
			</div><!-- dados -->
			<i class="fa fa-angle-right" aria-hidden="true"></i>
		</li>
	</ul>
	<div class="botoes-bottom">
		<a href="">Buy Classes</a>
		<a href="">Schedule Classes</a>
	</div><!-- botoes-bottom -->
</div><!-- lista-tutorial -->