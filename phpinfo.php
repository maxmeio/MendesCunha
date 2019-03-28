<?php
 if(!function_exists('apache_get_modules') ){ phpinfo(); exit; }
 $res = 'Module Unavailable';
 if(array_key_exists('HTTP_MOD_REWRITE', $_SERVER)) 
 $res = 'Module Available';
?>
<html>
<head>
<title>A mod_rewrite availability check !</title></head>
<body>
<p><?php echo apache_get_version(),"</p><p>mod_rewrite $res"; ?></p>
</body>
</html>