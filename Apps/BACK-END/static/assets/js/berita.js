const toggleNaik = document.querySelector(".toggle-naik");


if (document.documentElement.clientWidth < 800) {
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    // summon tombol
    toggleNaik.style.display = "block";
  } else {
    // jika sudah diatas tombol akan ilang
    toggleNaik.style.display = "none";
  }
}

toggleNaik.addEventListener ('click' ,function () {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
})
}

// aos trigger script
AOS.init();
