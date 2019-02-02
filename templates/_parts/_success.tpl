<?php 
	foreach ($success as $item) {
		if ( count($item) == 1) {  ?>
			
			<!-- Однострочная ошибка -->
			<div class="notification__error error--success mb-20"><?=$item['title']?></div>

<?php 	} else if ( count($item) == 2 ) { ?>
			
			<!-- Ошибка с описанием -->
			<div class="notification__error error--success mb-20"><?=$item['title']?></div>
			<div class="notification__error error--success mb-20">
				<?=$item['desc']?>
			</div>

<?php 
		}
	}
 ?>