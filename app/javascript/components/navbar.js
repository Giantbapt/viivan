window.onscroll = function() {scrollFunction()};

function scrollFunction() {

	console.log('Hello céline');
  if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {

    // document.getElementById("logo").style.fontSize = "25px";

    document.getElementById("navbar").style.zIndex = "4";
    document.getElementById("navbar").style.position = "fixed";
    document.getElementById("banner").classList.remove('banner-absolute');

    // document.getElementById("viivan-gif").style.height = "0px";
    // document.getElementById("container").style.paddingTop = "90px";
  }
}
