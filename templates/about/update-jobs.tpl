<?php 
function dataFromPostUpdate($fieldName){
		global $jobUpdate;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $jobUpdate[$fieldName];
	}
// echo "<pre>";
// print_r($_POST);
// echo "</pre>";
// die();

?>
<div class="container user-content pt-80 pb-120">
	<div class="row">
		<div class="col-10 offset-1">
		<?php if ( isset($_GET['result']) ) {
			include ROOT . "templates/about/_results.tpl";
		} ?>
			<div class="title-1 work-experience-title">Редактировать - Опыт работы</div>			
			<?php // foreach ($jobs as $job) { ?>
				<?php // include ROOT . "templates/about/_card-job-edit.tpl" ?>
			<?php // } ?>
			<!-- <div class="work-experience-title-2">Добавить новое место</div> -->
			<?php require ROOT . "templates/_parts/_errors.tpl" ?>	
			<form class="work-experience-form" action="<?=HOST?>update-jobs?id=<?=$jobUpdate['id']?>
				<?php if (!empty($errors)): ?>
					?result=postCreated
				<?php endif ?>
				" method="POST">
				<div class="work-experience-form__item">
					<label class="label">Период
						<input class="input-text" type="text" value="<?php echo @$_POST['name'] != '' ? @$_POST['name'] : $jobUpdate['period']; ?>" placeholder="Введите даты начала и окончания работы" name="period">
					</label>
				</div>
				<div class="work-experience-form__item">
					<label class="label">Название должности
						<input class="input-text" type="text" value="<?php dataFromPostUpdate('title');?>" placeholder="Введите название должности" name="title">
					</label>
				</div>
				<div class="work-experience-form__item">
					<label class="label mb-10">Описание работы, должностные обязанности, достигнутые результаты
					</label>
						<textarea  class="textarea" type="text" placeholder="Напишите интересное краткое содержательное описание" name="description"><?php dataFromPostUpdate('description');?></textarea>
						<?php // id="ckEditor" include ROOT .'templates/_parts/_ckEditorConnect.tpl' ?>
				</div>
				<input class="button button-save" type="submit" value="Обновить" name="updateJob">
				<a href="<?=HOST?>edit-jobs" class="button">Отмена</a>

			</form>
		</div>
	</div>
</div>