<?php
include("includes/includedFiles.php");
?>

<h1 class="pageHeadingBig">Upload Song</h1>

<div class="userDetails">
	<div class="container">
		<div>
			<label for="nombresong">Name Song</label>
			<input type="text" id="nombresong" name="song_name" placeholder="Ingrese su nombre de la Canción" required>
		</div>
		<div>
			<label for="nameartist">Artist</label>
			<input type="text" id="nameartist" name="artist_name" placeholder="Ingrese Artist" required>
		</div>
		<div>
			<label for="genre">Genre</label>
			<select name='song_genre' id='genre' required>
				<option value="">Selecciona una categoría</option>
				<?php
				$query_categoria=mysqli_query($con,"select * from genres order by name");
						while($rw=mysqli_fetch_array($query_categoria))	{
				?>
				<option value="<?php echo $rw['id'];?>"><?php echo $rw['name'];?></option>
				<?php
				}
				?>
			</select>
		</div>

		<div>
			<label for="album">Album</label>
			<select name='album' id='album' required>
				<option value="">Selecciona un album</option>
				<?php
				$query_categoria=mysqli_query($con,"select * from albums order by title");
						while($rw=mysqli_fetch_array($query_categoria))	{
				?>
				<option value="<?php echo $rw['id'];?>"><?php echo $rw['title'];?></option>
				<?php
				}
				?>
			</select>
		</div>
		
		<div>
			<label for="song">File</label>
			<input type="file" name="song" id="song">
		</div>

		<div>
			<button class="button" onclick="updateSong('song')">SAVE</button>
		</div>

	</div>
</div>