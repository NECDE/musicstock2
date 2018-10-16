<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<!-- <img src="assets/images/icons/logo.png"> -->
			 <img src="<?php echo $userLoggedIn->getAvatar(); ?>" alt="" class="rounded-circle float-right" style="height: 30px; width: 30px;" >
		</span>

		<div class="group">

			<div class="navItem">
				<span role='link' tabindex='0' 
					onclick="openPage('search.php')" class="navItemLink">
					Search
					<img src="assets/images/icons/search.png" class="icon" alt="Search">
				</span>
			</div>

		</div>

		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">Browse
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink">Your Music
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php echo $userLoggedIn->getUsername(); ?>
				<!-- getFirstAndLastName -->
				</span>
			</div>
		</div>

		<div class="uploadSong">
				<span role="link" tabindex="0" onclick="openPage('uploadSong.php')" class="navItemLink">Upload Song
				</span>
		</div>

	</nav>
</div>