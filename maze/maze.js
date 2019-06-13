"use strict"

var gamestat = "idle";
$(function(){
	$("#start").click(startfun);
	$("#end").mouseover(endfun);
	$(".boundary").mouseover(lostfun);
	
});

   function startfun(){
	   $(".boundary").css("background-color", " #eeeeee");
	   $("#status").text(" Game started");
		gamestat = "started";
   }
   
   function lostfun(){
	   if(gamestat === "started"){
	    $("#status").text(" SORRY, YOU LOST !"); 
		$(".boundary").css("background-color", "red");
		gamestat = "lost";
	   }
   }
   
   function endfun(){
	   if(gamestat ==="started"){
	     $("#status").text(" You win !");
		 gamestat = "dfdf";
	   }
   }