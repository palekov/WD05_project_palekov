<div class="container user-content pt-80 pb-80">
	<?php if ( isAdmin() ): ?>
		<div class="row">
			<div class="col contacts-links">
				<div class="contacts-links__button">
					<a class="button button-edit" href="<?=HOST?>contacts-edit">Редактировать</a>
				</div>
				<div class="contacts-links__button">
					<a class="button" href="<?=HOST?>messages">Сообщения</a>
				</div>
			</div>
		</div>	
	<?php endif ?>
	<div class="row">
		<div class="col-md-6 contacts">
			<div class="contacts__title">Контакты </div>

					<div class="row">
						<div class="col-4 contacts__name">Имя</div>
							<div class="col-6 contacts__value contacts__value--link">
								<?=$contacts['name']?>
							</div>
					</div>

					<div class="row">
						<div class="col-4 contacts__name">Фамилия</div>
							<div class="col-6 contacts__value contacts__value--link">
								<?=$contacts['surname']?>
							</div>
					</div>

				<?php if ( @$contacts['email'] != "" ) { ?>
					<div class="row">
						<div class="col-4 contacts__name">Email</div>
							<div class="col-6 contacts__value contacts__value--link">
								<a href="mailto:<?=$contacts['email']?>" target="_blank"><?=$contacts['email']?></a>
							</div>
					</div>
				<?php }?>
				<?php if ( @$contacts['skype'] != "" ) { ?>
					<div class="row">
						<div class="col-4 contacts__name">Skype</div>
							<div class="col-6 contacts__value contacts__value--link">
								<a target="_blank" class="contacts__value--link" href="<?=$contacts['skype']?>?chat"><?=$contacts['skype']?></a>
							</div>
					</div>
				<?php }?>
				<?php if ( @$contacts['github'] != "" ) { ?>
					<div class="row">
						<div class="col-4 contacts__name">Github</div>
							<div class="col-6 contacts__value contacts__value--link">
								<a target="_blank" class="contacts__value--link" href="<?=$contacts['github']?>"><?=$contacts['github']?></a>
							</div>
					</div>
				<?php }?>
			<?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ) { ?>
				<div class="row">
					<div class="col-4 contacts__name">Социальные сети</div>
					<div class="col-6 contacts__value">
						<?php if ( @$contacts['vk'] != "" ) { ?>
							<div class="contacts__value--bold-link">
								<a target="_blank" href="<?=$contacts['vk']?>">Профиль Вконтакте</a>
							</div>
						<?php }?>

						<?php if ( @$contacts['fb'] != "" ) { ?>
							<div class="contacts__value--bold-link">
								<a target="_blank" href="<?=$contacts['fb']?>">Профиль Facebook</a>
							</div>
						<?php }?>

						<?php if ( @$contacts['twitter'] != "" ) { ?>
							<div class="contacts__value--bold-link">
								<a target="_blank" href="<?=$contacts['twitter']?>">Профиль Twitter</a>
							</div>
						<?php }?>
					</div>
				</div>
			<?php } ?>
					<?php if ( @$contacts['phone'] != "" ) { ?>
						<div class="row mt-15">
							<div class="col-4 contacts__name">Телефон</div>
								<div class="col-6 contacts__value mb-10"><?=$contacts['phone']?></div>
						</div>
					<?php }?>
				<?php if ( @$contacts['address'] != "" ) { ?>
					<div class="row">
						<div class="col-4 contacts__name">Адрес</div>
							<div class="col-6 contacts__value"><?=$contacts['address']?></div>
					</div>
				<?php }?>
		</div>

		<div class="col-md-4">
			<form id="formComment" enctype="multipart/form-data" class="form-contact" method="POST" action="<?=HOST?>contacts">
				<div class="form-contact__title">Связаться со мной</div>
				<div class="notification__error hidden mb-10" data-error-notifyname>Введите Имя!</div>
				<div class="notification__error hidden mb-10" data-error-notifyemail>Введите Email!</div>
				<div class="notification__error hidden" data-error-notifymessage>Сообщение не может быть пустым!</div>

				<?php require ROOT . "templates/_parts/_errors.tpl"?>
				<?php require ROOT . "templates/_parts/_success.tpl"?>

				<div class="form-contact__name">
					<input name="name" class="input-text" type="text" placeholder="Введите имя" id="emptyname">
				</div>
				<div class="form-contact__email">
					<input name="email" class="input-text" type="email" placeholder="Email" id="emptyemail">
				</div>
				<div class="form-contact__message">
					<textarea name="message" class="textarea" type="text" placeholder="Сообщение" id="emptymessage"></textarea>
				</div>
				<div class="form-contact__load-file">
					<div class="load-file-title">Прикрепить файл </div>
					<div class="load-file-opis">jpg, png, pdf, doc, размером до 4Мб.</div>
					<div class="load-file-fieldset">
						<input class="inputfile inputfile-rad" id="file" type="file" name="file">
						<label for="file">Выбрать файл</label>
						<span>Файл не выбран</span>
					</div>
				</div>
				<div class="form-contact__save">
					<input class="button button-save" type="submit" value="Отправить" name="newMessage">
				</div>
			</form>
		</div>
	</div>
</div>
