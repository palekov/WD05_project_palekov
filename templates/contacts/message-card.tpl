<div class="mb-20">
	<div class="message">
		<div class="message-container">
			<div class="message-wrap">
				<div class="delete">					
					<a class="button button-delete button-small" href="<?=HOST?>messages-delete?id=<?=$value['id']?>">Удалить</a>
				</div>
				<div class="message-date">
					<? echo rus_date("j F Y H:i", strtotime($value['date_time']) ); ?>
				
				</div>
			</div>
			<div class="message-author">
				<div class="message-author--name"><?=$value['name']?></div>
				<a class="message-author--email" href="mailto:<?=$value->email?>" target="_blank"><?=$value->email?></a>
			</div>
			<?php if ($value->message != ""): ?>
				<div class="message-text">
					<p><?=$value->message?></p>
				</div>
			<?php endif ?>
			<?php if ($value->message_file != ""): ?>
				<div class="message-files">
					<div class="message-files--title">Прикрепленные файлы:</div>
					<a class="message-files--list" target="_blank" href="<?=HOST?>usercontent/upload_files/<?=$value->message_file?>"><?=$value->message_file_name_original?></a>
				</div>
			<?php endif ?>
		</div>
	</div>					
</div>