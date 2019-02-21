<form class="registration-form" method="POST" action="<?=HOST?>login" novalidate>

	<h1 class="title-1 registration-form__caption">Вход на сайт</h1>

		<div class="notification">

			<div id="enterEmail" class="notification__title notification--error mb-10 hidden">Введите e-mail</div>
			<div id="invalidEmail" class="notification__title notification--error mb-10 hidden">Неверный формат email</div>
			<div id="enterPassword" class="notification__title notification--error mb-10 hidden">Введите пароль</div>

			<?php require ROOT . "templates/_parts/_errors.tpl" ?>
			
		</div>

		<input name="email" class="input-text registration-form__email" type="email" placeholder="E-mail" value="info@mail.com" />

	<div class="registration-form__password">
		<input name="password" class="input-text" type="password" placeholder="Пароль" value="123456" />
	</div>

	<div class="password-remember-wrapper">
		<div class="registration-form__remember"><label class="form-label"><input class="form-input-checkbox" type="checkbox" name="checkbox" checked="checked" /><span class="form__checkbox"></span>Запомнить меня</label></div><span><a class="registration-form__password-recovery" href="<?=HOST?>lost-password">Забыл пароль</a></span>
	</div>

	<div class="registration-form__button">
		<input class="button button-enter button-small" type="submit" value="Войти" name="login" />
	</div>

</form>
