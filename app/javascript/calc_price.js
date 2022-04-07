function calc_price () {
  const calcBtn = document.getElementById("calc-btn");
  const calcArea = document.getElementById("sample-popup-content");
  const fadeLayer = document.getElementById("sample-popup-background");
  const amountPrice = document.getElementById("amount-price");
  
  // 計算ボタン
  calcBtn.addEventListener('click', () => {
    if (fadeLayer.getAttribute("style") == "display:block;") {
      fadeLayer.removeAttribute("style", "display:block;");
      calcArea.removeAttribute("style", "display:block;");
      
    } else {
      fadeLayer.setAttribute("style", "display:block;");
      calcArea.setAttribute("style", "display:block;");
      amountPrice.focus();
    };
  });

  // 計算機能
  
  const balancePrice = document.getElementById("balance-price");
  const balancePriceValue = balancePrice.value;
  amountPrice.addEventListener('input', () => {
    const amountPriceValue = amountPrice.value;
    balancePrice.value = (balancePriceValue - amountPriceValue);
  });
};

window.addEventListener('load', calc_price);