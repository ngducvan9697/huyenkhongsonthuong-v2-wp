setTimeout(() => {
  let preloader: HTMLElement = document.querySelector(".preload")!;

  if (preloader) {
    preloader.classList.add("close");
  }
}, 500);

function attachToggleClassForElement(
  objectAttach: string,
  objectDestination: string,
  affectClass: string,
  isTriggerParrent?: boolean
) {
  let element: HTMLElement = document.querySelector(objectAttach)!;

  if (element) {
    element.addEventListener("click", () => {
      let destination: HTMLElement = isTriggerParrent
        ? element.parentElement!
        : document.querySelector(objectDestination)!;

      if (destination) {
        destination.classList.toggle(affectClass);
      }
    });
  }
}

attachToggleClassForElement(".menu-btn", ".navbar", "show");
attachToggleClassForElement(".menu-item-has-children a", "", "show", true);

attachToggleClassForElement(".mail-icon", ".newsletter-container", "show");
attachToggleClassForElement(
  ".newsletter-container .close-element",
  ".newsletter-container",
  "show"
);
attachToggleClassForElement(
  ".close-contact-form",
  ".newsletter-container",
  "show"
);

attachToggleClassForElement(".search-icon", ".search-bg", "show");
attachToggleClassForElement(".search-bg .close-element", ".search-bg", "show");
attachToggleClassForElement(".close-search", ".search-bg", "show");

let headerSwiper = new Swiper(".main-slider-container", {
  loop: true,
  spaceBetween: 30,
  effect: "fade",
  allowTouchMove: false,
  autoplay: {
    delay: 10000,
    disableOnInteraction: false,
  },
  breakpoints: {
    320: {
      allowTouchMove: true,
    },
    991: {
      allowTouchMove: false,
    },
  },
});

var miniSwiper = new Swiper(".mini-slider-container", {
  loop: true,
  slidesPerView: 3,
  slidesPerGroup: 1,
  spaceBetween: 25,
  thumbs: {
    swiper: headerSwiper,
  },
  autoplay: {
    delay: 10000,
    disableOnInteraction: false,
  },
});

var tagPostSwiper = new Swiper(".tag-swiper", {
  loop: true,
  navigation: {
    nextEl: ".tag-post .right-arrow ",
    prevEl: ".tag-post .left-arrow",
  },
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
});

var poemSwiper = new Swiper(".list-poem", {
  loop: true,
  direction: "vertical",
  // mousewheel: true,
  // sensitivity: 0.5,
  // thresholdDelta: 1,
  autoplay: {
    delay: 10000,
    disableOnInteraction: false,
  },
});

var gallerySwiper = new Swiper(".gallery-swiper", {
  loop: true,
  slidesPerView: 4,
  slidesPerGroup: 4,
  autoplay: {
    delay: 10000,
    disableOnInteraction: false,
  },
  breakpoints: {
    320: {
      slidesPerView: 1,
      slidesPerGroup: 1,
    },
    479: {
      slidesPerView: 2,
      slidesPerGroup: 2,
    },
    767: {
      slidesPerView: 4,
      slidesPerGroup: 4,
    },
  },
});

// Parallax
var imagePoem = document.getElementsByClassName("bg-parallax-poem");
var imageIntroduce = document.getElementsByClassName("bg-parallax-intro");
new simpleParallax(imagePoem, {
  delay: 0.6,
  transition: "cubic-bezier(0,0,0,4)",
});
new simpleParallax(imageIntroduce, {
  delay: 0.3,
  scale: 1.3,
  overflow: true,
  transition: "cubic-bezier(0,0,0,4)",
});

// Gallery

//

var lastScrollTop = 0;
var navigationElement: HTMLElement = document.querySelector(".navigation")!;

function hideNavigation() {
  if (navigationElement && navigationElement.dataset.isShow === "true") {
    navigationElement.style.top = "-125px";
    navigationElement.dataset.isShow = "false";
  }
}

function showNavigation() {
  if (navigationElement && navigationElement.dataset.isShow === "false") {
    navigationElement.style.top = "0%";
    navigationElement.dataset.isShow = "true";
  }
}

// element should be replaced with the actual target element on which you have applied scroll, use window in case of no target element.
window.addEventListener(
  "scroll",
  function () {
    // or window.addEventListener("scroll"....
    var st = window.pageYOffset || document.documentElement.scrollTop; // Credits: "https://github.com/qeremy/so/blob/master/so.dom.js#L426"
    if (st > lastScrollTop) {
      hideNavigation();
      // downscroll code
    } else {
      showNavigation();
    }
    lastScrollTop = st <= 0 ? 0 : st; // For Mobile or negative scrolling
  },
  false
);

window.addEventListener("resize", mainReponsive);
