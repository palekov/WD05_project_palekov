<hr id="<?=$job['id']?>">
<div class="work-experience-post">
	<?php
	// print_r($_GET);
	?>
	<?php if ( @$_GET['id'] == $job['id']) {
			include ROOT . "templates/about/_results.tpl";
		} ?>
	<div class="work-experience-post-wrap">
		<div class="work-experience-post-wrap__date"><?=$job['period']?></div>
		<div class="work-experience-post-button">
			<a class="button button-edit" href="<?=HOST?>update-jobs?id=<?=$job['id']?>">Редактировать</a>
			<a class="button button-delete" href="<?=HOST?>about-jobs-delete?id=<?=$job['id']?>">Удалить</a>
		</div>
	</div>
	<div class="work-experience-post__title">
		<?=$job['title']?>
	</div>
	<div class="work-experience-post__message">
		<?=$job['description']?>
	</div>
</div>