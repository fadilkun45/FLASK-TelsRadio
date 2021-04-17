const Playbtn = document.querySelector("#play");
const Time = document.querySelector(".time");
const Status = document.querySelector(".status");
const Countdown = document.querySelector(".countdown");

const int = setInterval(() => {
  fetch("http://206.189.47.75:8000/status-json.xsl")
    .then((res) => res.json())
    .then((res) => {
    //   console.log(res["icestats"]["source"]);
      if (res["icestats"]["source"] == undefined || audio == undefined) {
        Status.innerHTML =
        `<p>status : <span style="color : red ;">offline</span></p>` ;
        clearInterval(int, 100);
        tes();
        setTimeout(() => {
          location.reload(true);
        }, 21000);
      } else {
       
        Status.innerHTML = ` <p>status : <span style="color : green ;">Online</span></p>`;
    }
    });
}, 2000);

function tes() {
  var count = 20,
    timer = setInterval(function () {
        Countdown.style.display = "block"
      Countdown.innerHTML = ` <p>karena radio offline web akan refresh dalam : ${count--}</p>`;
      Playbtn.innerHTML = `<img src="img/radio play.png">`;
      audio.pause()
      if (count == 0) clearInterval(timer);
    }, 1000);
}

let musik = "http://206.189.47.75:8000/radio";
let audio = new Audio();
audio.src = musik;
audio.play()
Playbtn.innerHTML = `<img src="img/radio pause.png">`;


Playbtn.addEventListener("click", () => {
  if (audio.paused) {
    audio.play();
    Playbtn.innerHTML = `<img src="img/radio pause.png">`;
  } else {
    audio.pause();
    Playbtn.innerHTML = `<img src="img/radio play.png">`;
  }
});

function timeFormat(time) {
  return Math.floor(time / 60) + ":" + ("0" + Math.floor(time % 60)).slice(-2);
}

audio.addEventListener("timeupdate", () => {
  Time.innerText = `${timeFormat(audio.currentTime)}`;
});
