<form class="registration-form" method="POST" action="<?=HOST?>set-new-password">

	<?php if($newPasswordReady == false): ?>
		<h1 class="title-1 registration-form__caption">Введите новый пароль</h1>
	<?php endif ?>

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>	

	<?php if($newPasswordReady == false): ?>
		<div class="registration-form__password">
			<input name="resetpassword" class="input-text" type="password" placeholder="Новый пароль" />
		</div>
	<?php endif ?>

	<div class="password-remember-wrapper">
		<span>
			<a class="registration-form__password-recovery" href="<?=HOST?>login">Перейти на страницу входа</a>
		</span>
	</div>

	<div class="registration-form__button">
		<?php if($newPasswordReady == false): ?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input name="set-new-password" type="hidden" value="set-new-password" />

			<div class="registration-form__button">
				<input class="button button-enter button-small" type="submit" value="Восстановить пароль" name="lost-password" />
			</div>

		<?php endif ?>
	</div>

</form>

