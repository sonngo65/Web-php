</div>
<div class="main">
	<div class="content">
		<div class="content_top">
			<div class="heading">
				<h3>Sản phẩm tiềm năng</h3>
			</div>
			<div class="section group">
				<?php foreach ($homeProduct_data as $key => $data) { ?>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="<?= BASE_URL . "productDetail/index/" . $data['id'] ?>"><img src="<?= BASE_URL ?>public/imgs/<?= $data['image'] ?>" alt="<?= $data['image'] ?>" /></a>
						<a href="<?= BASE_URL . "productDetail/index/" . $data['id'] ?>">
							<h2 style="font-weight: 900;"><?= $data['name'] ?></h2>
						</a>
						<?php if (trim($data['description'])  !== "") { ?>
							<div class="content-box">
								<div class="description"><?= $data['description'] ?></div>
							</div>
						<?php } ?>
						<p style="margin-top: 20px;"><span class="price"><?= number_format($data['price']) . 'VND' ?></p>
						<div class="button" style="margin:40px auto;width:100%"><span><a href="<?= BASE_URL . "productDetail/index/" . $data['id'] ?>" class="details">Chi tiết</a></span></div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<ul class="Pagination">
	<?php
	for ($num = 1; $num <= $number_page[0]; $num++) {

	?>
		<?php if ($num != $number_page[2]) { ?>
			<li class="page-item"><a class="page-link" href="<?= BASE_URL . "home/" ?>index/<?= $number_page[1] ?>/<?= $num ?>"><?= $num ?></a></li>
		<?php } else { ?>
			<strong class="current-page"><?= $num ?></strong>
		<?php } ?>
	<?php
	} ?>
</ul>