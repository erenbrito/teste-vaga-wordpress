<?php
require 'assets/inc/customizer.php';



function carrega_scripts(){
	
	wp_enqueue_style( 'bootstrap', 		get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(), '1.0', 'all');

	wp_enqueue_style( 'aos-efeito-surgir', 		get_template_directory_uri() . '/assets/css/aos.css', array(), '1.0', 'all');
	
	wp_enqueue_style( 'header', 		get_template_directory_uri(). '/assets/css/style.css', array(), '1.0', 'all');

	wp_enqueue_style( 'swipercss', 		get_template_directory_uri() . '/assets/css/swiper-bundle.min.css', array(), '1.0', 'all');
	
	wp_enqueue_script( 'bootstrap',     get_template_directory_uri(). '/assets/js/vendor/bootstrap.min.js', array('jquery'), null, true);

	wp_enqueue_script( 'swiper', 		get_template_directory_uri(). '/assets/js/vendor/swiper-bundle.min.js', array('jquery'), null, true);
	
	wp_enqueue_script( 'inputmask', 		get_template_directory_uri(). '/assets/js/vendor/jquery.inputmask.min.js', array('jquery'), null, true);
	
	wp_enqueue_script( 'waypoints', 	get_template_directory_uri(). '/assets/js/vendor/waypoints.min.js', array('jquery'), null, true);
	
	wp_enqueue_script( 'aos-efeito-surgir', 		get_template_directory_uri(). '/assets/js/vendor/aos.js', array('jquery'), null, true);

	wp_enqueue_script( 'scrollreveal', 		get_template_directory_uri(). '/assets/js/vendor/scrollreveal.min.js', array('jquery'), null, true);
	
	wp_enqueue_script( 'scripts', 		get_template_directory_uri(). '/assets/js/scripts.js', array('jquery'), null, true);
	
}

add_action( 'wp_enqueue_scripts', 'carrega_scripts');


function custom_excerpt_length( ) {
	return 14;
}
add_filter( 'excerpt_length', 'custom_excerpt_length');
// This will add a filter on `excerpt_more` that returns an empty string.
add_filter( 'excerpt_more', '__return_empty_string' ); 



add_theme_support('custom-background');
add_theme_support('custom-header');
add_theme_support( 'post-thumbnails' ); 
add_theme_support( 'custom-logo' );

add_filter('widget_tag_cloud_args', 'erikasarti_personaliza_widget_tags');
add_filter( 'get_the_archive_title', 'my_theme_archive_title' );


@ini_set( 'upload_max_size' , '64M' );
@ini_set( 'post_max_size', '64M');
@ini_set( 'max_execution_time', '300' );

if( function_exists('acf_add_options_page') ) {
	acf_add_options_page(array(
		'page_title' 	=> 'Detalhes layout',
		'menu_title'	=> 'Detalhes layout',
		'menu_slug' 	=> 'detalhes-layout',
		'capability'	=> 'edit_posts',
		'redirect'		=> false,
		'icon_url' 		=> 'dashicons-admin-customizer',
		'position' 		=> 26
	));
}

?>