</div></div></div>
<section class="brands">
  <h2 class="brands__title"><?php echo $text_brands; ?></h2>
  <div class="line"></div>
  <div class="brands__table">
    <div class="container">
      <div class="row">
        <?php foreach ($banners as $banner) { ?>
        <div class="col-md-1 col-sm-1 col-2">
          <?php if ($banner['link']) { ?>
          <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <div class="brands__btn-wrap">
    <a class="brands__btn" href="<?php echo $link; ?>"><?php echo $text_all; ?></a>
  </div>
</section>
<div class="container">
  <div class="row">
    <div class="col-sm-12">