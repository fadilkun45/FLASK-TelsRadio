const BtnOpenGnre = document.querySelector("#open-more-genre");
const BtnClsdGnre = document.querySelector("#close-more-genre");
const MoreGenre = document.querySelector(".more-genre");
const GenreContent = document.querySelectorAll(".genre-content");
const renderResult = document.querySelector("#genre-render");
const GenreJudulRender = document.querySelector(".genre-judul");
const RenderInfo = document.querySelector("#RenderInfo");
// musik player
const load = document.querySelector(".load");
const MusikTrack = document.querySelector("#musik-track");
const MusikTime = document.querySelector("#timer");
const MusikTotal = document.querySelector("#timer2");
const Volume = document.querySelector("#volume");
const playbtn = document.querySelector("#play");
const nextbtn = document.querySelector("#next");
const prevbtn = document.querySelector("#prev");

BtnOpenGnre.addEventListener("click", () => {
    MoreGenre.style.display = "flex";
    BtnOpenGnre.style.display = "none";
    MoreGenre.style.marginTop = "-40px ";
});

BtnClsdGnre.addEventListener("click", () => {
    MoreGenre.style.display = "none ";
    BtnOpenGnre.style.display = "block";
});

window.onload = listrender((data = "campur_sari"));
var musik = [];

let audio = new Audio();
let currentsong = 0;

playbtn.addEventListener("click", () => {
    if (audio.paused) {
        audio.play();
        playbtn.innerHTML = `<img src="img/pause.png">`;
    } else {
        audio.pause();
        playbtn.innerHTML = '<img src="img/button 1.png">';
    }
});

GenreContent.forEach((content) => {
    // content diklik dan genrecontent dicari setelah ketemu lalu dihapus yang aktif
    content.addEventListener("click", () => {
        let GenreContentActive = document.querySelectorAll(".genre-aktif");
        GenreContentActive.forEach((aktif) => {
            aktif.classList.remove("genre-aktif");
            renderResult.innerHTML = "";
        });
        content.classList.toggle("genre-aktif");
        const data = content.getAttribute("genre");
        const judul = content.getAttribute("judul");
        listrender(data);
        GenreJudulRender.innerHTML = `<h4>${judul}</h4>`;
        renderResult.classList.add("animasi");
        musik.length = 0;
        console.log(musik.length);
    });
});

var judul = [];
var channel = [];
var thumbnail = [];

const loadAll = document.querySelector(".load-semua");
loadAll.addEventListener("click", () => {
    let GenreContentActive = document.querySelectorAll(".genre-aktif");
    GenreContentActive.forEach((aktif) => {
        const data = aktif.getAttribute("genre");
        listrenderMore(data);
        console.log(data);
    });
    renderResult.innerHTML = "";
});

function listrender(data) {
    fetch("https://api-tomcatsquad.herokuapp.com/api/v1/music/?genre=" + data)
        .then((res) => res.json())
        .then((res) => {
            renderResult.classList.remove("animasi");
            judul = [];
            channel = [];
            thumbnail = [];
            for (i = 0; i < res["results"].length; i++) {
                musik.push(res["results"][i]["url"]);
                judul.push(res["results"][i]["title"]);
                channel.push(res["results"][i]["channel_name"]);
                thumbnail.push(res["results"][i]["thumbnail"]);
                renderResult.innerHTML += `<div class="musik-box" urutan="${i}" judul="${judul[i]}" thumbnail="${thumbnail[i]}" channel="${channel[i]}">
                <div class="sec-1">
                    <img src="${thumbnail[i]}">
                    <div class="judul-dan-channel">
                        <h4>${judul[i]}</h4>
                        <p>${channel[i]}</p>
                    </div>
                </div>
            </div>`;
            }
            console.log(musik.length)
            if (musik.length == 0) {
                renderResult.innerHTML = `<center class="notice">Maaf genre yang anda minta belum tersedia</center>`;
            }

            function nextmusic() {
                currentsong++
                if (currentsong > musik.length - 1) {
                    currentsong = 0;
                }

                setelmusic();
                RenderInfo.innerHTML = `<div class="musik-info">
                <img src="${thumbnail[currentsong]}" id="thumb">
                <div class="sec-1">
                <div class="judul-artis">
                <marquee behavior = "scroll"
                scrollamount="6">${judul[currentsong]}</marquee>
                <p>${channel[currentsong]}</p>
                </div>
                </div>`;
                Playbtn.innerHTML = `<img src="img/pause.png">`;
            }

            nextbtn.addEventListener("click", () => {
                nextmusic();
            });
            prevbtn.addEventListener("click", () => {
                prevmusic();
            });

            function setelmusic() {

                audio.src = musik[currentsong];
                audio.play();
                playbtn.innerHTML = `<img src="img/pause.png"/>`;
            }

            calling();

            MusikTrack.addEventListener("change", () => {
                audio.currentTime = MusikTrack.value;
            });

            function timeFormat(time) {
                return (
                    Math.floor(time / 60) + ":" + ("0" + Math.floor(time % 60)).slice(-2)
                );
            }

            audio.addEventListener("timeupdate", () => {
                MusikTrack.value = audio.currentTime;
                MusikTime.innerText = `${timeFormat(audio.currentTime)}`;
                MusikTotal.innerText = `${timeFormat(audio.duration)}`;
                let position = audio.currentTime / audio.duration;
                load.style.width = position * 100 + "%";
                if (audio.ended) {
                    nextmusic()
                    RenderInfo.innerHTML = `<div class="musik-info">
              <img src="${thumbnail[currentsong]}" id="thumb">
              <div class="sec-1">
                  <div class="judul-artis">
                  <marquee behavior = "scroll"
                  scrollamount="6">${judul[currentsong]}</marquee>
                      <p>${channel[currentsong]}</p>
                  </div>
              </div>`;
                    Playbtn.innerHTML = `<img src="img/pause.png">`;
                }
            });

            audio.addEventListener("loadedmetadata", () => {
                MusikTrack.value = audio.currentTime;
                MusikTrack.setAttribute("max", audio.duration);
            });

            Volume.addEventListener("mousemove", () => {
                calling();
            });

            function calling() {
                audio.volume = Volume.value / 100;
                // Musikvalue.innerHTML = `<p>${Volume.value}</p>`;
                var x = Volume.value;
                var color =
                    `linear-gradient(90deg, rgb(5,5,5)` +
                    x +
                    "%, rgb(219,219,219)" +
                    x +
                    "%)";
                Volume.style.background = color;
            }

            function prevmusic() {
                currentsong-- ;
                if (currentsong > musik.length - 1 ) {
                    currentsong = 1 ;
                    console.log(currentsong)
                }else if(currentsong == -1 ){
                  currentsong =  musik.length - 1 ;
                }
                setelmusic();
                RenderInfo.innerHTML = `<div class="musik-info">
                <img src="${thumbnail[currentsong]}" id="thumb">
                <div class="sec-1">
                    <div class="judul-artis">
                    <marquee behavior = "scroll"
                    scrollamount="6">${judul[currentsong]}</marquee>
                        <p>${channel[currentsong]}</p>
                    </div>
                </div>`;
                Playbtn.innerHTML = `<img src="img/pause.png">`;
               
            }

            const MusikBox = document.querySelectorAll(".musik-box");
            MusikBox.forEach((TesMusik) => {
                TesMusik.addEventListener("click", () => {
                    currentsong = TesMusik.getAttribute("urutan");
                    setelmusic();
                    RenderInfo.innerHTML = `<div class="musik-info">
         <img src="${TesMusik.getAttribute("thumbnail")}" id="thumb">
         <div class="sec-1">
             <div class="judul-artis">
             <marquee behavior = "scroll"
      scrollamount="6">${TesMusik.getAttribute("judul")}</marquee>
                 <p>${TesMusik.getAttribute("channel")}</p>
             </div>
         </div>`;
                });
            });

            console.log(musik.length - 1)

        }).catch((res) => {
            console.log(res);
        });
}