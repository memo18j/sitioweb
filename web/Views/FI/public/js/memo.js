////(function () {
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//
//// Get the image and insert it inside the modal - use its "alt" text as a caption
function clickimagen(tile, src) {
    console.log(tile);
    var modal = document.getElementById('myModal' + tile);
    var modalImg = document.getElementById('img'+tile);
    modal.style.display = "block";
    modalImg.src = src;
    console.log(modalImg);

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[tile];
//
//// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };
}
