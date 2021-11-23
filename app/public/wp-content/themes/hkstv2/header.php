<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta content="Huyền Không Sơn Thượng - Cõi Phật giữa chốn trần gian" name="description" />
  <meta content="Chùa Huyền Không Sơn Thượng - Huế" property="og:title" />
  <meta content="Huyền Không Sơn Thượng - Cõi Phật giữa chốn trần gian" property="og:description" />
  <meta content="Chùa Huyền Không Sơn Thượng - Huế" property="twitter:title" />
  <meta content="Huyền Không Sơn Thượng - Cõi Phật giữa chốn trần gian" property="twitter:description" />
  <meta property="og:type" content="website" />
  <meta content="summary_large_image" name="twitter:card" />
  <meta content="width=device-width, initial-scale=1" name="viewport" />

  <link rel="shortcut icon" href="<?php echo get_template_directory_uri() ?>./assets/images/logo.png" type="image/x-icon" />
  <!-- <link rel="stylesheet" href="libs/PhotoSwipe/photoswipe.css"> -->
  <!-- <link rel="stylesheet" href="libs/PhotoSwipe/default-skin/default-skin.css"> -->
  <!-- <script
      src="https://kit.fontawesome.com/c1797aa80d.js"
      crossorigin="anonymous"
    ></script> -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />

  <?php
  wp_head();
  ?>
</head>

<body>
  <div class="content">
    <!-- <div class="preload base-section">
        <img src="<?php echo get_template_directory_uri() ?>./assets/images/logo.png" alt="" class="preloader-logo" />
      </div> -->

    <section class="navigation" data-is-show="true">
      <div class="announcement">
        <div class="announcement-container">
          <div class="announcement-box">
            <a class="announcement-box-content" href="">Đăng ký tham dự khóa học kỳ thứ 16!</a>
          </div>
          <a href="#" class="close-button-regular">
            <i class="bx bx-x"></i></a>
        </div>
      </div>
      <div class="navbar">
        <div class="navbar-content-wrapper">
          <a href="/" class="brand" aria-label="home">
            <?php
            if (function_exists('the_custom_logo')) {
              $custom_logo_id = get_theme_mod('custom_logo');
              $logo = wp_get_attachment_image_src($custom_logo_id, 'full');
              echo '<img src="' . esc_url($logo[0]) . '" alt="" class=" logo" />';
            }
            ?>

          </a>
          <nav class="nav-menu">
            <?php
            wp_nav_menu(array(
              'menu_class'        => "left-nav-menu", // (string) CSS class to use for the ul element which forms the menu. Default 'menu'.
              'theme_location'    => "primary_header_left", // (string) Theme location to be used. Must be registered with register_nav_menu() in order to be selectable by the user.
              'container'         => ''
            ));

            wp_nav_menu(array(
              'menu_class'        => "right-nav-menu",
              'theme_location'    => "primary_header_right",
              'container'          => ''
            ));
            ?>
          </nav>
          <div class="nav-container">
            <div class="nav-flex">
              <a href="#" class="menu-btn menu-icon"><i class='bx bx-menu'></i></a>
              <a href="#" class="mail-icon menu-icon"><i class="bx bx-envelope"></i></a>
              <a href="#" class="search-icon menu-icon"><i class="bx bx-search-alt-2"></i></a>
            </div>
          </div>
        </div>
      </div>
      <div class="newsletter-container">
        <div class="close-element"></div>
        <div class="newsletter-box">
          <div class="newletter-column left"></div>
          <div class="newletter-column right">
            <div class="center-content">
              <div class="title-big">Bản tin</div>
              <h4>Đăng ký để nhận thông báo bài viết mới!</h4>
              <div>Kính chúc bạn an lạc và hạnh phúc!</div>
            </div>
            <div class="form-newsletter">
              <form data-name="Pop Up Newsletter">
                <div class="flex">
                  <input type="text" class="cta-field" maxlength="256" name="Name" data-name="Name" placeholder="Tên" required="" /><input type="text" maxlength="256" name="Last-Name" data-name="Last Name" placeholder="Họ" class="cta-field last-name" />
                </div>
                <input type="email" class="cta-field full" maxlength="256" name="Email" data-name="Email" placeholder="Email" required="" /><input type="tel" maxlength="256" name="Mobile" data-name="Mobile" placeholder="Your Mobile" class="cta-field full" /><input type="submit" value="Đăng ký!" data-wait="Please wait..." class="submit-button" />
              </form>
              <div class="success-message">
                <img src="https://assets.website-files.com/6086e70e13f80b33a5b30495/6088c97c9c4703d178e9e5d8_checked.svg" />
                <div class="top-margin _10-pixels">
                  <div>Thank you! Your submission has been received!</div>
                </div>
              </div>
              <div class="error-message">
                <div>
                  Oops! Something went wrong while submitting the form.
                </div>
              </div>
            </div>
            <a href="#" class="close-contact-form"><i class="bx bx-x"></i></a>
          </div>
        </div>
      </div>
      <div class="search-bg">
        <div class="close-element"></div>
        <form class="search-box">
          <div class="center-text">
            <h4 class="search-text">Tìm kiếm</h4>
          </div>
          <div class="search-controls">
            <input type="search" placeholder="Nhập thông tin cần tìm..." name="query" maxlength="256" required="" autofocus="true" class="search-input" /><button type="submit" class="search-button">Tìm kiếm</button>
          </div>
        </form>
        <a href="#" class="close-search"><i class="bx bx-x"></i></a>
      </div>
    </section>