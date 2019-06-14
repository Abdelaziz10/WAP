(function () {
    "use strict";

    
	
	 //declaration variables
	  var timer = null;
	  var index = 0;
	  var turbo = 250;
     var screenArray="";
		
		
			function chosenAnimation(screenArray){
		//document.getElementById("textArea").value=separatescreen[1];
		
		 //if (screenArray.length > 0) { 
            document.getElementById("textArea").value = screenArray[index];
       // }
        index++;
        if (index === screenArray.length) {
            index = 0;
        }
		
	}
	
	
	function start(){
		var selection = document.getElementById("animType");		
		var optionname = selection.options[selection.selectedIndex].text;
		
		
		if (optionname === "Blank"){
			screenArray="";
		}
				
		else if (optionname === "CUSTOM"){
			index=0;
	
			var CUSTOM ="  \\\n"+
			"   --- o\n"+
			"  /\n"+
			"=====\n" +
			"       /\n"+
			" o ---\n"+
			"       \\\n";
		
    		screenArray="";
			screenArray =CUSTOM.split("=====");
			clearInterval(timer);
		
			//if (timer === null) {
            timer = setInterval(function () {
               chosenAnimation(screenArray);
            }, turbo);
       // }
				
		}
		
		else if (optionname === "EXERCISE"){
			index=0;
			screenArray="";
			screenArray =EXERCISE.split("=====");
			clearInterval(timer);
		
			//if (timer === null) {
            timer = setInterval(function () {
               chosenAnimation(screenArray);
            }, turbo);
       // }
				
		}
		
		else if (optionname === "JUGGLER"){
			index=0;
			screenArray="";
			screenArray =JUGGLER.split("=====");
			clearInterval(timer);
		
			//if (timer === null) {
            timer = setInterval(function () {
               chosenAnimation(screenArray);
            }, turbo);
       // }
				
		}
		
		else if (optionname === "BIKE"){
			index=0;
			screenArray="";
			screenArray =BIKE.split("=====");
			clearInterval(timer);
		
			//if (timer === null) {
            timer = setInterval(function () {
               chosenAnimation(screenArray);
            }, turbo);
       // }
				
		}
		
		else if (optionname === "DIVE"){
			index=0;
			screenArray="";
			screenArray =DIVE.split("=====");
			clearInterval(timer);
		
			//if (timer === null) {
            timer = setInterval(function () {
               chosenAnimation(screenArray);
            }, turbo);
       // }
				
		}
				
	}

	function stop(){
		clearInterval(timer);
screenArray="";
	}
	

	
	 function resize() {
        var newSize =  document.getElementById("sizer").value;
        document.getElementById("textArea").style.fontSize = newSize;
    }
	
	function changeSpeed() {
        var check = document.getElementById("turbo");
        if (check.checked) {
            turbo = 50;
			start();			
        } else {
            turbo = 250; 
			start();				
        }
    }
	
	window.onload = function () {
        document.getElementById("start").onclick = start;
        document.getElementById("stop").onclick = stop;
        //document.getElementById("animType").onchange = chosenAnimation;
        document.getElementById("turbo").onchange = changeSpeed;
        //document.getElementById("stop").disabled = true;
        document.getElementById("sizer").onchange = resize;
    };

})();


