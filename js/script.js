let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.header .navbar');

menu.onclick = () =>{
   menu.classList.toggle('fa-times');
   navbar.classList.toggle('active');
};

window.onscroll = () =>{
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
 };

 var swiper = new Swiper(".home-slider", {
   loop:true,
   navigation: {
     nextEl: ".swiper-button-next",
     prevEl: ".swiper-button-prev",
   },
});

var swiper = new Swiper(".reviews-slider", {
   grabCursor:true,
   loop:true,
   autoHeight:true,
   spaceBetween: 20,
   breakpoints: {
      0: {
        slidesPerView: 1,
      },
      700: {
        slidesPerView: 2,
      },
      1000: {
        slidesPerView: 3,
      },
   },
});

var swiper = new Swiper(".home-slider", {
   loop:true,
   navigation: {
     nextEl: ".swiper-button-next",
     prevEl: ".swiper-button-prev",
   },
});

var swiper = new Swiper(".reviews-slider", {
   grabCursor:true,
   loop:true,
   autoHeight:true,
   spaceBetween: 20,
   breakpoints: {
      640: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});

let loadMoreBtn = document.querySelector('.packages .load-more .btn');
let currentItem = 3;

loadMoreBtn.onclick = () =>{
   let boxes = [...document.querySelectorAll('.packages .box-container .box')];
   for (var i = currentItem; i < currentItem + 3; i++){
      boxes[i].style.display = 'inline-block';
   };
   currentItem += 3;
   if(currentItem >= boxes.length){
      loadMoreBtn.style.display = 'none';
   }
}



// function verify()
// {
//    var a= document.forms["confirmation"]["name"].value;
//    var b= document.forms["confirmation"]["email"].value;
//    var c= document.forms["confirmation"]["phone"].value;
//    var d= document.forms["confirmation"]["address"].value;
//    var e= document.forms["confirmation"]["location"].value;
//    var f= document.forms["confirmation"]["arrivals"].value;
//    var g= document.forms["confirmation"]["leaving"].value;
//    var x= document.forms["confirmation"]["guests"].value;


//    if (a == null || a == "") {
//       nameError = "Please enter your name";
//       document.getElementById("name_error").innerHTML = nameError; 
      
//       return false;
//   } 

//   else if (b == null || b == "") {
//    emailError = "Please enter your email";
//    document.getElementById("email_error").innerHTML = emailError; 
//    return false;
// } 
// else if (c == null || c == "") {
//    phoneError = "Please enter your phone";
//    document.getElementById("phone_error").innerHTML = phoneError; 
//    alert("**please enter phone number");
//    return false;
// } 
// else if (d == null || d == "") {
//    addressError = "Please enter your address";
//    document.getElementById("address_error").innerHTML = adressError; 
//    return false;
// } 
// else if (e == null || e == "") {
//    locationError = "Please enter your location";
//    document.getElementById("location_error").innerHTML = locationError; 
//    return false;
// } 
// else if (f == null || f == "") {
//    arrivalsError = "Please enter your arrival date";
//    document.getElementById("arrivals_error").innerHTML = arrivalsError; 
//    return false;
// } 
// else if (g == null || g == "") {
//    leavingError = "Please enter your leaving date";
//    document.getElementById("leaving_error").innerHTML = leavingError; 
//    return false;
// } 
// else if (x == null || x == "") {
//    guestsError = "Please enter your leaving date";
//    document.getElementById("guests_error").innerHTML = guestsError; 
//    return false;
// } 

// else
// {
//    return true;
// }


// if(document.getElementById("phone_error").value.length == 0)
// {
//       alert("*please enter phone");
      
// }

// }