<center>
<table width="700" border="1" cellpadding="0" cellspacing="0" style="border: 1px #00508f solid; border-collapse: collapse;">
  <tr>
	<td style="padding: 5px;" bgcolor="#FFF" style="border: 0 !important; bordercolor: #FFF;"  width="210" align="center" ></td>
	<td width="480" align="center" bgcolor="#00508f" style=" padding: 15px; font-family: Verdana, Geneva, sans-serif; color: #FFF; font-weight: bold;">CONTATO - MENDES CUNHA</td>
  </tr>
  <tr>
	<td colspan="2" style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  Olá,
	  <br /><br />Esta é uma mensagem automática para notificar um contato - MENDES CUNHA.
	  <br /><br />
	</td>
  </tr>
  <tr>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  Nome:
	</td>
	<td style="padding: 20px; font-family: Arial; color: #666; text-align: justify;">
	  <?php echo $row['nome']; ?>
	</td>
  </tr>
  <tr>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  E-mail:
	</td>
	<td style="padding: 20px; font-family: Arial; color: #666; text-align: justify;">
	  <?php echo $row['email']; ?>
	</td>
  </tr>
  <tr>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  Telefone:
	</td>
	<td style="padding: 20px; font-family: Arial; color: #666; text-align: justify;">
	  <?php echo $row['telefone']; ?>
	</td>
  </tr>
  <tr>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  Mensagem:
	</td>
	<td style="padding: 20px; font-family: Arial; color: #666; text-align: justify;">
	  <?php echo $row['mensagem']; ?>
	</td>
  </tr>
   <tr>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  INFO
	</td>
	<td style="padding: 20px; font-family: Arial; color: #666; font-weight: bold; text-align: justify;">
	  Enviado em <?=date('d/m/Y');?> - <?=date("H:i:s");?>
	</td>
   </tr>
   <tr>
	<td bgcolor="#00508f" colspan="2" style="padding: 10px; font-family: Arial; color: #FFF; font-weight: bold; text-align: center;">MAXMEIO</td>
   </tr>
  </table>
</center>