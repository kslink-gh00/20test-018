<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="profile" href="https://gmpg.org/xfn/11">
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <title><?php bloginfo('name') ?></title>
	<?php wp_head(); ?>
</head>
<body <?php body_class() ?>>
<?php wp_body_open(); ?>
  <div class="kl- wrapper">
    <header id="site-header">
      <nav id="main-navbar" class="navbar navbar-expand-md navbar-dark bg-dark" role="navigation">
        <div class="container-fluid">
          <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#main-navbar-menu" aria-controls="main-navbar-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <?php
          wp_nav_menu( array(
              'theme_location'    => 'primary',
              'depth'             => 2,
              'container'         => 'div',
              'container_class'   => 'collapse navbar-collapse',
              'container_id'      => 'main-navbar-menu',
              'menu_class'        => 'nav navbar-nav',
              'fallback_cb'       => 'Kslink_Bootstrap_Navwalker::fallback',
              'walker'            => new Kslink_Bootstrap_Navwalker(),
          ) );
          ?>
          <div class="form-inline my-2 my-lg-0">
            <?php
            if(function_exists('get_site_phone')) {
              echo '<p class="mb-0 top-tel">';
              echo 'tel　: ';
              get_site_phone();
              echo '</p>';
            }
            ?>
          </div>
        </div>
      </nav>
    </header>
    <main id="main">
