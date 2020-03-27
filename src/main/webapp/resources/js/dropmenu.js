function mouseover(){
   $("#drop-menu").css("display","block")
   $(".menu .menu-box li:nth-child(1)").css("background-color","#f2f2f2")
    $(".menu li:nth-child(1) a").css("color","red")
}


function mousedown(){
  $("#drop-menu").css("display","none")
  $(".menu li").css("background-color","transparent")
  $(".menu li:nth-child(1) a").css("color","#000")
}

function mouseover1(){
   $("#drop-menu1").css("display","block")
   $(".menu .menu-box li:nth-child(2)").css("background-color","#f2f2f2")
    $(".menu li:nth-child(2) a").css("color","red")
}


function mousedown1(){
  $("#drop-menu1").css("display","none")
  $(".menu li").css("background-color","transparent")
  $(".menu li:nth-child(2) a").css("color","#000")
}
