<div class="container user-content pt-80 pb-120">
	<div class="row">
		<div class="col-md-10 offset-md-1">
			<?php if ( isset($_GET['result']) ) {
				include ROOT . "templates/contacts/_results.tpl";
			} ?>
			<div class="title-1">Сообщения от посетителей</div>
				<?php foreach ($messages as $message => $value): ?>
						<?php include ROOT . "templates/contacts/message-card.tpl";?>
				<?php endforeach ?>			
		</div>
	</div>
</div>