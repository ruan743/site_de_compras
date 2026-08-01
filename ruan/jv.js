let btn_esquerda = document.getElementById("esquerda");
let btn_direita = document.getElementById("direita");
let btn_direita = document.getElementById("direita");
let vitrine = document.getElementById("vitrine");

function arrasta_esquerda(){
    vitrine.style.transform = 'translatex(0px)';
    vitrine.style.transition = "1.0s";

}
function arrasta_direita(){
    vitrine.style.transform = 'translatex(-450px)';
    vitrine.style.transition = "1.0s";
}