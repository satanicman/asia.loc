<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header class="header">
    <div class="top-line">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-sm-7 col-8">
                    <span class="top-line__phone"><?php echo $telephone; ?> (Звонки бесплатные по всей Украине)</span>
                </div>
                <div class="col-md-4 col-sm-5 col-4">
                    <span class="top-line__balance">Баланс 12 000 грн.</span>
                </div>
                <?php if ($logged) { ?>
                    <div class="col-md-2 col-sm-6 col-6 login">
                        <a href="<?php echo $account; ?>" class="login__btn"><?php echo $text_account; ?></a>
                    </div>
                    <div class="col-md-1 col-sm-6 col-6 login">
                        <a href="<?php echo $logout; ?>" class="login__btn"><?php echo $text_logout; ?></a>
                    </div>
                <?php } else { ?>
                    <div class="col-md-2 col-sm-6 col-6 login">
                        <a href="<?php echo $register; ?>" class="login__btn"><?php echo $text_register; ?></a>
                    </div>
                    <div class="col-md-1 col-sm-6 col-6 login">
                        <a href="<?php echo $login; ?>" class="login__btn"><?php echo $text_login; ?></a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <div class="header__content">
        <div class="container">
            <div class="row">
                <div class="header__logo col-md-3 col-sm-12 col-12">
                    <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="header__logo_img"/></a>
                    <?php } else { ?>
                        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                    <?php } ?>
                </div>
                <div class="header__search col-md-6 col-sm-9 col-9">
                    <?php echo $search; ?>
                </div>
                <div class="col-md-3 col-sm-3 col-3">
                    <?php echo $cart; ?>
                </div>
            </div>
        </div>
    </div>
    <nav class="header__nav">
        <div class="container">
            <div class="row">
                <ul class="header__nav-list">
                <li class="header__nav-item"><a href="<?php echo $home; ?>" class="header__nav-link"><?php echo $text_home; ?></a></li>
                <?php foreach ($informations as $information) { ?>
                    <li class="header__nav-item"><a href="<?php echo $information['href']; ?>" class="header__nav-link"><?php echo $information['name']; ?></a></li>
                <?php } ?>
                <?php foreach ($categories as $category) { ?>
                    <li class="header__nav-item"><a href="<?php echo $category['href']; ?>" class="header__nav-link"><?php echo $category['name']; ?></a></li>
                <?php } ?>
                </ul>
            </div>
        </div>
    </nav>
</header>
