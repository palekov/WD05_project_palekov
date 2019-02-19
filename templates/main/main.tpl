<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>

		<div class="hr-line"></div>

		<!-- <div class="sticky-footer-content">
			<div class="container user-content pt-90 mb-80">

				<div class="works__header mb-25 title-1">
				 <span> 
				 	<strong>Новые <a href="#!" target="_blank">работы</a></strong>
				 </span>
				</div>

				<div class="row justify-content-between mb-50">

					<div class="card-portfolio">
						<div class="card-portfolio__image mb-15">
							<img src="../img/thumbs/portfolio-thumb.png" alt="Верстка Landing Page" /></div>
						<div class="card-portfolio__title ml-20">Верстка Landing Page</div>
						<a class="button" href="#!">Смотреть кейс</a>
					</div>

					<div class="card-portfolio">
						<div class="card-portfolio__image mb-15">
							<img src="../img/thumbs/portfolio-thumb1.png" alt="Верстка UI набора" /></div>
						<div class="card-portfolio__title ml-20">Верстка UI набора</div><a class="button" href="#!">Смотреть кейс</a>
					</div>

					<div class="card-portfolio">
						<div class="card-portfolio__image mb-15">
							<img src="../img/thumbs/portfolio-thumb2.png" alt="Верстка интернет магазина" /></div>
						<div class="card-portfolio__title ml-20">Верстка интернет магазина</div>
						<a class="button" href="#!">Смотреть кейс</a>
					</div>

				</div>
			</div>
		</div>  -->

		<div class="sticky-footer-content">
			<div class="container user-content mb-100">

				<div class="works__header mb-40 title-1">
					<span>
					 <strong>Новые записи в <a href="<?=HOST?>blog" target="_blank">блоге</a>
					 </strong>
					</span>
				</div>

				<div class="row justify-content-between">
					<?php foreach ($posts as $post) { ?>
					<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
					<?php } ?>
				</div>
			</div>
		</div>


