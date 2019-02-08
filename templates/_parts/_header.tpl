<?php

	if (isAdmin()) {
		include ROOT . "templates/_parts/_admin-panel.tpl";
	}

?>

		<div class="header">
			<div class="header__left-side">

				<?php include( ROOT . "templates/_parts/_header-logo.tpl");  ?>
				
				<?php include( ROOT . "templates/_parts/_header-nav.tpl");  ?>

			</div>

			<?php
				if (isset($_SESSION['logged_user']) && $_SESSION['login'] == 1) {
					// --- Пользователь на сайте ---
					if ($_SESSION['role'] != 'admin')  {
						// --- Пользователь на сайте не-админ ---
						include( ROOT . "templates/_parts/_header-user-profile.tpl");
					}
				} else {
					// --- нет пользователя ---
					include( ROOT . "templates/_parts/_header-user-login.tpl");
				}
				
			?>

			<?php //include( ROOT . "templates/_parts/_header-user-login.tpl");  ?>
			<?php //include( ROOT . "templates/_parts/_header-user-profile.tpl");  ?>


		</div>