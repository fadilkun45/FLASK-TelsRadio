const toggleNaik = document.querySelector(".toggle-naik");

if (document.documentElement.clientWidth < 800) {
  window.onscroll = function () {
    scrollFunction();
  };

  function scrollFunction() {
    if (
      document.body.scrollTop > 20 ||
      document.documentElement.scrollTop > 20
    ) {
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
}

const RenderBerita = document.querySelector("#renderberita");
const RenderTerkini = document.querySelector("#berita-terkini-render");
const RenderTrending = document.querySelector("#render-trending")

fetch("https://api-tomcatsquad.herokuapp.com/api/v1/news/")
  .then((res) => res.json())
  .then((res) => {
    RenderBerita.innerHTML = ''
    let title = [];
    var image = [];
    var link = [];
    console.log(res["results"][0]["author"]);
    for (i = 0; i <= 1 ; i++) {
      title.push(res["results"][i]["title"]);
      image.push(res["results"][i]["thumbnail"]);
      link.push(res["results"][i]["url"]);
    }
    RenderBerita.innerHTML += `<div class="berita">
    <a href="${link[0]}">
        <img src="${image[0]}" alt="berita">
        <p>${title[0]}</p>
    </a>
</div>`
RenderBerita.innerHTML += `<div class="berita">
<a href="${link[1]}">
    <img src="${image[1]}" alt="berita">
    <p>${title[1]}</p>
</a>
</div>`
    //  console.log(title + image + link) ;
   
  }
)



fetch("https://api-tomcatsquad.herokuapp.com/api/v1/news/")
.then((res) => res.json())
.then(res => {

  RenderTerkini.innerHTML = " ";
  for(i = 0 ; i <= 4 ; i++ ){
    let title = res["results"][i]["title"];
    let image = res["results"][i]["thumbnail"];
    let link = res["results"][i]["url"];
    let desk = res["results"][i]["description"];
    let tanggal = res["results"][i]["publish"];
    let author = res["results"][i]["author"];
    RenderTerkini.innerHTML += `<div class="artikel2">
    <a href="${link}">
        <img src="${image}" alt="thumbnail">
        <p>${title}</p>
        <p>${desk}</p>
        <p>${tanggal + " " +author}</p>
    </a>
  </div>`
  }
 
})

fetch("https://api-tomcatsquad.herokuapp.com/api/v1/news/")
.then((res) => res.json())
.then(res => {

  RenderTrending.innerHTML = " ";
  for(i = 5 ; i <= 9 ; i++ ){
    let title = res["results"][i]["title"];
    let image = res["results"][i]["thumbnail"];
    let link = res["results"][i]["url"];
    let tanggal = res["results"][i]["publish"];
    let desk = res["results"][i]["description"];
    let author = res["results"][i]["author"];
    RenderTrending.innerHTML += `<div class="site">
    <a href="${link}">
        <img src="${image}" alt="thumbnail">
        <p>${title}</p>
        <p>${desk}</p>
        <p>${tanggal + " " +author}</p>
    </a>
</div>`
  }
 
})

const telsStreamRender = document.querySelector("#telstream-render")
// render telstream
fetch("https://api-tomcatsquad.herokuapp.com/api/v1/youtube/?channel_name=Tels%20Stream")
.then((res) => res.json())
.then((res) => {
  telsStreamRender.innerHTML = ''
  for(i = 0 ; i <= 2 ; i++ ){
    let link  = res["results"][i]["url"]
    telsStreamRender.innerHTML += `
    <iframe width="853" height="480" src="https://www.youtube.com/embed/${link}" frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen></iframe>`
  }
})









