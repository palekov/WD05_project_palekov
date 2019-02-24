	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Удалить сообщение</div>
				<p>
					<strong>Вы действительно хотите удалить пост</strong> 							
							c id = <?=$msg['id']?> ?
				</p>
					<div class="message-delete-wrap">
						<div class="post-add-form__name">
							<div class="mb-20">
								<div class="message">
									<div class="message-container">
										<div class="message-wrap">										
											<div class="message-date">
												<? echo rus_date("j F Y H:i", strtotime($msg['date_time']) ); ?>
						
											</div>
										</div>
										<div class="message-author">
											<div class="message-author--name"><?=$msg['name']?></div>
											<a class="message-author--email" href="mailto:<?=$msg->email?>" target="_blank"><?=$msg->email?></a>
										</div>
										<?php if ($msg->message != ""): ?>
											<div class="message-text">
												<p><?=$msg->message?></p>
											</div>
										<?php endif ?>
										<?php if ($msg->message_file != ""): ?>
											<div class="message-files">
												<div class="message-files--title">Прикрепленные файлы:</div>
												<a class="message-files--list" target="_blank" href="<?=HOST?>usercontent/upload_files/<?=$msg->message_file?>"><?=$msg->message_file_name_original?></a>
											</div>
										<?php endif ?>
									</div>
								</div>					
							</div>						
						</div>
					</div>

				<form action="<?=HOST?>messages-delete?id=<?=$msg['id']?>" method="POST"  class="post-add-form">
					<div class="post-add-form-button">
						<input class="button button-delete" type="submit" value="Удалить" name="messageDelete" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>messages">Отмена</a>
							<!-- <input class="button" type="reset" name="cansel" value="Отмена" /> -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>