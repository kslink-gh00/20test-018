<?php get_header() ?>
    <section class="home-section section-1 text-right position-relative">
      <?php if(is_active_sidebar( 'sidebar-1' )) { dynamic_sidebar( 'sidebar-1' ); } ?>
    </section>
    <section class="home-section section-2">
      <div class="container-fluid position-relative">
        <?php if(is_active_sidebar( 'sidebar-2' )) { dynamic_sidebar( 'sidebar-2' ); } ?>
      </div>
    </section>
    <section class="home-section section-3">
      <div class="container-fluid">
        <div class="inner position-relative text-right">
          <?php if(is_active_sidebar( 'sidebar-3' )) { dynamic_sidebar( 'sidebar-3' ); } ?>
        </div>
      </div>
    </section>
    <section class="home-section section-4 text-center">
      <div class="container-fluid">
        <div class="inner">
          <?php do_action('show_home_menu_content') ?>
        </div>
      </div>
    </section>
    <section class="home-section section-5">
      <div class="container-fluid">
        <?php if(is_active_sidebar( 'sidebar-5' )) { dynamic_sidebar( 'sidebar-5' ); } ?>
      </div>
    </section>
    <section class="home-section section-6">
      <div class="container-fluid">
        <div class="row">
          <?php if(is_active_sidebar( 'sidebar-6' )) { dynamic_sidebar( 'sidebar-6' ); } ?>
        </div>
      </div>
    </section>
<?php get_footer() ?>
