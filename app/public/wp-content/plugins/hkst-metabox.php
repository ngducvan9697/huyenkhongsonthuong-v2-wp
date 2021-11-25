<?php
/*
Plugin Name: HKST Meta Box
Author: Duc Van
Description: Additional information for post
*/



function hkst_meta_box()
{
    add_meta_box('additional-information', 'Thông tin bài viết', 'hkst_thongtin_output', 'post');
}
add_action("add_meta_boxes", 'hkst_meta_box');

function hkst_thongtin_output($post)
{
    $show_on_main_slider = get_post_meta($post->ID, '_show_on_main_slider', true);
    wp_nonce_field('save_post', 'post_nonce');
    echo ('<input type="checkbox" id="show_on_main_slider" name="show_on_main_slider"' . $show_on_main_slider . '  value="checked"></input>');
    echo ('<label for="show_on_main_slider">Hiển thị trong slider chính</label>');
}

function hkst_thongtin_save($post_id)
{
    if (!isset($_POST['show_on_main_slider']) || !isset($_POST['post_nonce']) || !wp_verify_nonce($_POST['post_nonce'], 'save_post')) {
        return;
    }

    $show_on_main_slider = sanitize_text_field($_POST['show_on_main_slider']);
    update_post_meta($post_id, "_show_on_main_slider", $show_on_main_slider);
}
add_action("save_post", 'hkst_thongtin_save');
