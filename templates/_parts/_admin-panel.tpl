		<div class="admin-panel">
			<div class="admin-panel-user">
				<div class="avatar">
					<?php if ($_SESSION['logged_user']['avatar_small'] != "")  {  ?>
						<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="avatar-small" />
					<?php  } ?>
				</div>
				<div class="admin-panel-user-wrap">
					<div class="admin-panel-user-wrap__name"><?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['surname']?></div>
					<a class="badge" href="<?=HOST?>profile">Администратор</a>
				</div>
			</div>
			<nav class="admin-panel-menu">
				<a class="admin-panel-menu__link" href="<?=HOST?>blog/post-new">
					<i class="fas fa-plus-circle admin-panel-menu__icon"></i>
				Пост</a>
				<a class="admin-panel-menu__link" href="<?=HOST?>blog/categories">
					<i class="fas fa-folder admin-panel-menu__icon"></i>
				Категории</a>
			<!--	<a class="admin-panel-menu__link" href="works-add.html">
					<i class="fas fa-plus-circle admin-panel-menu__icon"></i>
				Работа</a>  -->
				<a class="admin-panel-menu__link" href="<?=HOST?>about">
					<i class="fas fa-edit admin-panel-menu__icon"></i>
				Обо мне</a>
				<a class="admin-panel-menu__link" href="<?=HOST?>contacts">
					<i class="fas fa-edit admin-panel-menu__icon"></i>
				Контакты</a>
				<a class="admin-panel-menu__link" href="<?=HOST?>messages">
					<i class="fas fa-envelope admin-panel-menu__icon"></i>
				Сообщения</a>
			</nav>

			<div class="admin-panel-sign-out">
				<a class="admin-panel-sign-out__link" href="<?=HOST?>logout">
					<i class="fas fa-sign-out-alt admin-panel-menu__icon"></i>
				Выход
			</a>
			</div>
		</div>