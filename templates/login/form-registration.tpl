
<form class="registration-form" method="POST" action="<?=HOST?>registration">

	<h1 class="title-1 registration-form__caption">Регистрация</h1>
	
		<div class="notification">

			<div id="enterEmail" class="notification__title notification--error mb-10 hidden">Введите e-mail</div>
			<div id="invalidEmail" class="notification__title notification--error mb-10 hidden">Неверный формат email</div>
			<div id="enterPassword" class="notification__title notification--error mb-10 hidden">Введите пароль</div>

			<?php require ROOT . "templates/_parts/_errors.tpl" ?>
			
		</div>
					
	<input id="regEmailText" class="input-text registration-form__email" name="email" type="email" placeholder="Email" value="info@mail.com"/>

	<input id="regPasswordText" class="input-text registration-form__password" name="password" type="password" placeholder="Пароль" value="123456"/>

	<div class="registration-form__button">
		<input class="button button-enter" type="submit" value="Регистрация" name="register"> 
	</div>
</form>