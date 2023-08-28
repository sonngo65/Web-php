<div class="main">
  <div class="content">
    <div class="content_top">
      <div class="heading">
        <h3>Tìm kiếm theo từ khóa:<?= $searchKey ?> </h3>
      </div>
      <div class="clear"></div>
    </div>

    <div class="section group">
      <?php foreach ($Product_data as  $valueProduct_data) { ?>
        <div class="grid_1_of_4 images_1_of_4">
          <a href="<?= BASE_URL . "productDetail/index/" . $valueProduct_data['id'] ?>"><img src="<?= BASE_URL ?>public/imgs/<?= $valueProduct_data['image'] ?>" alt="<?= $valueProduct_data['image'] ?>" /></a>
          <a href="<?= BASE_URL . "productDetail/index/" . $valueProduct_data['id'] ?>">
            <h2 style="font-weight: 900;"><?= $valueProduct_data['name'] ?></h2>
          </a>
          <?php if (trim($valueProduct_data['description'])  !== "") { ?>
            <div class="content-box">
              <div class="description"><?= $valueProduct_data['description'] ?></div>
            </div>
          <?php } ?>
          <p style="margin-top: 20px;"><span class="price"><?= number_format($valueProduct_data['price']) . 'VND' ?></p>
          <div class="button" style="margin:40px auto;width:100%"><span><a href="<?= BASE_URL . "productDetail/index/" . $valueProduct_data['id'] ?>" class="details">Chi tiết</a></span></div>
        </div>
      <?php } ?>
    </div>
    <ul class="Pagination">
      <?php
      for ($num = 1; $num <= $number_page[0]; $num++) {

      ?>
        <?php if ($num != $number_page[2]) { ?>
          <li class="page-item"><a class="page-link" href="<?= BASE_URL . "product/" ?>searchProduct/<?= $number_page[1] ?>/<?= $num ?>"><?= $num ?></a></li>
        <?php } else { ?>
          <strong class="current-page"><?= $num ?></strong>
        <?php } ?>
      <?php
      } ?>
    </ul>
  </div>

</div>