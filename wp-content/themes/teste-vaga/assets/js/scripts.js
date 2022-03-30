(function(){
  "use strict";

  // var swiper = new Swiper(".#swiper-plataformar", {
  //   slidesPerView: 3,
  //   spaceBetween: 30,
  //   pagination: {
  //     el: ".swiper-pagination",
  //     clickable: true,
  //   },
  // });

  /*Swiper plataforma */
  if (jQuery('#swiper-plataforma').length > 0) {
    var swiperPlataforma = new Swiper ('#swiper-plataforma', {
      breakpoints: {
        575: {
          slidesPerView: 2,
          slidesPerColumn: 1,
          spaceBetween: 0,
        },
        768: {
          slidesPerView: 3,
          slidesPerColumn: 1,
          spaceBetween: 0,
        }
      },
      slidesPerView: 1,
      centeredSlides: false,
      spaceBetween: 30,
      loop: false,
      direction: 'horizontal',
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        prevEl: '.swiper-button-prev',
        nextEl: '.swiper-button-next',
      },
    });
  }

  jQuery('#calculeModal').on('shown.bs.modal', function (e) {
    var numTedMes = jQuery('#num-ted-mes').val();
    var valorTed = jQuery('#valor-ted').val();
    var totalTedMes = numTedMes * valorTed;
    var desconto = 0.53;
    var resultado = totalTedMes - (totalTedMes * desconto);
    jQuery('.results').html(new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(resultado));
  })

  // jQuery('#valor-ted').keyup(function(e){
  //   e.preventDefault();
  //   var valor = parseFloat(jQuery('#valor-ted').val());
  //   console.log(valor);
  //   console.log(new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(valor).replace(/R\$\s/, ''));
  //   jQuery('#valor-ted').val(new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(valor).replace(/R\$\s/, ''));
  //   return false;
  // });

  jQuery('#valor-ted').inputmask('currency');  //static mask


   /*Rolando até a seção */
  jQuery('.scroll-to').on('click', function () {
    var id = jQuery(this).attr('href');
    var diferencaTopo = 90;
    if(jQuery(window).width() <= 991) {
      diferencaTopo = 85;
    }
    jQuery('html, body').animate({
      scrollTop: jQuery(id).offset().top - diferencaTopo
  }, 1000);
  return false;
  });

  /*efeito surgir */
  AOS.init();

  // range slider

  var rangesSlider = document.getElementById("num-ted-mes");
  var rangesBullet = document.getElementById("ted-bullet");

  rangesSlider.addEventListener("input", showSliderValue, false);

  function showSliderValue() {
    rangesBullet.innerHTML = rangesSlider.value;
    var bulletPosition = (rangesSlider.value /rangesSlider.max);
    rangesBullet.style.left = (bulletPosition * 96) + "%";
}

function rangeSlides(value) {
  document.getElementById('ted-bullet').innerHTML = value;
}




//   var rangeSlider = document.getElementById("rs-range-line");
//   var rangeBullet = document.getElementById("rs-bullet");

//   rangeSlider.addEventListener("input", showSliderValue, false);

//   function showSliderValue() {
//     rangeBullet.innerHTML = rangeSlider.value;
//     var bulletPosition = (rangeSlider.value /rangeSlider.max);
//     rangeBullet.style.left = (bulletPosition * 578) + "px";
// }

})();