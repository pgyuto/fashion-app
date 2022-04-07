function calc_price () {
  // 計算ボタン
  const calcBtn = document.getElementById("calc-btn");
  // const calcArea = document.getElementById("calc-area");
  const fadeLayer = document.getElementById("fadeLayer");

  calcBtn.addEventListener('click', () => {
    if (fadeLayer.getAttribute("style") == "visibility:visible;") {
      fadeLayer.removeAttribute("style", "visibility:visible;");
    } else {
      fadeLayer.setAttribute("style", "visibility:visible;");
      
    };
  });

  // 計算機能
  const amountPrice = document.getElementById("amount-price");
  const balancePrice = document.getElementById("balance-price");
  const balancePriceValue = balancePrice.value;
  amountPrice.addEventListener('input', () => {
    const amountPriceValue = amountPrice.value;
    balancePrice.value = (balancePriceValue - amountPriceValue);
  });
};

window.addEventListener('load', calc_price);