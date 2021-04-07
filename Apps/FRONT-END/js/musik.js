const BtnOpenGnre = document.querySelector("#open-more-genre");
const BtnClsdGnre = document.querySelector("#close-more-genre");
const MoreGenre = document.querySelector(".more-genre");
const GenreContent = document.querySelectorAll(".genre-content");

BtnOpenGnre.addEventListener("click", () => {
  MoreGenre.style.display = "flex";
  BtnOpenGnre.style.display = "none";
  MoreGenre.style.marginTop = "-40px ";
});

BtnClsdGnre.addEventListener("click", () => {
  MoreGenre.style.display = "none ";
  BtnOpenGnre.style.display = "block";
});

GenreContent.forEach((content) => {
    // content diklik dan genrecontent dicari setelah ketemu lalu dihapus yang aktif
  content.addEventListener("click", () => {
    let GenreContentActive = document.querySelectorAll(".genre-aktif");
    GenreContentActive.forEach((aktif) => {
      aktif.classList.remove("genre-aktif");
    });
    content.classList.toggle("genre-aktif");
  });
});






//  musik player 

const load = document.querySelector(".load");
const MusikTrack = document.querySelector("#musik-track");
const MusikTime = document.querySelector("#timer");
const MusikTotal = document.querySelector("#timer2");
const Volume = document.querySelector("#volume");

// dumny musik
var musik = new Audio();
musik.src = "musik2.mp3";
musik.play();
calling();

MusikTrack.addEventListener("change", () => {
  musik.currentTime = MusikTrack.value;
})

function timeFormat(time) {
  return Math.floor(time / 60) + ":" + ("0" + Math.floor(time % 60)).slice(-2);
}

musik.addEventListener("timeupdate", () => {
MusikTrack.value = musik.currentTime;
MusikTime.innerText = `${timeFormat(musik.currentTime)}`;
MusikTotal.innerText = `${timeFormat(musik.duration)}`;
let position = musik.currentTime / musik.duration;
load.style.width = position * 100 + "%";

});

musik.addEventListener("loadedmetadata", () => {
  MusikTrack.value = musik.currentTime;
  MusikTrack.setAttribute("max", musik.duration);
});

Volume.addEventListener("mousemove", () => {
calling();
});

function calling() {
musik.volume = Volume.value / 100;
// Musikvalue.innerHTML = `<p>${Volume.value}</p>`;
var x = Volume.value;
var color =
`linear-gradient(90deg, rgb(5,5,5)` +
x +
"%, rgb(219,219,219)" +
x +
"%)";
Volume.style.background = color;
console.log(x)
}
