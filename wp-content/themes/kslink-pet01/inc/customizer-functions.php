<?php
function get_site_phone() {
  echo '<a class="site-phone" href="tel:', get_theme_mod('phone', '') , '">', get_theme_mod('phone', ''), '</a>';
}

function get_site_copyright() {
  echo '<strong class="site-copyright">', get_theme_mod('copyright', ''), '</strong>';
}

function get_home_menu_content() {
  $menu_page = get_theme_mod('menu_page', false);
  if($menu_page) {
    ?>
    <div class="home-menu">
      <h2 itemprop="headline"><?php echo get_the_title( $menu_page ) ?></h2>
      <?php get_menu_description(); ?>
      <ul class="menu-list row">
        <?php
        // WP_Query arguments
        $args = array(
          'post_parent'            => $menu_page,
          'post_type'              => array( 'page' ),
          'post_status'            => array( 'publish' ),
          'order'                  => 'ASC',
          'orderby'                => 'menu_order',
        );
        // The Query
        $query = new WP_Query( $args );
        // The Loop
        if ( $query->have_posts() ) {
          while ( $query->have_posts() ) {
            $query->the_post();
            ?>
            <li class="col-12 col-sm-4">
              <div class="icon">
                <?php
                $home_icon = get_field('home_icon');
                if(get_field('home_icon')): ?>
                  <img src="<?php echo $home_icon['url'] ?>" alt="<?php echo $home_icon['title'] ?>" />
                <?php endif ?>
              </div>
              <h3 itemprop="headline"><?php the_title() ?></h3>
            </li>
            <?php
          }
        }
        // Restore original Post Data
        wp_reset_postdata();
        ?>
      </ul>
      <div class="action"><?php get_menu_link() ?></div>
    </div>
    <?php
  } else {
    return false;
  }
}
add_action('show_home_menu_content', 'get_home_menu_content');

function get_menu_description() {
  echo '<div class="menu-description">', str_replace("\n", '<br />', get_theme_mod('menu_description', '')), '</div>';
}

function get_menu_link() {
  echo '<a class="btn btn-light" href="', get_permalink( get_theme_mod('menu_link', get_option( 'page_on_front' )) ), '">read more ＞＞</a>';
}
