
 var y=0;
 function dlScroll(){
     per=Math.floor(.1*((document.documentElement&&document.documentElement.scrollTop||document.body&&document.body.scrollTop)-y));
     var sTop=parseInt(document.getElementById("ad1").style.top)+per+"px";
     document.getElementById("ad1").style.top=sTop;
     document.getElementById("ad2").style.top=sTop;
     y+=per;
 }
 window.setInterval(dlScroll,1);
