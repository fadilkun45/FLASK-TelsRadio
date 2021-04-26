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

const RenderA = document.querySelector("#renderA");
const RenderB = document.querySelector("#renderB");
const RenderTerkini = document.querySelector("#berita-terkini-render");
const RenderTrending = document.querySelector("#render-trending")
RenderA.innerHTML = " ";

fetch("http://api-tomcatsquad.herokuapp.com/api/v1/news/")
  .then((res) => res.json())
  .then((res) => {
    let title = [];
    var image = [];
    var link = [];
    console.log(res["results"][0]["author"]);
    for (i = 0; i <= 1 ; i++) {
      title.push(res["results"][i]["title"]);
      image.push(res["results"][i]["thumbnail"]);
      link.push(res["results"][i]["url"]);
    }
    //  console.log(title + image + link) ;
    RenderA.innerHTML = ` <div class="berita-a">
     <a href="${link[0]}">
         <img src="${image[0]}" alt="berita">
        ${title[0]}
     </a>
   </div>`;
    RenderB.innerHTML = `<div class="berita-b">
     <a href="${link[1]}">
      <img src="${image[1]}" alt="#">
      ${title[1]}</a>
     </div>`;
  }
)



fetch("http://api-tomcatsquad.herokuapp.com/api/v1/news/")
.then((res) => res.json())
.then(res => {

  RenderTerkini.innerHTML = " ";
  for(i = 0 ; i <= 4 ; i++ ){
    let title = res["results"][i]["title"];
    let image = res["results"][i]["thumbnail"];
    let link = res["results"][i]["url"];
    let tanggal = res["results"][i]["publish"];
    let author = res["results"][i]["author"];
    RenderTerkini.innerHTML += `<div class="artikel2">
    <a href="${link}">
        <img src="${image}" alt="thumbnail">
        <p>${title}</p>
        <p>${tanggal + " " +author}</p>
    </a>
  </div>`
  }
 
})

fetch("http://api-tomcatsquad.herokuapp.com/api/v1/news/")
.then((res) => res.json())
.then(res => {

  RenderTrending.innerHTML = " ";
  for(i = 5 ; i <= 9 ; i++ ){
    let title = res["results"][i]["title"];
    let image = res["results"][i]["thumbnail"];
    let link = res["results"][i]["url"];
    let tanggal = res["results"][i]["publish"];
    let author = res["results"][i]["author"];
    RenderTrending.innerHTML += `<div class="site">
    <a href="${link}">
        <img src="${image}" alt="thumbnail">
        <p>${title}</p>
        <p>${tanggal + " " +author}</p>
    </a>
</div>`
  }
 
})


