
<form class="registration-form" method="POST" action="<?=HOST?>registration">

	<h1 class="title-1 registration-form__caption">Регистрация</h1>

 	<?php require ROOT . "templates/_parts/_errors.tpl" ?> 

	<!--
	<div id="emailErrorEmpty" class="notification__error mb-20 email-error-hide">Введите email</div>

	<div id="emailErrorInvalid" class="notification__error mb-20 email-format-error-hide">Неверный формат email</div>

	<div id="passwordErrorEmpty" class="notification__error mb-20 password-error-hide">Введите пароль</div>
							
	<div class="notify no-paddings">
		<div id="emailErrorBusy" class="notification__error mb-20 email-busy-error-hide">
			<p>Данный email уже занят</p>
			<p>Используйте другой email чтобы создать новый аккаунт.</p>
			<p> Или воспользуйтесь
			<a href="#!">восстановлением пароля </a>, чтобы войти на сайт.</p>
		</div>
	</div>
-->
					
	<input id="regEmailText" class="input-text registration-form__email" name="email" type="email" placeholder="Email" value="info@mail.com"/>

	<input id="regPasswordText" class="input-text registration-form__password" name="password" type="password" placeholder="Пароль" value="123456"/>

	<div class="registration-form__button">
		<input class="button button-enter" type="submit" value="Регистрация" name="register"> 
	</div>
</form>