if (document.querySelector('.secondary-navbar-unless') != null) {
  secondaryNavbarHover();
}

function secondaryNavbarHover() {
  const navItems = document.querySelectorAll(".nav-item");
  navItems.forEach((navItem) => {
    console.log(navItem)
    if (navItem != null) {
      navItem.addEventListener("mouseenter", (event) => {
        const target = document.getElementById(event.currentTarget.dataset.target)
        if (target != null) {
          highlightOne(true, target);
        } else {
          const placeholder = document.querySelector('.empty-list')
          highlightOne(true, placeholder);
        }
      });
    }
    document.querySelector('.navbar-wrapper').addEventListener("mouseleave", (event) => {
      highlightOne(false, document.querySelector('.secondary-navbar-unless .default'));
    });
  });
}

function highlightOne(transition, activeItem) {
  ulInSecondNavbar = document.querySelectorAll(".secondary-navbar-unless .navbar-group-right ul")
  if (ulInSecondNavbar != null) {
    ulInSecondNavbar.forEach((ul) => {
      ul.classList.add("hidden")
    });
    if (activeItem != null) {
      if (transition) {
        fadeIn(activeItem)
      }
      activeItem.classList.remove("hidden")
    }
  }
}

function fadeIn(element) {
    var op = 0.1;  // initial opacity
    element.style.display = 'flex';
    var timer = setInterval(function () {
      if (op >= 1){
        clearInterval(timer);
      }
      element.style.opacity = op;
      element.style.filter = 'alpha(opacity=' + op * 100 + ")";
      op += op * 0.1;
    }, 10);
  }
