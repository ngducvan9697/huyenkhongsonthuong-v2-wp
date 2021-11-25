<?php
// require_once( __DIR__ . '/inc/class-custom-nav-walker.php');

function theme_support()
{
    add_theme_support('title-tag');
    add_theme_support('custom-logo');
    add_theme_support('post-thumbnails');
}

add_action('after_setup_theme', 'theme_support');

function menus()
{
    $locations = array('primary_header_left' => "Header menu left",  'primary_header_right' => "Header menu right", 'footer_main_linked' => "Footer Main Linked", 'footer_category' => "Footer Category", 'footer_social' => "Footer Social");

    register_nav_menus($locations);
}

add_action('init', 'menus');

function wp_include_css()
{
    $version = wp_get_theme()->get('Version');
    wp_enqueue_style('main-style', get_template_directory_uri() . '/assets/css/style.css', array('swiper-style'), $version, 'all');
    wp_enqueue_style('swiper-style', get_template_directory_uri() . '/assets/libs/swiper-bundle.min.css', array(), '7.0.7', 'all');
}

add_action('wp_enqueue_scripts', 'wp_include_css');

function wp_include_js()
{
    $version = wp_get_theme()->get('Version');

    wp_enqueue_script('main-script', get_template_directory_uri() . '/assets/js/script.js', array('swiper-script', 'parallax-script'), $version, true);
    wp_enqueue_script('swiper-script', get_template_directory_uri() . '/assets/libs/swiper-bundle.min.js', array(), '7.0.7', true);
    wp_enqueue_script('parallax-script', get_template_directory_uri() . '/assets/libs/simple-parallax.min.js', array(), '5.6.1', true);
    // wp_enqueue_script( 'main-script', get_template_directory_uri() . '/assets/js/index.js', array(), false, false );
}

add_action('wp_enqueue_scripts', 'wp_include_js');
