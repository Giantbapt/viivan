window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	console.log('Hello céline');
  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {

    // document.getElementById("logo").style.fontSize = "25px";
    document.getElementById("navbar").style.zIndex = "1";
    // document.getElementById("banner").style.height = "0px";
    // document.getElementById("viivan-gif").style.height = "0px";
    // document.getElementById("container").style.paddingTop = "90px";
  } 
}