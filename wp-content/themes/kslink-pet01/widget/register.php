<?php
// Register Sidebars
function add_theme_custom_sidebar()
{
	register_sidebar(array(
		'id'            => 'sidebar-1',
		'name'          => __('ホームページのセクション1ウィジェット'),
		'description'   => __('ホームページのセクション1にウィジェット先を表示されます。'),
		'before_widget' => '<div class="inner">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 itemprop="headline">',
		'after_title'   => '</h2>',
	));
	register_sidebar(array(
		'id'            => 'sidebar-2',
		'name'          => __('ホームページのセクション2ウィジェット'),
		'description'   => __('ホームページのセクション2にウィジェット先を表示されます。'),
		'before_widget' => '<div class="inner">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 itemprop="headline">',
		'after_title'   => '</h2>',
	));
	register_sidebar(array(
		'id'            => 'sidebar-3',
		'name'          => __('ホームページのセクション3ウィジェット'),
		'description'   => __('ホームページのセクション3にウィジェット先を表示されます。'),
		'before_widget' => '<div class="home-3-item text-left">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 itemprop="headline">',
		'after_title'   => '</h2>',
	));
	register_sidebar(array(
		'id'            => 'sidebar-5',
		'name'          => __('ホームページのセクション5ウィジェットの内容'),
		'description'   => __('ホームページのセクション5にウィジェット先を表示されます。'),
		'before_widget' => '<div class="inner">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="text-center" itemprop="headline">',
		'after_title'   => '</h2>',
	));
	register_sidebar(array(
		'id'            => 'sidebar-6',
		'name'          => __('ホームページのセクション6ウィジェットの内容'),
		'description'   => __('ホームページのセクション6にウィジェット先を表示されます。'),
		'before_widget' => '<div class="home-6-item col-auto">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 itemprop="headline">',
		'after_title'   => '</h2>',
	));
}
add_action('widgets_init', 'add_theme_custom_sidebar');
?>
