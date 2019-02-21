	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Удалить пост о работе</div>
				<?php 
				/*echo "<pre>";
				echo print_r($_POST);
				echo "</pre>";*/
	 			?>


				<form action="<?=HOST?>about-jobs-delete?id=<?=$jobs['id']?>" method="POST"  class="post-add-form">
					<div class="post-add-form__name">
						<p><strong>Вы действительно хотите удалить пост?</strong>
							
						</p>
						<div class="message-delete-wrap">
							<div class="work-experience-post">
								<div class="work-experience-post-wrap">
									<div class="work-experience-post-wrap__date"><?=$jobs['period']?></div>
								</div>
								<div class="work-experience-post__title">
									<?=$jobs['title']?>
								</div>
								<div class="work-experience-post__message">
									<?=$jobs['description']?>
								</div>
							</div>
						</div>
					</div>					
					<div class="post-add-form-button">
						<input class="button button-delete" type="submit" value="Удалить" name="jobDelete" />
						<div class="post-add-form-button__cancel">
							<a class="button" href="<?=HOST?>edit-jobs">Отмена</a>
							<!-- <input class="button" type="reset" name="cansel" value="Отмена" /> -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>