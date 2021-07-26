const Playbtn = document.querySelector("#play");
const Time = document.querySelector(".time");
const Status = document.querySelector(".status");
const Countdown = document.querySelector(".countdown");

const int = setInterval(() => {
  fetch("https://live.tomcatsquad.web.id:8443/status-json.xsl")
    .then((res) => res.json())
    .then((res) => {
    //   console.log(res["icestats"]["source"]);
      if (res["icestats"]["source"] == undefined || audio == undefined) {
        Status.innerHTML =
        `<p>Status : <span style="color : #ff0000 ;">Offline</span></p>` ;
        clearInterval(int, 100);
        tes();
        setTimeout(() => {
          location.reload(true);
        }, 21000);
      } else {
       
        Status.innerHTML = ` <p>Status : <span style="color : #08ff08 ;">Online</span></p>`;
    }
    });
}, 2000);

function tes() {
  var count = 20,
    timer = setInterval(function () {
        Countdown.style.display = "block"
      Countdown.innerHTML = ` <center><p>Radio sedang offline web akan refresh secara otomatis dalam waktu : ${count--} Detik</p></center>`;
      Playbtn.innerHTML = `<img src="static/assets/img/radio play.png">`;
      audio.pause()
      if (count == 0) clearInterval(timer);
    }, 1000);
}

let musik = "https://live.tomcatsquad.web.id:8443/stream";
let audio = new Audio();
audio.src = musik;
audio.play()
Playbtn.innerHTML = `<img src="static/assets/img/radio play.png">`;


Playbtn.addEventListener("click", () => {
  if (audio.paused) {
    audio.play();
    Playbtn.innerHTML = `<img src="static/assets/img/radio pause.png">`;
  } else {
    audio.pause();
    Playbtn.innerHTML = `<img src="static/assets/img/radio play.png">`;
  }
});

function timeFormat(time) {
  return Math.floor(time / 60) + " : " + ("0" + Math.floor(time % 60)).slice(-2);
}

audio.addEventListener("timeupdate", () => {
  Time.innerText = `${timeFormat(audio.currentTime)}`;
});

if(document.documentElement.clientWidth > 800 ){
  Playbtn.innerHTML = `<img src="img/radio pause.png">`;
} 