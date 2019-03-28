<?php
	$this->CI =& get_instance();
	echo doctype('xhtml1-trans');
?>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Painel | Hospital Rio Grande<?php //echo $this->CI->config->item('titulo_sistema', 'settings'); ?></title>
		<?php
			echo meta(array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1.0'));
			echo meta(array('name' => 'robots', 'content' => 'noindex, nofollow'));
			echo meta(array('name' => 'author', 'content' => 'Maxmeio'));
			echo meta(array('name' => 'description', 'content' => 'no-cache'));
			echo meta('Content-type', 'text/html; charset=utf-8', 'equiv');

			echo link_tag(base_url().'assets/painel/node_modules/mdi/css/materialdesignicons.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/simple-line-icons/css/simple-line-icons.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/flag-icon-css/css/flag-icon.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css', 'stylesheet', '', '', '');
		/*plugin css for this page*/
			echo link_tag(base_url().'assets/painel/node_modules/font-awesome/css/font-awesome.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-toast-plugin/dist/jquery.toast.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/fontawesome-stars.css', 'stylesheet', '', '', '');
		
			echo link_tag(base_url().'assets/painel/css/style.css', 'stylesheet', '', '', '');
		?>

		<link rel="shortcut icon" href="<?=base_url('assets/painel/favicon.png');?>">
		<link rel="Favicon Icon" href="<?=base_url('assets/painel/favicon.png');?>">
		
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery/dist/jquery.min.js"></script>
  		<script src="<?php echo base_url(); ?>assets/painel/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
	</head>
	<body>
		<div id="wrap">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="row-fluid">
							<?php echo $contents; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/popper.js/dist/umd/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/perfect-scrollbar/dist/js/perfect-scrollbar.jquery.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
		<!-- #################### -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/off-canvas.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/hoverable-collapse.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/misc.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/settings.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/todolist.js"></script>
		<script type='text/javascript' src='<?php echo base_url(); ?>assets/painel/js/scripts/login.js'></script>
		<script type='text/javascript' src='<?php echo base_url(); ?>assets/painel/js/scripts/cadastro.js'></script>
	</body>
</html>