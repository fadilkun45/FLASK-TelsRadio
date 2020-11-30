const navbar = document.querySelector('.nav-items');
const toggle = document.querySelector('nav .toggle-button input');

toggle.addEventListener('change', function(event){
    if(this.checked){
        navbar.classList.add('slide');
    }else{
        navbar.classList.remove('slide');
    }
    })