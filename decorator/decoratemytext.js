/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.onload = pageload;

function increaseFont()
{
    //alert(taFontSize);
    var textarea1 = document.getElementById('textarea1');
    var taFontSize = parseInt(textarea1.style.fontSize);
    textarea1.style.fontSize = (taFontSize+2)+"pt";

};
function pageload(){
    var timer = null;
    var btn = document.getElementById('btnDecoration');
    var textarea1 = document.getElementById('textarea1');
    btn.onclick = function(){
        //alert('hello');
        //textarea1.style.fontSize = "24pt";
        if(!textarea1.style.fontSize)
        {
            textarea1.style.fontSize="12pt";
        }
        var taFontSize= parseInt(textarea1.style.fontSize);
        //alert(taFontSize);
        if(timer == null)
        {
            timer = setInterval(increaseFont, 500);
        }
        else
        {
            clearInterval(timer);
        }

        //alert(taFontSize);

    };

    var chkBling = document.getElementById('chkBling');
    chkBling.onchange = function(){
        //alert("abc");
        if(textarea1.style.fontWeight  === "bold")
        {
            textarea1.style.fontWeight = "normal";
        }
        else
        {
            textarea1.style.textDecoration = "underline";
            textarea1.style.color="green";
            textarea1.style.fontWeight = "bold";
        }
        if(chkBling.checked)
        {


        document.body.style.backgroundImage="url(http://www.cs.washington.edu/education/courses/190m/CurrentQtr/labs/6/hundred-dollar-bill.jpg)";
        }
        else
        {
          document.body.style.backgroundImage="None";
        }
    };
    var btn = document.getElementById('btnMalkovitch');
    btn.onclick= function()
    {
        //alert(textarea1.value);
        var res = textarea1.value.trim().split(" ");
        for (i = 0; i < res.length; i++) {
             if(res[i].length>=5)
                 res[i]="Malkovich";
        }
        //alert(res);
        textarea1.value =  res.join(" ");
    };

};
