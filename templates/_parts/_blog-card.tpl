					<div class="col-4">

						<div class="card-post mb-50">

							<div class="card-post__image mb-15">

								<?php if($post->post_img_small != "")  { ?>
								<img src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
								<?php } else { ?>
								<img src="<?=HOST?>usercontent/blog-no-foto.jpg" alt="<?=$post->title?>" />
								<?php } ?>

							</div>

							<div class="card-post__title">			
							<?=mbCutString($post->title, 48)?>
							</div>

							<a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>

						</div>

					</div>

