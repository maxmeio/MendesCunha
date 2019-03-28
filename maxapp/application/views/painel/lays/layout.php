<?php
	$this->CI =& get_instance();
	echo doctype('xhtml1-trans');

	$var_modules = array();
	foreach($this->CI->show_grupos() as $grupos)
	{
		foreach($grupos['modulos'] as $modules)
		{
			$var_modules[$grupos['id']][] = $modules['url'];
		}
	}
?>
<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<?php echo base_url('painel'); ?>" rel="<?php echo base_url(); ?>" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Painel | <?php echo $this->CI->config->item('titulo_sistema'); ?></title>
		<?php
			echo meta(array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1.0, shrink-to-fit=no'));
			echo meta(array('name' => 'robots', 'content' => 'noindex, nofollow'));
			echo meta(array('name' => 'author', 'content' => 'Maxmeio'));
			echo meta(array('name' => 'description', 'content' => 'no-cache'));
			echo meta('Content-type', 'text/html; charset=utf-8', 'equiv');
			
			//echo link_tag('https://cdn.rawgit.com/nizarmah/calendar-javascript-lib/master/calendarorganizer.min.css', 'stylesheet', '', '', '');
		/*plugins:css*/
			echo link_tag(base_url().'assets/painel/node_modules/mdi/css/materialdesignicons.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/simple-line-icons/css/simple-line-icons.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/flag-icon-css/css/flag-icon.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css', 'stylesheet', '', '', '');
		/*plugin css for this page*/
			echo link_tag(base_url().'assets/painel/node_modules/font-awesome/css/font-awesome.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/fontawesome-stars.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/fontawesome-stars-o.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-1to10.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-horizontal.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-movie.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-pill.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-reversed.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bars-square.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/bootstrap-stars.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/dist/themes/css-stars.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-bar-rating/examples/css/examples.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/jquery-toast-plugin/dist/jquery.toast.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/alertify/alertify.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/dropify/dist/css/dropify.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/icheck/skins/all.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/select2/dist/css/select2.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/fullcalendar/dist/fullcalendar.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/sweetalert2/dist/sweetalert2.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/select2-bootstrap-theme/dist/select2-bootstrap.min.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/summernote/dist/summernote-bs4.css', 'stylesheet', '', '', '');
			echo link_tag(base_url().'assets/painel/node_modules/bootstrap-tour/build/css/bootstrap-tour-standalone.min.css', 'stylesheet', '', '', '');
            echo link_tag(base_url()."assets/painel/node_modules/clockpicker/dist/jquery-clockpicker.min.css", 'stylesheet', '', '', '');
            echo link_tag(base_url()."assets/painel/node_modules/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css", 'stylesheet', '', '', '');
            echo link_tag(base_url()."assets/painel/node_modules/bootstrap-timepicker/timepicker.css", 'stylesheet', '', '', '');
		
			echo link_tag(base_url().'assets/painel/css/style.css?v=3', 'stylesheet', '', '', '');
		?>

		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery/dist/jquery.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/popper.js/dist/umd/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/perfect-scrollbar/dist/js/perfect-scrollbar.jquery.min.js"></script>
		<!-- #################### -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/chart.js/dist/Chart.min.js"></script>
		<script type="text/javascript" src='<?php echo base_url(); ?>assets/painel/node_modules/raphael/raphael.min.js'></script>
		<script type="text/javascript" src='<?php echo base_url(); ?>assets/painel/node_modules/morris.js/morris.min.js'></script>
		<script type="text/javascript" src='<?php echo base_url(); ?>assets/painel/node_modules/jquery-sparkline/jquery.sparkline.min.js'></script>
		<script type="text/javascript" src='<?php echo base_url(); ?>assets/painel/node_modules/datatables.net/js/jquery.dataTables.js'></script>
		<script type="text/javascript" src='<?php echo base_url(); ?>assets/painel/node_modules/datatables.net-bs4/js/dataTables.bootstrap4.js'></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/dropify/dist/js/dropify.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/bootstrap-tour/build/js/bootstrap-tour-standalone.min.js"></script>
        <script type="text/javascript" src="<?=base_url('assets/painel/node_modules/select2/dist/js/select2.min.js');?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/painel/node_modules/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js');?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/painel/node_modules/bootstrap-datepicker/dist/js/bootstrap-datepicker.pt-BR.js');?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/painel/node_modules/bootstrap-timepicker/bootstrap-timepicker.js');?>"></script>
        <script type="text/javascript" src="<?=base_url('assets/painel/node_modules/moment/min/moment.min.js');?>"></script>
		<!-- #################### -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/node_modules/alertify/jquery.alertify.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/off-canvas.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/hoverable-collapse.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/misc.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/settings.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/todolist.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/data-table.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/dropify.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/scripts/script-full.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/scripts/script-forms.js"></script>
		<script type='text/javascript' src='<?php echo base_url(); ?>assets/painel/js/dashboard.js'></script>

		<link rel="shortcut icon" href="<?=base_url('assets/painel/favicon.png');?>">
		<link rel="Favicon Icon" href="<?=base_url('assets/painel/favicon.png');?>">

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
	</head>
	<body>
		<div class="container-scroller">
			<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
					<a class="navbar-brand brand-logo" href="<?=site_url('/painel/home');?>"><img class="img-logo" src="<?php echo path_painel_assets('images/favicon.png'); ?>" alt="<?php echo $this->CI->config->item('titulo_sistema'); ?>"/></a>
					<a class="navbar-brand brand-logo-mini" href="<?=site_url('/painel/home');?>"><img src="<?php echo path_painel_assets('images/favicon.png'); ?>" alt="<?php echo $this->CI->config->item('titulo_sistema'); ?>"/></a>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-center">
					<button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
						<span class="icon-menu"></span>
					</button>
					<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
						<span class="icon-menu"></span>
					</button>
				</div>
			</nav>

			<div class="container-fluid page-body-wrapper">
				<div class="row row-offcanvas row-offcanvas-right">
					<!-- partial:partials/_sidebar.html -->
					<nav class="sidebar sidebar-offcanvas" id="sidebar" style="margin-top:20px;">
					  	<ul class="nav">
							<?php
								// core/MY_Controller.php
								foreach($this->CI->show_grupos() as $grupos)
								{
									if(in_array($this->CI->uri->segment(2), $var_modules[$grupos['id']])) {
										$active_in		=	"in";
										$colapsed		=	"";
										$styleheight	=	"style='height:auto;'";
									} else {
										$active_in		=	"";
										$colapsed		=	"collapsed";
										$styleheight	=	"style='height:0;'";										
									}
							?>									
							<li class="nav-item">
								<a class="nav-link" data-toggle="collapse" href="<?php echo "#" . $grupos['url']; ?>" aria-expanded="false" aria-controls="page-layouts">
									<i class="icon-list menu-icon"></i>
									<span class="menu-title"><?php echo ucfirst($grupos['titulo']); ?></span>
								</a>
								<div class="collapse" id="<?php echo $grupos['url']; ?>">
									<ul class="nav flex-column sub-menu">
										<?php
											foreach($grupos['modulos'] as $modules)
											{
												if(in_array($this->CI->uri->segment(2), $modules)) {
													$active	=	'active';
												} else {
													$active	=	NULL;
												}
												
												echo '<li class="nav-item d-none d-lg-block"> <a class="nav-link" href="'.site_url('painel/'.$modules['url']).'">'.$modules['titulo'].'</a></li>';
											}
										?>
									</ul>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<?=site_url('painel/logout');?>">
									<i class="icon-list menu-icon"></i>
									<span class="menu-title">Sair</span>
								</a>
							</li>
						<?php } ?>

					  	</ul>
					</nav>
        			<!-- partial -->
	        		<div class="content-wrapper">
	          			<?php echo $contents; ?>
	        		</div>
					<!-- content-wrapper ends -->
      			</div>
			</div>
		</div>
	</body>
</html>