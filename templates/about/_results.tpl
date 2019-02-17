<?php if ( $_GET['result'] == 'jobsDeleted' ) { ?>
			<div class="notification__error mb-20" data-notify-hide>Информация была удалена!</div>
<?php } ?>
<?php if ( $_GET['result'] == 'postCreated' ) { ?>
			<div class="notification__notify mb-20" data-notify-hide>Информация добавлена!</div>
<?php }  ?>
<?php if ( $_GET['result'] == 'postUpdated' ) { ?>
			<div class="notification__notify mb-20" data-notify-hide>Информация обновлена!</div>
<?php }  ?>