
<?php 
function dataFromPost($fieldName){
		global $about;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $about[$fieldName];
	}
// echo "<pre>";
// print_r($about);
// echo "</pre>";

?>
<div class="container user-content pt-45 pl-20">
	<div class="row">
		<div class="offset-md-1 col-md-10">
			<h1 class="title-1">Редактировать - Обо Мне</h1>
			<?php require ROOT . "templates/_parts/_errors.tpl" ?>			
			<form enctype="multipart/form-data" class="edit-about-me-form" action="<?=HOST?>edit-text" method="POST">
				<div class="row edit-about-me-form__row">
					<div class="col">
						<label class="label">Имя, фамилия
							<input class="input-text" type="text" placeholder="Введите Имя и Фамилию" name="name" value="<?php dataFromPost('name'); ?>">
						</label>
					</div>
				</div>
				<div class="row edit-about-me-form__row">
					<div class="col">
						<div class="load-file-title">Фотография </div>
						<div class="load-file-opis">
							Изображение jpg или png, размером больше чем 100х100 пикселей и весом до 2Мб.
						</div>
						<div class="load-file-fieldset">
							<input class="inputfile" id="file-2" type="file" name="photo" data-multiple-caption="{count} файлов выбрано" multiple="">
							<label for="file-2">Выбрать файл</label>
							<span>Файл не выбран</span>
						</div>
						<div class="edit-about-me__avatar mt-15">
							<div class="avatar avatar--big">
								<?php if ( $about->photo != '') { ?>
									<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="Фотография">	
								<?php } else {?>
									<img 
										src="<?=HOST?>templates/assets/img/avatars/user-avatar-placeholder-small.jpg" 
										alt="Аватарка" />	
								<?php } ?>
							</div>
						</div>
					</div>
				</div>
				<div class="row edit-about-me-form__row">
					<div class="col">
						<label class="label mb-10">Информация на главной
						</label>
							<textarea id="ckEditor" class="textarea" type="text" placeholder="Введите текст сообщения" name="description">
								<?php dataFromPost('description'); ?>
							</textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>

					</div>
				</div>
				<div class="row edit-user-profile-form__row">
					<div class="form-button-save">
						<input class="button button-save" type="submit" value="Сохранить" name="textUpdate">
					</div>
					<div class="form-button-cancel">
						<a href="<?=HOST?>about" class="button">Отмена</a>
						<!-- <button class="button" type="reset">Отмена</button> -->
					</div>
				</div>
			</form>
		</div>
	</div>
</div>