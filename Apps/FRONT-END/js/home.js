const toggleNaik = document.querySelector(".toggle-naik");
// const container = document.querySelector('.container');
const Telsradio = document.querySelector(".tentang");
const Tentang = document.querySelector(".tentang");
const Musik = document.querySelector(".musik");
const Berita = document.querySelector(".berita");

window.onscroll = function () {
  scrollFunction();
};

Telsradio.addEventListener("click", function () {
  $("html, body").animate(
    {
      scrollTop: $("#anchr-satu").offset().top,
    },
    300
  );
});

Tentang.addEventListener("click", function () {
  $("html, body").animate(
    {
      scrollTop: $("#anchr-dua").offset().top,
    },
    300
  );
});

Musik.addEventListener("click", function () {
  $("html, body").animate(
    {
      scrollTop: $("#anchr-tiga").offset().top,
    },
    300
  );
});

Berita.addEventListener("click", function () {
  $("html, body").animate(
    {
      scrollTop: $("#anchr-empat").offset().top,
    },
    300
  );
});

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    // summon tombol
    toggleNaik.style.display = "block";
  } else {
    // jika sudah diatas tombol akan ilang
    toggleNaik.style.display = "none";
  }
}

toggleNaik.addEventListener("click", function () {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
});

// aos trigger script
AOS.init();
