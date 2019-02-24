
		<div class="sticky-footer-content">
			<div class="container user-content pt-70 make-relative">
				<?php  if (isAdmin()) {  ?>
				<div class="blog__button--edit">
					<a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать<a/>
					<a class="button button-delete" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить<a/>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-10 offset-1">
						
						<div class="blog-post">
							<div class="blog-post-heading-wrapper">
								<h1 class="blog-post__title title-1"><?=$post['title']?></h1>
								<div class="blog-post__info">

									<div class="blog-post__info-name"><?=$post['name']?> <?=$post['surname']?></div>

									<div class="blog-post__info-category">
										<a href="#!"><?=$post['cat_title']?></a>
									</div>

									<div class="blog-post__info-date"><? echo rus_date("j F Y H:i", strtotime($post['date_time'])); ?></div>

									<?php if (count($comments)>0) { ?>
									<div class="blog-post__info-comment-count">
										<a href="#comments"><?php commentNumber(count($comments));?></a>
									</div>
									<?php } ?>

								</div>
							</div>

							<?php if($post['post_img'] != "")  { ?>
								<img class="blog-post__image" src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post->title?>" />
							<?php } else { ?>
								<img class="blog-post__image" src="<?=HOST?>usercontent/blog-no-foto.jpg" alt="<?=$post->title?>" />
							<?php } ?>

							<div class="blog-post__content">
								<?=$post['text']?>
							</div>
						</div>

						<div class="blog__buttons mt-30 mb-35">

							<?php if ($prevId != ''): ?>
							<div class="button__arrow-wrap">
								<a class="button button-backward" href="<?=HOST?>blog/post?id=<?=$prevId;?>">Назад</a><i class="fas fa-arrow-left"></i>
							</div>
							<?php else: ?>
								<div></div>
							<?php endif ?>

							<?php if ($nextId != ''): ?>
							<div class="button__arrow-wrap">
								<a class="button button-forward" href="<?=HOST?>blog/post?id=<?=$nextId;?>">Вперед</a><i class="fas fa-arrow-right"></i>
							</div>
							<?php else: ?>
								<div></div>
							<?php endif ?>

						</div> 

						<?php if (count($comments)>0) { ?>
							<div class="two-comments__title" id="comments"><?php commentNumber(count($comments));?></div>
						<?php }  ?>

						<?php foreach ($comments as $comment)  {  ?>

						<div class="two-comments-container">
							<div class="two-comments-container__avatar">
								<div class="avatar">
									<?php if ($comment['avatar_small'] != "")  {  ?>
										<img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small']?>" 
											alt="<?=HOST?>usercontent/avatar/no-avatar2.jpg" />
									<?php  } ?>
								</div>
							</div>
							<div class="two-comments-container-block">
								<div class="two-comments-container-block-wrap">

									<div class="two-comments-container-block-wrap__name">
									   <?=$comment['name']?> 
									   <?=$comment['surname']?>
									</div>

									<div class="two-comments-container-block-wrap__date">
										<i class="far fa-clock two-comments-container-block-wrap-icon"></i>
									   <?=$comment['date_time']?>
									</div>
								</div>
								<p class="two-comments-container-block__message">
								<?=$comment['text']?>
								</p>
							</div>
						</div>

						<?php }  ?>

						<?php if (isLoggedIn())  { ?>
						<!-- Добавление комментария -->
						<div class="comment mt-35 mb-120">
							
							<div class="leave-comment-title">Оставить комментарий</div>

							<div class="leave-comment">

								<div class="leave-comment-avatar">
									<div class="avatar">

									<?php if ($_SESSION['logged_user']['avatar_small'] != "")  {  ?>
										<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" 
											alt="<?=HOST?>usercontent/avatar/no-avatar2.jpg" />
									<?php  } ?>

									</div>
								</div>
								<form class="leave-comment-form" id="comment-form" method="POST"
										action="<?=HOST?>blog/post?id=<?=$post['id']?>">

									<div class="leave-comment-form__name">
										<?=$_SESSION['logged_user']['name']?> 
										<?=$_SESSION['logged_user']['surname']?>	
									</div>

									<div class="notification__error" style="display: none;">Комментарий не может быть пустым.</div>
									<div class="mb-10"></div>
										<textarea class="textarea" type="text" name="commentText"></textarea>
									<div class="mb-10"></div>
									<input type="hidden" value="newComment" name="addComment">
									<input class="button comment-add__button" type="submit" value="Опубликовать" name="addComment" />
								</form>

							
						</div>
						
					</div>

						<?php } else {?>

									<div class="comment__register text-center">
										<a href="<?=HOST?>login">Войдите</a> или 
										<a href="<?=HOST?>registration">зарегистрируйтесь</a>
										<br />чтобы оставить комментарий
									</div>
						<?php } ?>

				</div>
						
			</div>
		</div>