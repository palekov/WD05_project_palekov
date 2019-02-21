<?php if ( $_GET['result'] == 'postCreated' ) { ?>
			<div class="notification__success mb-20" data-notify-hide>Новый пост добавлен!</div>
<?php }  ?>
<?php if ( $_GET['result'] == 'postDeleted' ) { ?>
			<div class="notification__error mb-20" data-notify-hide>Пост был удалён!</div>
<?php } ?>
<?php if ( $_GET['result'] == 'postUpdated' ) { ?>
			<div class="notification__notify mb-20" data-notify-hide>Пост был обновлён!</div>
<?php }  ?>