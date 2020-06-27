<?php
require get_template_directory() . '/inc/customizer.php';
require get_template_directory() . '/widget/register.php';
if ( ! file_exists( get_template_directory() . '/inc/class-kslink-bootstrap-navwalker.php' ) ) {
	// File does not exist... return an error.
	return new WP_Error( 'class-wp-bootstrap-navwalker-missing', __( 'It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker' ) );
} else {
	// File exists... require it.
	require_once get_template_directory() . '/inc/class-kslink-bootstrap-navwalker.php';
}
if ( ! function_exists( 'add_custom_theme_setup' ) ) :
	function add_custom_theme_setup() {
		add_theme_support( 'automatic-feed-links' );
    add_theme_support( 'title-tag' );
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 79,
				'width'       => 22,
				'flex-height' => true,
        'flex-width'  => true,
			)
		);
		add_theme_support( 'post-thumbnails' );
		register_nav_menus(
			array(
				'primary' => __( 'Top Menu' ),
			)
		);
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'script',
				'style',
			)
		);
		add_theme_support(
			'post-formats',
			array(
				'aside',
				'image',
				'video',
				'quote',
				'link',
				'gallery',
				'status',
				'audio',
				'chat',
			)
		);
		add_theme_support( 'editor-styles' );
		add_theme_support( 'wp-block-styles' );
		add_theme_support( 'responsive-embeds' );
		add_theme_support( 'customize-selective-refresh-widgets' );
	}
endif;
add_action( 'after_setup_theme', 'add_custom_theme_setup' );

function add_theme_script()
{
  wp_enqueue_style('bootstrap', get_template_directory_uri() . '/assets/bootstrap-4/css/bootstrap.min.css', array(), '4.0');
  wp_enqueue_style('open-iconic', get_template_directory_uri() . '/assets/open-iconic/font/css/open-iconic-bootstrap.min.css', array(), '1.1.0');
  wp_enqueue_style('theme-style', get_stylesheet_uri(), array(), '');
  wp_enqueue_script('bootstrap', get_template_directory_uri() . '/assets/bootstrap-4/js/bootstrap.bundle.min.js', array('jquery'), '4.0', true);
  wp_enqueue_script('theme-function', get_template_directory_uri() . '/assets/js/function.js', array('jquery'), '1.0.0', true);
}
add_action('wp_enqueue_scripts', 'add_theme_script');
