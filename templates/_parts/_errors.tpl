<?php 
	foreach ($errors as $error) {
		if ( count($error) == 1) {  ?>
			
			<!-- Однострочная ошибка -->
			<div class="notification__error mb-20">
				<?=$error['title']?>
			</div>

<?php 	} else if ( count($error) == 2 ) { ?>
			
<!-- Ошибка с описанием -->
			<div class="notification__error mb-20">
				<?=$error['title']?>
				<?=$error['desc']?>
			</div>
<?php 
		}
	}
 ?>