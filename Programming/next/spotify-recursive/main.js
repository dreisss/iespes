function getSections(callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", "./data.json", true);
    rawFile.onreadystatechange = function() {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}

const main_view = document.querySelector("#main-view")

var sections = [];
getSections(function(text){ sections = JSON.parse(text); });

function update_main() {

    let album_number = 1;
    console.log(innerWidth)

    album_number = innerWidth / 300
    if (innerWidth < 800) album_number = 2
    if (innerWidth < 700) album_number = 1

    main_view.innerHTML = ""
    sections.map(section => {
        main_view.innerHTML += `
        <div class="section-start flex-between-end">
            <a href="" class="section-name-a">
                ${section.name}
            </a>

            <a href="" class="see-all-a">
                VER TUDO
            </a>
        </div>

        <section class="section-view flex-row-baseline"></section>`

        sect = main_view.lastChild
        for (let i = 0; i < album_number && section.albums[i]; i++)
        {
            sect.innerHTML += `
            <div class="album-card flex-column-center">
                <img src="${section.albums[i]["image-src"]}" class="album-card-image">

                <h4 class="album-card-name">${section.albums[i].name}</h4>

                <p class="album-card-description">${section.albums[i].description}</p>
            </div>`
        }

    })
}

window.onresize = update_main
window.onload = update_main
