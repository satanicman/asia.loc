$(document).ready(function () {
    $(document).on('click', '.product-popup', function(e) {
        var productId = $(this).data('product_id');
        e.preventDefault();

        $.ajax({
            url: 'index.php',
            type: 'GET',
            data: 'route=product/search/get&product_id=' + productId,
            success: function(data) {
                $.fancybox.open(data);
            }
        });

        return false;
    });
});