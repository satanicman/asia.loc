<?php echo $header; ?>
<div class="breadcrumbs">
  <div class="container">
    <div class="row">
        <ul class="breadcrumb">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>
    </div>
  </div>
</div>
<!-- <section class="filter search__filter">
  <div class="container filter__container">
    <div class="row">
      <ul class="filter__list">
        <li class="filter__item"><a href="#" class="filter__link">Товары</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Поиск по номеру</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Поиск по размеру</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Запрос по vin</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Масла</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Бренды</a></li>
        <li class="filter__item"><a href="#" class="filter__link">Последние поступления</a></li>
      </ul>
    </div>
  </div>
</section> -->
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $text_search; ?></h2>
      <?php if ($products) { ?>
      <div class="row">
        <section class="catalog">
          <table class="catalog__table product-table">
            <thead class="product-table__header product-table-header">
            <tr>
              <th class="product-table-header__label product-table__column">Изображение</th>
              <th class="product-table-header__label product-table__column"><a href="<?php echo $sorts_name['href']; ?>" class="product-table-header__link<?php if($sorts_name['class']) : ?> product-table-header__link_<?php echo $sorts_name['class']; ?><?php endif; ?>">Название</a></th>
              <th class="product-table-header__label product-table__column">Номер</th>
              <th class="product-table-header__label product-table__column">Фирма</th>
              <th class="product-table-header__label product-table__column">Примечание</th>
              <th class="product-table-header__label product-table__column">Цена розница</th>
              <!-- <th class="product-table-header__label product-table__column">Цена отпускная</th> -->
              <!-- <th class="product-table-header__label product-table__column">Время доставки</th> -->
              <th class="product-table-header__label product-table__column">Количество</th>
              <th class="product-table-header__label product-table__column">Покупка</th>
            </tr>
            </thead>
            <tbody class="product-table__body">
            <?php foreach ($products as $product) { ?>
            <tr>
              <td data-label="Изображение" class="product-table__column product-table__column_image"><a href="<?php echo $product['href']; ?>" class="product-popup" data-product_id="<?php echo $product['product_id']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></td>
              <td data-label="Название" class="product-table__column product-table__column_name"><a href="<?php echo $product['href']; ?>" class="product-table__link product-popup" data-product_id="<?php echo $product['product_id']; ?>"><?php echo $product['name']; ?></a></td>
              <td data-label="Номер" class="product-table__column product-table__column_sku"><?php echo $product['sku']; ?></td>
              <td data-label="Фирма" class="product-table__column product-table__column_manufacturer"><?php echo $product['manufacturer']; ?></td>
              <td data-label="Примечание" class="product-table__column product-table__column_description"><?php echo $product['description']; ?></td>
              <td data-label="Цена розница" class="product-table__column product-table__column_price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
              </td>
              <!-- <td data-label="Цена отпускная" class="product-table__">--</td> -->
              <!-- <td data-label="Время доставки">1-2 дня</td> -->
              <td data-label="Количество" class="product-table__column product-table__column_quantity"><?php echo $product['quantity']; ?></td>
              <td data-label="Покупка" class="product-table__column product-table__column_buttons"><a href="#" class="product-table__button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');return false;"><span><?php echo $button_cart; ?></span></a></td>
            </tr>
            <?php } ?>
            </tbody>
          </table>
        </section>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>