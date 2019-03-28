<div class="container-scroller">
	<div class="container-fluid page-body-wrapper">
	  <div class="row">
		<div class="content-wrapper full-page-wrapper d-flex align-items-center auth">
		  <div class="row w-100">
			<div class="col-lg-8 mx-auto">
			  <div class="row">
				<div class="col-lg-6 bg-white">
				  <div class="auth-form-light text-left p-5">
					<h2>Acesse sua conta</h2>
					<form class="pt-5" id="frm-login" onSubmit="return false;">
					  <form>
						<div class="form-group">
						  <label for="username">Usuário</label>
						  <input type="username" class="form-control" name="username" id="username" aria-describedby="usernameHelp" placeholder="Usuário">
						  <i class="mdi mdi-account"></i>
						</div>
						<div class="form-group">
						  <label for="password">Senha</label>
						  <input type="password" name="password" class="form-control" id="password" placeholder="Senha">
						  <i class="mdi mdi-eye"></i>
						</div>
						<div class="form-group">
						  <button class="btn btn-block btn-success btn-lg font-weight-medium" type="submit">Entrar</button>
						</div>
						<div class="mt-3 text-center">
							<a href="<?=base_url('painel/forget');?>" class="auth-link text-black">Esqueceu a senha?</a>
						</div>
					  </form>                  
					</form>
				  </div>
				</div>
				<div class="col-lg-6 login-half-bg d-flex flex-row">
				  <p class="text-white font-weight-medium text-center flex-grow align-self-end">Copyright &copy; 2018  All rights reserved.</p>
				</div>
			  </div>
			</div>
		  </div>
		</div>
		<!-- content-wrapper ends -->
	  </div>
	  <!-- row ends -->
	</div>
	<!-- page-body-wrapper ends -->
  </div>
<div style="text-align:center">
	<p>Desenvolvimento <a href="http://www.maxmeio.com/" target="_blank">Maxmeio</a></p>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/painel/js/form-validation.js"></script>