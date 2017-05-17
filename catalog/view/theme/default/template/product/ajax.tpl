<?php if($errors) : ?>
<div class="alert alert-danger">
    <ul>
    <?php foreach($errors as $error) : ?>
        <li><?php echo $error; ?></li>
    <?php endforeach; ?>
    </ul>
</div>
<?php else : ?>
<div id="catalog-popup">
    <div class="container b1c-good">
    <div class="row popup-bg">
        <div class="col-md-5 col-sm-12 col-10">
            <div class="catalog-popup__img">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                <!-- <button class="zoom__btn zoom-in">+</button>
                <button class="zoom__btn zoom-out">-</button> -->
            </div>
        </div>
        <div class="col-md-7 col-sm-12 col-10">
            <div class="catalog-popup__info">
                <h2 class="b1c-name"><?php echo $product['name']; ?></h2>
                <div class="catalog-popup__info__price">
                    <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                    <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                </div>
                <div class="catalog-popup__info__presence"><?php echo $product['available']; ?></div>
                <div class="catalog-popup__info__cart-amount">
                    <!-- <a href="#" class="cart-amount-minus">-</a> -->
                    <input type="text" class="cart-amount-text" value="1" name="quantity" id="quantity">
                    <!-- <a href="#" class="cart-amount-plus">+</a> -->
                </div>
                <div class="catalog-popup__info__block">
                    <div>
                        <span><?php echo $text_brand; ?>:</span> <?php echo $product['manufacturer']; ?><br>
                        <!-- <span>Срок доставки:</span> 3 дня.<br> -->
                        <span><?php echo $text_description; ?>:</span> <?php echo $product['description']; ?>
                    </div>
                </div>
                <button class="buy"  onclick="cart.add('<?php echo $product['product_id']; ?>', document.getElementById('quantity').value > 0 ? document.getElementById('quantity').value : '<?php echo $product['minimum']; ?>');return false;"><?php echo $button_cart; ?></button>
                <button class="order b1c"><?php echo $button_quick_order; ?></button>
            </div>
        </div>
        <!-- <button class="mfp-close">Закрыть</button> -->
    </div>
</div>
</div>
<?php endif; ?>