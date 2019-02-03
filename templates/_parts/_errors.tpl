<?php 

	// echo "<pre>";
	// print_r($errors);
	// echo "</pre>";


	foreach ($errors as $error) {
		if ( count($error) == 1) {  ?>
			
			<!-- Однострочная ошибка -->
			<div class="notification__error mb-20"><?=$error['title']?></div>

<?php 	} else if ( count($error) == 2 ) { ?>
			
			<!-- Ошибка с описанием -->
			<div class="notification__error mb-20"><?=$error['title']?></div>
			<div class="notification__error mb-20">
				<?=$error['desc']?>
			</div>

<?php 
		}
	}
 ?>