<?php
include("includes/includedFiles.php");
?>
<div class="userDetails">
	<div class="container borderBottom">
		<h2>UPDATE EMAIL</h2>
		<input type="text" class="email" name="email" placeholder="Email address..." value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button" onclick="updateEmail('email')">SAVE</button>
	</div>
	<div class="container borderBottom">
		<h2>UPDATE PASSWORD</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Current password">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="New password">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Confirm password">
		<span class="message"></span>
		<button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">SAVE</button>
	</div>
	<div class="container">

					<form method="post" enctype="multipart/form-data" id="formEditarPerfil" >
							<div class="form-group">
								<label for="nombre">Foto de Perfil</label>
								<input type="file" class="form-control" id="foto" name="foto" placeholder="Seleccione su foto" >
							</div>
						<div>
							<span class="messageasd"></span>
							<button class="button" type="submit" id="btnEditarUser">SAVE</button>
						</div>
					</form>

		<script type="text/javascript">
			$(document).ready(function() {
			$("#formEditarPerfil").on('submit', function(e)
			{
				e.preventDefault();
				$.ajax({
						type: 'POST',
						url: 'includes/handlers/ajax/uploadAvatar.php',
						data: new FormData(this),
						contentType: false,
						cache: false,
						processData:false,
						beforeSend: function()
						{
							$('#btnEditarUser').attr("disabled","disabled");
						},
						success: function(msg){
								$('.messageasd').html(msg);
								$('#formEditarPerfil').css("opacity","");
								$("#btnEditarUser").removeAttr("disabled");
								setTimeout(function()
							{
						location.reload();
					}, 500);
								
						}
				});
			});
			});
		</script>

<!-- 		<form method="POST" id="fupForm" enctype="multipart/form-data">
			<div class="form-group">
				<h2>UPDATE AVATAR</h2>
				<input type="file" name="foto" id="foto" required>
				<span class="message"></span>
			</div>
			<button type="submit" class="button">Guardar Cambios</button> -->
			<!-- <button class="button" onclick="updateAvatar('this')">SAVE</button> -->
		<!-- </form> -->
		<!-- <button class="button" onclick="updateAvatar('foto')">SAVE</button> -->
	</div>
</div>