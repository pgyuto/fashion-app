function balance (){
  const calcBtn = document.getElementById("calc-btn");
  const pullDown = document.getElementsByClassName("pull-down");

  calcBtn.addEventListener('click', () => {
    if (pullDown.getAttribute("style") == "display:block;") {
      pullDown.removeAttribute("style", "display:block;");
    } else {
      pullDown.setAttribute("style", "display:block;");
    };
  });
};


window.addEventListener('load', balance);