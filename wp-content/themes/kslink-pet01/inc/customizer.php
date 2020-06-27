<?php

require get_template_directory(  ) . '/inc/customizer-functions.php';

$front_page_id = get_option( 'page_on_front' );

if (!defined('THE_CUSTOMIZE_DEFAULT')) {
	define('THE_CUSTOMIZE_DEFAULT', array(
		'phone'							=> array(
			'label' 					=> '電話番号',
			'default' 				=> '000-000-0000',
			'section' 				=> 'settings',
			'selector' 				=> '.site-phone',
			'render_callback' => 'get_site_phone',
		),
		'copyright'					=> array(
			'label' 					=> 'Copy right',
			'default' 				=> '&copy;2020 Trimming salon WONDER All Rights Reserved',
			'section' 				=> 'settings',
			'selector' 				=> '.site-copyright',
			'render_callback' => 'get_site_copyright',
		),
		'menu_page'					=> array(
			'label' 					=> 'メニューページ',
			'default' 				=> $front_page_id,
			'section' 				=> 'settings',
			'selector' 				=> '.home-menu',
			'render_callback' => 'get_home_menu_content',
		),
		'menu_description'	=> array(
			'label' 					=> 'メニューの説明',
			'default' 				=> '当店では、種類やお好みに応じてお選びいただけるように幅広いメニューをご用意しております。初めての方は、カウンセリングから行い 経験豊富なトリマーがびったりのプランをご案内します。',
			'section' 				=> 'settings',
			'selector' 				=> '.menu-description',
			'render_callback' => 'get_menu_description',
		),
		'menu_link'					=> array(
			'label' 					=> 'メニューのリンク',
			'default' 				=> $front_page_id,
			'section' 				=> 'settings',
			'selector' 				=> 'section.section-4 .action a',
			'render_callback' => 'get_menu_link',
		)
	));
}
function kslink_register_customize( $wp_customize ) {
	if (!defined('THE_CUSTOMIZE_DEFAULT')) {
		return true;
	}
	$customizes = THE_CUSTOMIZE_DEFAULT;
	foreach ($customizes as $key => $item_value) {
		if($item_value['selector'] !== null) {
			$wp_customize->selective_refresh->add_partial($key, array(
				'selector' 				=> $item_value['selector'],
				'render_callback' => $item_value['render_callback'],
			));
		}
	}
	// add custom section
	$wp_customize->add_section('settings', array(
		'title'			=> __('Settings'),
		'priority' 	=> 301
	));
	// add field: phone
	$wp_customize->add_setting( 'phone',
	array(
		'default'    => $customizes['phone']['default'],
		'transport'  => 'postMessage',
	) );
	// add control
	$wp_customize->add_control( new WP_Customize_Control(
	$wp_customize,
	'phone',
	array(
		'label'      	=> __( $customizes['phone']['label'], 'kslink' ),
		'settings'   	=> 'phone',
		'section'    	=> $customizes['copyright']['section'],
		'type'    		=> 'tel',
	)));

	// add field: copyright
	$wp_customize->add_setting( 'copyright',
	array(
		'default'    => $customizes['copyright']['default'],
		'transport'  => 'postMessage',
	) );
	// add control
	$wp_customize->add_control( new WP_Customize_Control(
	$wp_customize,
	'copyright',
	array(
		'label'      	=> __( $customizes['copyright']['label'], 'kslink' ),
		'settings'   	=> 'copyright',
		'section'    	=> $customizes['copyright']['section'],
		'type'    		=> 'textarea',
	)));

	// add field: menu_page
	$wp_customize->add_setting( 'menu_page',
	array(
		'default'    => $customizes['menu_page']['default'],
		'transport'  => 'postMessage',
	) );
	// add control
	$wp_customize->add_control( new WP_Customize_Control(
	$wp_customize,
	'menu_page',
	array(
		'label'      	=> __( $customizes['menu_page']['label'], 'kslink' ),
		'settings'   	=> 'menu_page',
		'section'    	=> $customizes['menu_page']['section'],
		'type'    		=> 'dropdown-pages',
	)));

	// add field: menu_description
	$wp_customize->add_setting( 'menu_description',
	array(
		'default'    => $customizes['menu_description']['default'],
		'transport'  => 'postMessage',
	) );
	// add control
	$wp_customize->add_control( new WP_Customize_Control(
	$wp_customize,
	'menu_description',
	array(
		'label'      	=> __( $customizes['menu_description']['label'], 'kslink' ),
		'settings'   	=> 'menu_description',
		'section'    	=> $customizes['menu_description']['section'],
		'type'    		=> 'textarea',
	)));

	// add field: menu_link
	$wp_customize->add_setting( 'menu_link',
	array(
		'default'    => $customizes['menu_link']['default'],
		'transport'  => 'postMessage',
	) );
	// add control
	$wp_customize->add_control( new WP_Customize_Control(
	$wp_customize,
	'menu_link',
	array(
		'label'      	=> __( $customizes['menu_link']['label'], 'kslink' ),
		'settings'   	=> 'menu_link',
		'section'    	=> $customizes['menu_link']['section'],
		'type'    		=> 'dropdown-pages',
	)));
}
add_action( 'customize_register', 'kslink_register_customize', 11 );

function add_theme_configs($oldname, $oldtheme = false)
{
	$customizes = THE_CUSTOMIZE_DEFAULT;
	// set default theme mod if empty
	foreach($customizes as $key => $value) {
		$val = get_theme_mod($key, false);
		if(!$val) {
			set_theme_mod( $key, $customizes[$key]['default'] );
		}
	}
}
add_action("after_switch_theme", "add_theme_configs", 10 , 2);
?>
