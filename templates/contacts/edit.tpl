<?php 

	function dataFormPost($fieldName){
		global $contacts;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $contacts[$fieldName];
	}

?>

<div class="container user-content pt-70">
	<h1 class="title-1">Редактировать данные</h1>
	<?php require ROOT . "templates/_parts/_errors.tpl"?>
	<form class="contacts-edit-form" method="POST" action="<?=HOST?>contacts-edit">
		<div class="row contacts-edit-form__row">
			<div class="col-md-3">				
				<label class="label">Имя
					<input class="input-text" type="text" placeholder="Введите имя" name="name" value="<?php dataFormPost("name"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Фамилия
					<input class="input-text" type="text" placeholder="Введите фамилию" name="surname" 
						value="<?php dataFormPost("surname"); ?>">
				</label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3">
				<label class="label">Email
					<input class="input-text" type="email" placeholder="Введите email" name="email" value="<?php dataFormPost("email"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Skype
					<input class="input-text" type="text" placeholder="Введите skype" name="skype" value="<?php dataFormPost("skype"); ?>">
				</label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3">
				<label class="label">Вконтакте
					<input class="input-text" type="text" placeholder="Введите ссылку на профиль" name="vkontakte" value="<?php dataFormPost("vk"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Facebook
					<input class="input-text" type="text" placeholder="Введите ссылку на профиль" name="facebook" value="<?php dataFormPost("fb"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Github
					<input class="input-text" type="text" placeholder="Введите ссылку на профиль" name="github" value="<?php dataFormPost("github"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Twitter
					<input class="input-text" type="text" placeholder="Введите ссылку на профиль" name="twitter" value="<?php dataFormPost("twitter"); ?>">
				</label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="col-md-3">
				<label class="label">Телефон
					<input class="input-text" type="text" placeholder="Введите телефон" name="phone" value="<?php dataFormPost("phone"); ?>">
				</label>
			</div>
			<div class="col-md-3">
				<label class="label">Адрес
					<input class="input-text" type="text" placeholder="Введите адрес" name="address" value="<?php dataFormPost("address"); ?>">
				</label>
			</div>
		</div>
		<div class="row contacts-edit-form__row">
			<div class="form-button-save">
				<input class="button button-save" type="submit" value="Сохранить" name="contactsUpdate">
			</div>
			<div class="form-button-cancel">
				<a href="<?=HOST?>contacts" class="button">Отмена</a>
			</div>
		</div>
	</form>
</div>