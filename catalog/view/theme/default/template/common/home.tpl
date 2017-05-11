<?php echo $header; ?>
<?php echo $content_top; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<section class="email">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-4 col-4">
        <div class="email__text">
          <p>Оставьте свою почту<br>
            и получите наш прайс<br>
            с выгодными ценами!</p>
        </div>
      </div>
      <div class="col-md-8 col-sm-8 col-8">
        <form class="email__search_form" action="#">
          <input class="email__search_form-control" type="text" placeholder="Email...">
          <button class="email__search-btn"></button>
        </form>
      </div>
    </div>
  </div>
</section>
<div class="container">
  <div class="row">
    <section class="news">
      <div class="container">
        <div class="row">
          <div class="news__title"><h2>Новости и акции</h2></div>
          <div class="col-md-4 col-12">
            <div class="news__block-date">17 февраля 2017</div>
            <p>Новый кроссовер DS 7 Crossback стал флагманом
              марки <a href="#">(Подробнее...)</a></p>
          </div>
          <div class="col-md-4 col-12">
            <div class="news__block-date">12 января 2017</div>
            <p>Топливный насос: назначение, проверка, подбор,
              замена, Новый кроссовер DS 7 Crossback стал
              флагманом марки <a href="#">(Подробнее...)</a></p>
          </div>
          <div class="col-md-4 col-12">
            <div class="news__block-date">17 ноября 2016</div>
            <p>Топливный насос: назначение, проверка, подбор,
              замена <a href="#">(Подробнее...)</a></p>
          </div>
          <div class="clearfix"></div>
          <div class="news__btn pull-right"><button>Смотреть все</button></div>
        </div>
      </div>
      <div class="news__line"></div>
    </section>
  </div>
</div>
<?php echo $footer; ?>