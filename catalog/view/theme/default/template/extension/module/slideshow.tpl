<div class="slider">
  <div class="sl" id="slideshow<?php echo $module; ?>">
      <?php foreach ($banners as $banner) { ?>
      <div class="sl__slide">
        <?php if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
        <?php } else { ?>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
        <?php } ?>
      </div>
      <?php } ?>
  </div>
</div>
<script type="text/javascript">
    $('#slideshow<?php echo $module; ?>').slick();
</script>