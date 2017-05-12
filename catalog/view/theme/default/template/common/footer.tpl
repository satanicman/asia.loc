<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-5 col-6">
        <div class="footer__logo">
          <?php if ($logo) { ?>
              <a href="<?php echo $base; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/></a>
          <?php } else { ?>
              <h1><a href="<?php echo $base; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        <?php echo $socials; ?>
      </div>
      <div class="col-md-3 col-sm-6 col-lg-offset-1">
        <div class="footer__nav">
          <ul class="clearfix">
            <?php foreach($informations as $information) : ?>
                <li class="col-md-6"><a href="<?php echo $information['href']; ?>" title="<?php echo $information['title']; ?>"><?php echo $information['title']; ?></a></li>
            <?php endforeach; ?>
          </ul>
        </div>
      </div>
      <div class="col-md-2 col-sm-6 col-6">
        <div class="footer__numbers">
            <?php echo $phones; ?>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 col-6">
        <div class="footer__address">
          <?php echo $address; ?>
        </div>
      </div>
    </div>
  </div>
  <div class="footer__btn">
    <a href="#">
      <img src="<?php echo $base; ?>image/angle-double-up.png" alt="">
    </a>
  </div>
  <div class="footer__asiaavto">Азиа Авто. 2017 &copy; Все права защищены</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>