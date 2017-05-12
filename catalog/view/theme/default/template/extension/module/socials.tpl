<?php if($socials) : ?>
    <div class="footer__socials">
        <?php foreach($socials as $social) : ?>
            <a href="#">
                <img src="<?php echo $social['image'] ?>" alt="<?php echo $social['name'] ?>" href="<?php echo $social['link'] ?>">
            </a>
        <?php endforeach ?>
    </div>
<?php endif; ?>