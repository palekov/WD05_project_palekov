<?php 
	function skillIteem($name, $title) { 
		global $skills;
	 ?>
		<div class="col-md-3 technology-edit-form__item">
			<label class="label"><?=$title ?>
				<input class="input-text input-text--width" 
				type="number" 
				placeholder="0" 
				name="<?=$name ?>" 
				value="<?=$skills[$name]?>">
			</label>	
			<div class="percent-sign">
				<span class="percent-sign__item">%</span>
			</div>	
		</div>
<?php 	}	?>

<?php 
// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
 ?>
 
<div class="container user-content pt-45 pl-0">
	<div class="row">
		<div class="offset-md-1 col-md-8">
			<h1 class="title-1">Редактировать - Технологии</h1>
			<?php require ROOT . "templates/_parts/_errors.tpl" ?>	
			<form class="technology-edit-form" action="<?=HOST?>edit-skills" method="POST">
				<div class="row technology-edit-form__row">
						<?php skillIteem('html', 'HTML5')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">HTML5
							<input class="input-text input-text--width" type="text" placeholder="0" name="html">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('css', 'CSS3')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">CSS3
							<input class="input-text input-text--width" type="text" placeholder="0" name="css">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('js', 'JS')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">JS
							<input class="input-text input-text--width" type="text" placeholder="0" name="js">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('jquery', 'jQuery')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">jQuery
							<input class="input-text input-text--width" type="text" placeholder="0" name="jquery">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
				</div>
				<div class="row technology-edit-form__row">
						<?php skillIteem('php', 'PHP')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">PHP
							<input class="input-text input-text--width" type="text" placeholder="0" name="php">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('mysql', 'MySql')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">MySql
							<input class="input-text input-text--width" type="text" placeholder="0" name="mysql">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
				</div>
				<div class="row technology-edit-form__row mb-30">
						<?php skillIteem('git', 'Git')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">Git
							<input class="input-text input-text--width" type="text" placeholder="0" name="git">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('gulp', 'Gulp')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">Gulp
							<input class="input-text input-text--width" type="text" placeholder="0" name="gulp">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('yarn', 'Yarn')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">Bower
							<input class="input-text input-text--width" type="text" placeholder="0" name="bower">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
						<?php skillIteem('npm', 'Npm')?>

						<?php // skillIteem('webpack', 'WebPack')?>
					<!-- <div class="col-md-3 technology-edit-form__item">
						<label class="label">WebPack
							<input class="input-text input-text--width" type="text" placeholder="0" name="webpack">
						</label>
						<div class="percent-sign">
							<span class="percent-sign__item">%</span>
						</div>
					</div> -->
				</div>
				<div class="row technology-edit-form__row">
					<div class="technology-edit-form__button">
						<input class="button button-save" type="submit" value="Сохранить" name="skillsUpdate">
					</div>
					<div class="technology-edit-form__button-cancel">
						<!-- <button class="button" type="reset">Отмена</button> -->
						<a href="<?=HOST?>about" class="button">Отмена</a>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>