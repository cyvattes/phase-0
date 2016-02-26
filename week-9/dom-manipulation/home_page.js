
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Ben Giamarino].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').setAttribute('class', 'done');



// Release 1:
document.getElementById('release-1').style.display = 'none';




// Release 2:
document.getElementsByTagName('h1')[0].innerHTML = 'I completed release 2.'


// Release 3:
document.getElementById('release-3').style.backgroundColor = '#955251';



// Release 4:
var r4 = document.getElementsByClassName('release-4');
for (var i = 0; i < r4.length; i++) {
  r4[i].style.fontSize = '2em';
}


// Release 5:
var hidden = document.getElementById('hidden').content.cloneNode(true);
document.body.appendChild(hidden);
